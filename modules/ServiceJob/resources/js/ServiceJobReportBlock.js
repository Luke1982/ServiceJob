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
		var filename  = document.getElementById("report_filename").innerHTML;		

		var r = new XMLHttpRequest();
		r.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				var response = JSON.parse(r.response);
				presentFile(response.download_loc);
				setTimeout(function(){
					deleteFile(response.delete_loc);
				},2000);				
			}
		}
		r.open("GET", "index.php?module=ServiceJob&action=ServiceJobAjax&file=getReportPDF&sjid=" + crmid + "&filename=" + filename, true);
		r.send();		
	});
}

createPDF();

function deleteFile(file) {
	var r = new XMLHttpRequest();
	r.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			console.log(r.response);
		}
	}
	r.open("GET", "index.php?module=ServiceJob&action=ServiceJobAjax&file=getReportPDF&pdfaction=delete&filetodelete=" + file, true);
	r.send();	
}

function presentFile(url) {
	var a = document.createElement("a");
	a.href = url;
	a.download = url.substr(url.lastIndexOf('/') + 1);
	document.body.appendChild(a);
	a.click();
	document.body.removeChild(a);
}