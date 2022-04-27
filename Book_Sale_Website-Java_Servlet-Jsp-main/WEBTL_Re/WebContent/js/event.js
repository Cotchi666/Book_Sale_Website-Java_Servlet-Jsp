function addRowHandlers() {
	var table = document.getElementById("tableId");
	var rows = table.getElementsByTagName("tr");
	for (i = 0; i < rows.length; i++) {
		var currentRow = table.rows[i];
		var createClickHandler = function(row) {
			return function() {
				var cell = row.getElementsByTagName("td")[0];
				var id = cell.innerHTML;
				window.location.replace("mngAccount?id=" + id);

			};
		};
		currentRow.onclick = createClickHandler(currentRow);
	}
}
function myFunction() {
	
	var id = document.getElementById("id").value;
	var x = document.getElementById("mySelect").value;
	window.location.replace("addToCart?id=" + id + "&&sl=" + x);

}


