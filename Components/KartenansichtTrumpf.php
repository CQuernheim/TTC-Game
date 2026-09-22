<div class="trumpf-card">

    <div class="card-name">
        Max Mustermann <!-- <?= htmlspecialchars($karte['card_name']) ?> -->
    </div>

    <div class="card-image">
        <img src="bilder/lehrer.jpg" alt="Bild der Lehrkraft">
    </div>

    <div class="section-title">
        Eigenschaften
    </div>

    <div class="card-properties">

    <button
        class="property-button"
        type="button"
        data-property="EXP"
    >
        <span class="property-name">Erklärfähigkeit</span>
        <span class="property-value">80</span>
    </button>

    <button
        class="property-button"
        type="button"
        data-property="QWT"
    >
        <span class="property-name">Schlagfertigkeit</span>
        <span class="property-value">65</span>
    </button>

    <button
        class="property-button"
        type="button"
        data-property="ACC"
    >
        <span class="property-name">Korrigierpower</span>
        <span class="property-value">90</span>
    </button>

    <button
        class="property-button"
        type="button"
        data-property="COF"
    >
        <span class="property-name">Kaffekonsum</span>
        <span class="property-value">45</span>
    </button>

</div>

    <div class="section-title">
        Effekt
    </div>

    
        <button class="card-text effect-button" type="button">
    <span class="effect-short">...</span>

    <span class="effect-full">
        Wenn diese Karte ausgespielt wird, steigt der Kaffeekonsum
        aller Lehrkräfte im Lehrerzimmer erheblich.
    </span>
</button>


</div>