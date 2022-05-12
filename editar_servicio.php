<?php
include_once "_core.php";
function initial()
{
	//permiso del script
	$id_user=$_SESSION["id_usuario"];
	$admin=$_SESSION["admin"];
	$uri = $_SERVER['SCRIPT_NAME'];
	$filename=get_name_script($uri);
	$links=permission_usr($id_user,$filename);

    $id_servicio = $_REQUEST["id_servicio"];
	$sql = _query("SELECT * FROM servicios WHERE id_servicio='$id_servicio'");
	$datos = _fetch_array($sql);

	$id_servicio=$datos["id_servicio"];
	$nombre_servicio=$datos["descripcion"];
    $valor_servicio=$datos["precio_venta"];

?>
	<div class="modal-header">
    	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    	<h4 class="modal-title">Editar servicio</h4>
  	</div>
    <div class="modal-body">
      <div class="wrapper wrapper-content  animated fadeInRight">
        <div class="row" id="row1">
          <div class="col-lg-12">
            <?php if($links != 'NOT' || $admin == '1'){ ?>
            <form name="formulario" id="formulario" autocomplete="off">
				<div class="form-group has-info single-line">
					<label>Nombre  del servicio<span style="color:red;">*</span></label>
					<input type="text" placeholder="Nombre de servicio" class="form-control" id="nombre_servicio" name="nombre_servicio" value="<?php echo $nombre_servicio; ?>">
				</div>
				<div class="form-group has-info single-line">
					<label>Precio de venta ($)<span style="color:red;">*</span></label>
					<input type="number" placeholder="Precio de venta del servicio" class="form-control" id="valor_servicio" name="valor_servicio" value="<?php echo $valor_servicio; ?>" min="1">
				</div>
              <div>
			  	<input type="hidden" name="id_servicio" id="id_servicio" value="<?php echo $id_servicio; ?>">
				<input type="submit" class="btn btn-primary" value="Guardar">
				<input type="hidden" name="process" id="process" value="edited"><br>
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
			$('#valor_servicio').numeric({
				negative: false
			});
		});
    </script>
	

	<?php
	
	} //permiso del script
	else
	{
		echo "<div></div><br><br><div class='alert alert-warning'>No tiene permiso para este modulo.</div>";
	}
}

function actualizar()
{
	$id_servicio= $_POST['id_servicio'];
	$nombre_servicio=$_POST["nombre_servicio"];
    $valor_servicio=$_POST["valor_servicio"];
	$estado=1;//Estado 1 = activo
	

	$table = 'servicios';
	$form_data = array(
		'id_servicio' => $id_servicio,
		'descripcion' => $nombre_servicio,
		'precio_venta' => $valor_servicio,
		'estado' => $estado,
	);
	$where = "id_servicio =".$id_servicio;
	$update = _update($table,$form_data,$where);
	if ($update) {
        $xdatos['typeinfo'] = 'Success';
        $xdatos['msg'] = 'Registro modificado con exito!';
        $xdatos['process'] = 'edit';
    } else {
        $xdatos['typeinfo'] = 'Error';
        $xdatos['msg'] = 'Registro no pudo ser modificado!' . _error();
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
			case 'edited':
            actualizar();
			break;
		}
	}
}
?>
