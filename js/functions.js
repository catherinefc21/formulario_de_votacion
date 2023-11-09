document.addEventListener("DOMContentLoaded", function () {
  const votingForm = document.getElementById("votingForm");
  const messageContainer = document.getElementById("messageContainer");

  const cbxRegion = document.getElementById("region");
  cbxRegion.addEventListener("change", getComunas);
  const cbxComuna = document.getElementById("comuna");

  function fetchAndSetData(url, formData, targetElement) {
    return fetch(url, {
      method: "POST",
      body: formData,
      mode: "cors",
    })
      .then((response) => response.json())
      .then((data) => {
        console.log(data);
        targetElement.innerHTML = data;
      })
      .catch((err) => console.log(err));
  }

  function getComunas() {
    let region = cbxRegion.value;
    let url = "inc/getComunas.php";
    let formData = new FormData();
    formData.append("ID_Region", region);

    fetchAndSetData(url, formData, cbxComuna);
  }

  votingForm.addEventListener("submit", function (e) {
    e.preventDefault();

    fetch("inc/proceso.php", {
      method: "POST",
      body: new FormData(votingForm),
    })
      .then((response) => response.json())
      .then((data) => {
        messageContainer.innerHTML = data.message;

        // Limpiar los campos si el formulario se envió con éxito
        if (data.message.includes("éxito")) {
          votingForm.reset();
        }
      })
      .catch((error) => {
        console.error("Error al enviar el formulario:", error);
      });
  });

  // Validación para permitir solo números en el campo de RUT
  document
    .querySelector('input[name="rut"]')
    .addEventListener("input", function (e) {
      this.value = this.value.replace(/[^0-9kK]/g, "");
    });
});
