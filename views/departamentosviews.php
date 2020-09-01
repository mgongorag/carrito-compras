<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <title>Personas</title>
    </head>
    <body>
        <?php
            foreach ($departamentos as $departamento) {
                echo $departamento["departamento"]."<br/>";
            }
        ?>
    </body>
</html>
