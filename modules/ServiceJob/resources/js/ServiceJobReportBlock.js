function getReport() {
	var crmid = document.getElementsByName("record")[0].value;
	var r = new XMLHttpRequest();
	r.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			setReport(r.responseText);
		}
	}
	r.open("GET", "index.php?module=ServiceJob&action=ServiceJobAjax&file=getReport&sjid=" + crmid, true);
	r.send();
}

function setReport(html) {
	var target = document.getElementById("reportwrapper");
	target.innerHTML = html;
}

getReport();