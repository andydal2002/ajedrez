import wollok.game.*

class Caballo {
	var property position
	method image() = "caballo.png"
}


class Peon {
	var property position
	method image() = "peon.png"
}


class Alfil {
	var property position
	method image() = "alfil.png"
}

class Torre {
	var property position
	method image() = "torre.png"
}

class Reina {
	var property position
	method image() = "reina.png"
}

object rey {
	var property position = game.at(3,0)
	method image() = "reina.png"
}

const peon1 = new Peon(position = game.at(0,1))
const peon2 = new Peon(position = game.at(1,1))
const peon3 = new Peon(position = game.at(2,1))
const peon4 = new Peon(position = game.at(3,1))
const peon5 = new Peon(position = game.at(4,1))
const peon6 = new Peon(position = game.at(5,1))
const peon7 = new Peon(position = game.at(6,1))
const peon8 = new Peon(position = game.at(7,1))

const caballo1 = new Caballo(position = game.at(1,0)) 
const caballo2 = new Caballo(position = game.at(6,0)) 

const alfil1 = new Alfil(position = game.at(2,0))
const alfil2 = new Alfil(position = game.at(5,0))

const torre1 = new Torre(position = game.at(0,0))
const torre2 = new Torre(position = game.at(7,0))

const reina = new Reina(position = game.at(4,0))