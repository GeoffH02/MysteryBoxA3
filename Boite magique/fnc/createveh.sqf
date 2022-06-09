disableSerialization;
If (player getVariable "lancer") exitWith {hint "Tu ne peux pas faire cette action";};
createDialog "Tondialog";
player setVariable ["lancer",true];
hint "Tu a réussi l'épreuve N°1";