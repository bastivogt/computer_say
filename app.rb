require "./classes/CoumputerSay"

game = SV::ComputerSay.new yes: "Computer sagt: ja", no: "Computer sagt: nein", start_prompt: "Gib Deine Frage ein!", exit_prompt: "Dein Verlauf:"
game.start
