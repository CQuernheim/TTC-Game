# zu vergleichendes Attribut
var $attribute = $_POST['attribute'];


# Ziehe alle Karten zur aktuellen Spielsession aus TempDeckStechen
SELECT * FROM TempDeckStechen WHERE session_id = session_id ORDER BY id ASC

# Ziehe die jeweils oberste Karte auf Stack 

var $spieler1 =;
var $spieler2 =;

SELECT * FROM Karten WHERE id = 
(SELECT KID FROM TempDeckStechen WHERE $ session_id = session_id ORDER BY id ASC)

# Vergleiche 


