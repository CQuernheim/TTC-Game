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