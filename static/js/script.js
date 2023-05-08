/*Js de menu */
const select = document.querySelector('#select');
const opciones = document.querySelector('#opciones');
const contenidoSelect = document.querySelector('#select .contenido-select');
const hiddenInput = document.querySelector('#inputSelect');

document.querySelectorAll('#opciones > .opcion').forEach((opcion) => {
	opcion.addEventListener('click', (e) => {
		e.preventDefault();
		contenidoSelect.innerHTML = e.currentTarget.innerHTML;
		select.classList.toggle('active');
		opciones.classList.toggle('active');
		hiddenInput.value = e.currentTarget.querySelector('.titulo').innerText;
	});
});

select.addEventListener('click', () => {
	select.classList.toggle('active');
	opciones.classList.toggle('active');
});
  // Función para cargar los productos de una sucursal específica
  function cargarProductos(idSucursal) {
    // Realiza una solicitud AJAX para obtener los productos de la sucursal seleccionada
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
      if (xhr.readyState === 4 && xhr.status === 200) {
        // Manipula el DOM para mostrar los productos obtenidos
        var productos = JSON.parse(xhr.responseText);
        // Aquí puedes generar el HTML dinámicamente con los productos y mostrarlos en la página
        console.log(productos);
      }
    };
    xhr.open("GET", "/obtener-productos?idSucursal=" + idSucursal, true);
    xhr.send();
  }
function cargarProductos(idSucursal) {
          document.getElementById('inputSelect').value = idSucursal; // Actualiza el valor del input oculto
          document.querySelector('form').submit(); // Envía el formulario
        }