<div id="breadcrumb" class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">
			<div class="col-md-12">
				<h3 class="breadcrumb-header">Registro de Usuario</h3>
			</div>
		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /BREADCRUMB -->

<!-- SECTION -->
<div class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">
			<div class="col-md-12">
				<!-- Billing Details -->
				<div class="billing-details">
					<div class="section-title">
						<h3 class="title">Formulario de Registro</h3>
					</div>
					<form class="" action="<?=base_url?>cliente/save" method="POST">
						<div class="form-group">
							<label for="nombres">Nombre</label>
							<input class="input" type="text" name="names" placeholder="Ingrese sus nombres">
						</div>
						<div class="form-group">
						<label for="apellidos">Apellidos</label>
							<input class="input" type="text" name="lastnames" placeholder="Ingrese sus apellidos">
						</div>
						<div class="form-group">
							<label for="email">Email</label>
							<input class="input" type="email" name="email" placeholder="Ingrese su email">
						</div>
						<div class="form-group">
							<label for="birthday">Birthday</label>
							<input class="input" type="date" name="birthday">
						</div>
						<div class="form-group">
							<label for="password">Contraseña</label>
							<input class="input" type="password" name="password" placeholder="Password">
						</div>
						<!-- <div class="form-group">
							<label for="password">Confirme su Contraseña</label>
							<input class="input" type="password" name="password2" placeholder="Password">
						</div> -->
						<div class="form-group">
							<label for="tel">Ingrese su teléfono</label>
							<input class="input" type="tel" name="tel"placeholder="Ingrese su telefono">
						</div>
						<div class="form-group">
							<label for="tel">Ingrese su teléfono alterno</label>
							<input class="input" type="tel" name="tel2" placeholder="Telephone">
						</div>
						<div class="form-group">
							<input type="submit" class="btn btn-primary" value="Registrarme">
						</div>
					</form>
				</div>
				<!-- /Register form -->
			</div>
		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /SECTION -->