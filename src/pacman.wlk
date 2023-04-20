import wollok.game.*

object pacman {
	var property vidas = 3
	const property image = "pacman.png"
	var property position = game.origin()
	
	method perderVida(){
		vidas = 0.max(vidas - 1)
		position = game.origin()
	}
	method chocarCon(unRival){
		self.perderVida()
		game.say(pacman, "quedan "+vidas.toString()+ " vidas")
		if(self.juegoTerminado()){
			game.stop()
		}
	}
	
	method juegoTerminado(){
		return vidas == 0
	}
}
