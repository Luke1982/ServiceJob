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

function createPDF() {
	var pdfButton = document.getElementById("createpdf");
	var crmid = document.getElementsByName("record")[0].value;

	pdfButton.addEventListener("click", function(e){
		e.preventDefault();

		// arraybuffer to blob to pdf code comes from:
		// http://stackoverflow.com/questions/17696516/download-binary-files-with-javascript
		var r = new XMLHttpRequest();
		r.responseType = "arraybuffer";
		r.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				var blob = new Blob([r.response], {type: "application/pdf"});
				var objectUrl = URL.createObjectURL(blob);
				window.open(objectUrl);
			}
		}
		r.open("GET", "index.php?module=ServiceJob&action=ServiceJobAjax&file=getReportPDF&sjid=" + crmid, true);
		r.send();		
	});
}

createPDF();