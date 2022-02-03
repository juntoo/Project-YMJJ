function search(root) {
	var RTname = document.getElementById('RTname').value;
	
    var url= root+"/other/selectRestaurnat.do?RTname="+RTname;
    location.href=url;
}