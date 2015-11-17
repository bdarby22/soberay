var oTable;
var doTable = function () {

        oTable = $('#example').dataTable({
            "bAutoWidth": false,
            "sPaginationType": "full_numbers"
        });

        oTable.fnSort([[0, 'asc']]);
};