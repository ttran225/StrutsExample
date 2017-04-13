function pushDataToTable(table, data) {
	table.clear().draw();
	table.rows.add(data).draw();
}

function httpAjax(url, data, success, error) {
  $.ajax({
    beforeSend : function(xhrObj) {
      xhrObj.setRequestHeader("X-Json-Response", "application/json");
    },
    url : url,
    type : "POST",
    dataType : "text",
    data : data,
    success : function(data) {
      data = data.replace("/*","");
      data = data.replace("*/","");
      var jsonResponse = $.parseJSON(data);
      success.apply(this, [jsonResponse.actionResponse]);
    },
    error : function (){
      error();
    }
  });
}