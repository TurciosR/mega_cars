$(function() {
	//binding event click for button in modal form
	$(document).on("click", "#btnDelete", function(event) {
	  swal({
		title: "Está seguro de borrar este servicio?",
		text: "",
		type: "warning",
		showCancelButton: true,
		confirmButtonClass: "btn-danger",
		confirmButtonText: "Si, borrar este servicio!",
		cancelButtonText: "No, cancelar!",
		closeOnConfirm: true,
		closeOnCancel: false
	  },
	  function(isConfirm) {
		if (isConfirm) {
		  deleted();
		  //swal("Exito", "Turno iniciado con exito", "error");
		} else {
		  swal("Cancelado", "Operación cancelada", "error");
		}
	  });
	});
	// Clean the modal form
	$(document).on('hidden.bs.modal', function(e) {
	  var target = $(e.target);
	  target.removeData('bs.modal').find(".modal-content").html('');
	});
  
  });
  $(document).on("click","#estado", function()
  {
	var id_servicio = $(this).parents("tr").find("#id_servicio_active").val();
	var estado = $(this).parents("tr").find("#estado").val();
	if(estado == 1)
	{
	  var text = "Desactivar";
	}
	else
	{
		var text = "Activar";
	}
	swal({
	  title: text+" este servicio?",
	  text: "",
	  type: "warning",
	  showCancelButton: true,
	  confirmButtonClass: "btn-danger",
	  confirmButtonText: "Si, "+text+" este servicio!",
	  cancelButtonText: "No, cancelar!",
	  closeOnConfirm: true,
	  closeOnCancel: false
	},
	function(isConfirm) {
	  if (isConfirm) {
		estado_serv(id_servicio, estado);
		//swal("Exito", "Turno iniciado con exito", "error");
	  } else {
		swal("Cancelado", "Operación cancelada", "error");
	  }
	});
  })
  function estado_serv(id_servicio, estado) {
	//var id_proveedor = $('#id_proveedor').val();
	var dataString = 'process=estado' + '&id_servicio=' + id_servicio+ '&estado=' + estado;
	$.ajax({
	  type: "POST",
	  url: "admin_servicios.php",
	  data: dataString,
	  dataType: 'json',
	  success: function(datax) {
		display_notify(datax.typeinfo, datax.msg);
		// console.log("OKde");
		if (datax.typeinfo == "Success")
		{
		  // console.log("OKK");
		  setInterval("reload1();", 1000);
		  //$('#deleteModal').hide();
		}
	  }
	});
  }
  function senddata() {
  
	var dataString = $("#formulario").serialize();
	var process = $('#process').val();
  
	if (process == 'insert') {
	  var urlprocess = 'admin_agregar_servicio.php';
	}
	if (process == 'edited') {
	  var urlprocess = 'editar_servicio.php';
	}
	$.ajax({
	  type: 'POST',
	  url: urlprocess,
	  data: dataString,
	  dataType: 'json',
	  success: function(datax) {
		display_notify(datax.typeinfo, datax.msg);
		if (datax.typeinfo == "Success") {
		  setInterval("reload1();", 1000);
		}
	  }
	});
  }
  function reload1() {
	location.href = 'admin_servicios.php';
  }
  function deleted() {
	var id_servicio = $('#id_servicio').val();
	var dataString = 'process=deleted' + '&id_servicio=' + id_servicio;
	$.ajax({
	  type: "POST",
	  url: "borrar_servicio.php",
	  data: dataString,
	  dataType: 'json',
	  success: function(datax) {
		display_notify(datax.typeinfo, datax.msg);
		if (datax.typeinfo == "Success") {
		  setInterval("location.reload1();", 1000);
		  $('#deleteModal').hide();
		}
	  }
	});
  }
  