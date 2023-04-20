import wollok.game.*

object rival1 {
	const property image = "rival1.png"
	var property position = positionManager.randomPosition()
	
	method chocarCon(pacman){
		position = positionManager.randomPosition()
	}
	
}
object rival2 {
	const property image = "rival2.png"
	var property position = positionManager.randomPosition()
	var previousPosition = position
	
	method chocarCon(pacman){
		position = positionManager.randomPosition()
	}
	method acercarseA(personaje){
		var otroPosition = personaje.position()
		var newX = position.x() + if(otroPosition.x() > position.x()) 1 else if (otroPosition.x() == position.x()) 0 else -1
		var newY = position.y() + if(otroPosition.y() > position.y()) 1 else if (otroPosition.y() == position.y()) 0 else -1
		
		previousPosition = position
		position = game.at(newX,newY)
	}
}

object positionManager{
		method randomPosition(){
			return game.at( (0.randomUpTo(14).truncate(0)),  (0.randomUpTo(8).truncate(0)))
		}
}