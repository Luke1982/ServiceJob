window.addEventListener("load", function(){

	var input = document.getElementById("related_asset_input");
	window.acList = [];

	// Show label but insert value into the input:
	var ac = new Awesomplete(input, {
			list: [],
			autoFirst: true,
			data: function(item, input) {
				return {
					label : item.name + " | " + item.productname + " | " + item.serial,
					value : item.id,
				}
			}
		});

	input.addEventListener("input", function(){
		// Get already selected serialnumbers to send with AJAX request
		var selectedSerials = document.getElementById("related_asset_table").getElementsByClassName("related_asset_serial");
		var serialList = "";
		for (var i = 0; i < selectedSerials.length; i++) {
			serialList += selectedSerials[i].innerHTML.trim() + ",";
		}

		var accountId = document.getElementsByName("account_id")[0].value;
		var r = new XMLHttpRequest();

		r.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				acList = JSON.parse(r.responseText);
				ac._list = acList;
				ac.evaluate();
			}
		};

		r.open("GET", "index.php?module=ServiceJob&action=ServiceJobAjax&file=returnAssetsForAccount&accountid="+accountId+"&selected="+serialList, true);
		r.send();
	});

	window.addEventListener("awesomplete-selectcomplete", function(e){
		var value = e.text.value;
		var labelArray = e.text.split("|");
		var row = document.getElementsByClassName("related_asset_row")[0];
		var newRow = row.cloneNode(true);

		var newCells = newRow.getElementsByTagName("td");
		newCells[0].innerHTML = labelArray[0];
		newCells[1].innerHTML = labelArray[1];
		newCells[2].innerHTML = labelArray[2];
		newCells[2].className = "related_asset_serial";

		var newHiddenInput = newRow.getElementsByTagName("input")[0];
		newHiddenInput.value = labelArray[1];
		newHiddenInput.name = "hdn_asset[" + value + "]";

		row.parentElement.appendChild(newRow);

		newRow.addEventListener("click", function(e){
			e.target.parentElement.parentElement.removeChild(e.target.parentElement);
		});

		document.getElementById("related_asset_input").value = "";
	});

});