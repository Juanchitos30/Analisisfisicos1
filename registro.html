<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Crear cuenta</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background: #f4f4f9;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
  }
  .card {
    background: #fff;
    padding: 32px;
    border-radius: 10px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    width: 320px;
  }
  h2 {
    margin-top: 0;
    text-align: center;
    color: #333;
  }
  label {
    display: block;
    margin-top: 16px;
    margin-bottom: 6px;
    font-size: 14px;
    color: #555;
  }
  input {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 6px;
    box-sizing: border-box;
    font-size: 14px;
  }
  button {
    width: 100%;
    margin-top: 24px;
    padding: 10px;
    background: #4A90E2;
    color: white;
    border: none;
    border-radius: 6px;
    font-size: 15px;
    cursor: pointer;
  }
  button:hover {
    background: #357ABD;
  }
  #mensaje {
    margin-top: 14px;
    text-align: center;
    font-size: 14px;
  }
</style>
</head>
<body>

<div class="card">
  <h2>Crear cuenta</h2>
  <form id="formRegistro">
    <label for="usuario">Usuario</label>
    <input type="text" id="usuario" required minlength="3" placeholder="Ej: juanperez">

    <label for="password">Contraseña</label>
    <input type="password" id="password" required minlength="6" placeholder="Mínimo 6 caracteres">

    <label for="password2">Confirmar contraseña</label>
    <input type="password" id="password2" required minlength="6" placeholder="Repite la contraseña">

    <button type="submit">Crear usuario</button>
    <div id="mensaje"></div>
  </form>
</div>

<script>
  // NOTA: esto guarda el usuario solo en memoria del navegador (variable JS),
  // no es una base de datos real. Para producción necesitas un backend
  // (Node.js, PHP, Firebase, etc.) que guarde los datos de forma segura.

  const usuariosRegistrados = [];

  document.getElementById('formRegistro').addEventListener('submit', function(e) {
    e.preventDefault();

    const usuario = document.getElementById('usuario').value.trim();
    const password = document.getElementById('password').value;
    const password2 = document.getElementById('password2').value;
    const mensaje = document.getElementById('mensaje');

    if (password !== password2) {
      mensaje.style.color = 'red';
      mensaje.textContent = 'Las contraseñas no coinciden.';
      return;
    }

    const existe = usuariosRegistrados.find(u => u.usuario === usuario);
    if (existe) {
      mensaje.style.color = 'red';
      mensaje.textContent = 'Ese usuario ya existe.';
      return;
    }

    usuariosRegistrados.push({ usuario, password });
    mensaje.style.color = 'green';
    mensaje.textContent = '¡Usuario creado con éxito!';
    document.getElementById('formRegistro').reset();
  });
</script>

</body>
</html>
