<?php
include_once "_core.php";
function initial()
{
  $id_user=$_SESSION["id_usuario"];
  $admin=$_SESSION["admin"];

  $uri = $_SERVER['SCRIPT_NAME'];
  $filename=get_name_script($uri);
  $links=permission_usr($id_user,$filename);
  //permiso del script
  ?>
  	<div class="modal-header">
    	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    	<h4 class="modal-title">Agregar Servicios</h4>
  	</div>
    <div class="modal-body">
      <div class="wrapper wrapper-content  animated fadeInRight">
        <div class="row" id="row1">
          <div class="col-lg-12">
            <?php if($links != 'NOT' || $admin == '1'){ ?>
            <form name="formulario" id="formulario" autocomplete="off">
				<div class="form-group has-info single-line">
					<label>Nombre  del Servicio<span style="color:red;">*</span></label>
					<input type="text" placeholder="Nombre de servicio" class="form-control" id="nombre_servicio" name="nombre_servicio" value="">
				</div>
				<div class="form-group has-info single-line">
					<label>Precio de venta ($)<span style="color:red;">*</span></label>
					<input type="number" placeholder="Precio de venta del servicio" class="form-control" id="valor_servicio" name="valor_servicio" value="" min="1">
				</div>
              <div>
                <input type="submit" class="btn btn-primary" value="Guardar">
                <input type="hidden" name="process" id="process" value="insert">
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>

    <script type="text/javascript">
		$(document).ready(function()
		{
			$('#formulario').validate({
				rules: {
					nombre_servicio: {
						required: true,
					},
					valor_servicio: {
						required: true,
					}
				},
				messages: {
					nombre_servicio: "Por favor ingrese el nombre del servicio",
					valor_servicio: "Por favor ingrese el valor del servicio"
				},
				highlight: function(element) {
				$(element).closest('.form-group').removeClass('has-success').addClass('has-error');
				},
				success: function(element) {
				$(element).closest('.form-group').removeClass('has-error').addClass('has-success');
				},
				submitHandler: function(form) {
					senddata();
				}
			});
			$('#nombre_servicio').on('keyup', function(evt){
                $(this).val($(this).val().toUpperCase());
            });
			$('#valor_servicio').numeric({
				negative: false
			});
		});
    </script>
    <?php

  }
  else
  {
    echo "<br><br><div class='alert alert-warning'>No tiene permiso para este modulo.</div></div></div></div></div>";
  }
}

function insertar()
{
    $current_date = date('Y-m-d h:i:s');
    $newDate = date("Y-m-d h:i:s", strtotime($current_date));

	$buscar_last_id_servicio=_query("SELECT MAX(id_servicio) AS last_id_servicio FROM servicios");
	$dato_last_id_servicio=_fetch_array($buscar_last_id_servicio);
	$last_id_servicio=$dato_last_id_servicio['last_id_servicio'];
	$new_id_servicio=$last_id_servicio+1;

	$id_servicio= $new_id_servicio;
	$nombre_servicio=$_POST["nombre_servicio"];
    $valor_servicio=$_POST["valor_servicio"];
	$estado=1;//Estado 1 = activo

	$table = 'servicios';
	$form_data = array(
		'id_servicio' => $id_servicio,
		'descripcion' => $nombre_servicio,
		'precio_venta' => $valor_servicio,
		'estado' => $estado
	);
	//$where = "id_membresia =".$id_membresia;
	$insertar = _insert($table,$form_data);
	if ($insertar) {
        $xdatos['typeinfo'] = 'Success';
        $xdatos['msg'] = 'Registro guardado con exito!';
        $xdatos['process'] = 'insert';
    } else {
        $xdatos['typeinfo'] = 'Error';
        $xdatos['msg'] = 'Registro no pudo ser guardado!' . _error();
    }
	
	echo json_encode($xdatos);
}
if(!isset($_POST['process']))
{
	initial();
}
else
{
	if(isset($_POST['process']))
	{
		switch ($_POST['process'])
		{
			case 'insert':
            insertar();
			break;
		}
	}
}
?>
