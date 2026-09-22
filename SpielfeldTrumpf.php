<!DOCTYPE html>
<html lang="de">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>TTCG – Trumpf</title>

    <link rel="stylesheet" href="css/trumpf-karte.css">
    <link rel="stylesheet" href="css/spielfeld-trumpf.css">
</head>

<body>

    <main class="game-board">

        <!-- Spielmodus -->
        <header class="game-header">
            <span>Klassenkampf</span>
            <span class="active-game-mode">Trumpf</span>
        </header>


        <!-- Spieler -->
        <section class="players">

            <div class="player">
                <span class="player-label">Spieler 1</span>
                <span class="player-name">Max</span>
            </div>

            <div class="player">
                <span class="player-label">Spieler 2</span>
                <span class="player-name">Anna</span>
            </div>

        </section>


        <!-- Kartenbereich -->
        <section class="card-table">

            <!-- Eigene Karte -->
            <div class="card-position own-card">

                <?php include 'components/KartenAnsichtTrumpf.php'; ?>

            </div>


            <!-- Gegnerkarte -->
            <div class="card-position opponent-card">

                <div class="card-placeholder">
                    Gegnerkarte
                </div>

            </div>

        </section>


        <!-- Aktionen -->
        <section class="game-actions">

            <button
                class="confirm-button"
                type="button"
                disabled
            >
                Auswahl bestätigen
            </button>

        </section>

    </main>

    <div class="effect-overlay" id="effectOverlay">

    <div class="effect-popup">

        <div class="effect-popup-title">
            Effekt
        </div>

        <p id="effectPopupText"></p>

        <button
            class="effect-close-button"
            id="effectCloseButton"
            type="button">
            Schließen
        </button>

    </div>

</div>

<script src="js/SpielfeldTrumpf.js"></script>


</body>

</html>