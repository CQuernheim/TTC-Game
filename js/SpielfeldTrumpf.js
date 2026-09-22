console.log("Trumpf-JavaScript wurde geladen.");

const effectButton = document.querySelector(".effect-button");
const effectOverlay = document.querySelector("#effectOverlay");
const effectPopupText = document.querySelector("#effectPopupText");
const effectCloseButton = document.querySelector("#effectCloseButton");

effectButton.addEventListener("click", function () {

    console.log("Effekt wurde angeklickt.");

    const effectText =
        effectButton.querySelector(".effect-full").textContent.trim();

    effectPopupText.textContent = effectText;

    effectOverlay.classList.add("visible");
});


effectCloseButton.addEventListener("click", function () {

    effectOverlay.classList.remove("visible");

});

/* ========================================
   EIGENSCHAFT AUSWÄHLEN
   ======================================== */

const propertyButtons =
    document.querySelectorAll(".own-card .property-button");

const confirmButton =
    document.querySelector(".confirm-button");

let selectedProperty = null;


propertyButtons.forEach(function (button) {

    button.addEventListener("click", function () {

        // Alte Auswahl entfernen
        propertyButtons.forEach(function (propertyButton) {
            propertyButton.classList.remove("selected");
        });


        // Neue Auswahl markieren
        button.classList.add("selected");


        // Technische Eigenschaft speichern:
        // EXP, QWT, ACC oder COF
        selectedProperty = button.dataset.property;


        console.log(
            "Ausgewählte Eigenschaft:",
            selectedProperty
        );


        // Bestätigungsbutton aktivieren
        confirmButton.disabled = false;

    });

});