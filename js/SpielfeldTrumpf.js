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

/* ========================================
   AUSWAHL BESTÄTIGEN
   ======================================== */

confirmButton.addEventListener("click", function () {

    // Sicherheit:
    // Ohne ausgewählte Eigenschaft nichts machen
    if (selectedProperty === null) {
        return;
    }


    console.log(
        "Bestätigte Eigenschaft:",
        selectedProperty
    );


    /*
     * SPÄTER:
     * Hier wird die Auswahl an die
     * PHP-Spiellogik geschickt.
     */


    /*
    fetch("controller/trumpf-auswahl.php", {

        method: "POST",

        headers: {
            "Content-Type": "application/json"
        },

        body: JSON.stringify({
            property: selectedProperty
        })

    })
    .then(function (response) {

        if (!response.ok) {
            throw new Error("Fehler bei der Spiellogik");
        }

        return response.json();

    })
    .then(function (data) {

        console.log(
            "Antwort der Spiellogik:",
            data
        );

        // Später:
        // Gegnerkarte anzeigen
        // Karte umdrehen
        // Werte vergleichen / Ergebnis anzeigen

    })
    .catch(function (error) {

        console.error(
            "Fehler beim Senden der Auswahl:",
            error
        );

    });
    */

});