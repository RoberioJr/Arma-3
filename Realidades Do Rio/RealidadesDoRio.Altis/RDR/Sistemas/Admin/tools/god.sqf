cutText ["Godmode Ativado.", "PLAIN"];
player removeAllEventHandlers "handleDamage";
player addEventHandler ["handleDamage", {false}];
