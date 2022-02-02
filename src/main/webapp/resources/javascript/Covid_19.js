/**
 * 
 */
var xhr = new XMLHttpRequest();

let today = new Date();
let year = today.getFullYear(); // 년도
let month1 = today.getMonth() + 1;  // 월
let date1 = today.getDate();  // 날짜
let today2 = new Date(today.setDate(today.getDate() - 3));
let month2 = today2.getMonth() + 1;  // 월
let date2 = today2.getDate();  // 날짜
if(month1 <= 10) month1 = '0'+month1;
if(date1 <= 10) date1 = '0'+date1;
if(month2 <= 10) month2 = '0'+month2;
if(date2 <= 10) date2 = '0'+date2;
let day1 = year + month1 + date1;
let day2 = year + month2 + date2;

function toServer() {
	var url = 'http://openapi.data.go.kr/openapi/service/rest/Covid19/getCovid19SidoInfStateJson'; /*URL*/
	var queryParams = '?' + encodeURIComponent('serviceKey') + '=p9kIIHWTfQm9+AFcHD8soBdYHClnAWe4uC2OVZJ8RyiJGH/zad7PMaT2CtRyUZsP4jGgjSN1dbK4h4IYWa8LgA=='; /*Service Key*/
	queryParams += '&' + encodeURIComponent('pageNo') + '=' + encodeURIComponent('1'); /**/
	queryParams += '&' + encodeURIComponent('numOfRows') + '=' + encodeURIComponent('10'); /**/
	queryParams += '&' + encodeURIComponent('startCreateDt') + '=' + encodeURIComponent('day2'); /**/
	queryParams += '&' + encodeURIComponent('endCreateDt') + '=' + encodeURIComponent('day1'); /**/
	queryParams += '&_type=json' /**/
	xhr.open('GET', url + queryParams);
	xhr.send('');
	}


xhr.onreadystatechange = function () {
    if (this.readyState == 4) {
        alert('Status: '+this.status+'nHeaders: '+JSON.stringify(this.getAllResponseHeaders())+'nBody: '+this.responseText);
		var arr=JSON.parse(xhr.responseText);
		//alert("오늘날짜 : " + day1);
		//alert("전날짜 : " + day2);
		//alert(arr.response.body.items.item.length);
		var dates = new Array();
		var deathCnt = new Array();
		var decideCnt = new Array();
		for (var i = 0; i < arr.response.body.items.item.length; i++) {
			//str+="<div>"+arr.response.body.items.item[i].createDt+"</div>";
			//str+="<div>"+arr.response.body.items.item[i].deathCnt+"</div>";
			//str+="<div>"+arr.response.body.items.item[i].decideCnt+"</div><br/>";
			dates[i] = arr.response.body.items.item[i].createDt.substr(0, 10);
			deathCnt[i] = arr.response.body.items.item[i].deathCnt;
			decideCnt[i] = arr.response.body.items.item[i].decideCnt;
		}
		new Chart(document.getElementById("mixed-chart"), {
			type: 'bar',
			 data: {
			  labels: [dates[3],dates[2],dates[1],dates[0]],
			  datasets: [{
			  	 label: "사망자",
		          type: "line",
		          borderColor: "#3e95cd",
		          data: [deathCnt[3],deathCnt[2],deathCnt[1],deathCnt[0]],
		          fill: false
		        }, {
		          label: "확진자",
		          type: "bar",
		          backgroundColor: "rgba(0,0,0,0.2)",
		          data: [decideCnt[3],decideCnt[2],decideCnt[1],decideCnt[0]],
		        }
			  ]
			},
			options: {
			  title: {
			    display: true,
			    text: 'Population growth (millions): Europe & Africa'
			  },
			  legend: { display: false }
			}
		});
		
    }
};
