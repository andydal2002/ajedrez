import wollok.game.*
import celdas.*
import piezas.*

object juego {
	method configurar() {
		game.width(8)
		game.height(8)
		game.cellSize(100)
		game.title("Ajedrez")
		
		keyboard.space().onPressDo({ selector.seleccionarPieza() })
	}
	
	method iniciarTablero() {
		// TABLERO
		game.addVisual(celda_blanca1)
		game.addVisual(celda_blanca2)
		game.addVisual(celda_blanca3)
		game.addVisual(celda_blanca4)
		game.addVisual(celda_blanca5)
		game.addVisual(celda_blanca6)
		game.addVisual(celda_blanca7)
		game.addVisual(celda_blanca8)
		game.addVisual(celda_blanca9)
		game.addVisual(celda_blanca10)
		game.addVisual(celda_blanca11)
		game.addVisual(celda_blanca12)
		game.addVisual(celda_blanca13)
		game.addVisual(celda_blanca14)
		game.addVisual(celda_blanca15)
		game.addVisual(celda_blanca16)
		game.addVisual(celda_blanca17)
		game.addVisual(celda_blanca18)
		game.addVisual(celda_blanca19)
		game.addVisual(celda_blanca20)
		game.addVisual(celda_blanca21)
		game.addVisual(celda_blanca22)
		game.addVisual(celda_blanca23)
		game.addVisual(celda_blanca24)
		game.addVisual(celda_blanca25)
		game.addVisual(celda_blanca26)
		game.addVisual(celda_blanca27)
		game.addVisual(celda_blanca28)
		game.addVisual(celda_blanca29)
		game.addVisual(celda_blanca30)
		game.addVisual(celda_blanca31)
		game.addVisual(celda_blanca32)
		game.addVisual(celda_negra1)
		game.addVisual(celda_negra2)
		game.addVisual(celda_negra3)
		game.addVisual(celda_negra4)
		game.addVisual(celda_negra5)
		game.addVisual(celda_negra6)
		game.addVisual(celda_negra7)
		game.addVisual(celda_negra8)
		game.addVisual(celda_negra9)
		game.addVisual(celda_negra10)
		game.addVisual(celda_negra11)
		game.addVisual(celda_negra12)
		game.addVisual(celda_negra13)
		game.addVisual(celda_negra14)
		game.addVisual(celda_negra15)
		game.addVisual(celda_negra16)
		game.addVisual(celda_negra17)
		game.addVisual(celda_negra18)
		game.addVisual(celda_negra19)
		game.addVisual(celda_negra20)
		game.addVisual(celda_negra21)
		game.addVisual(celda_negra22)
		game.addVisual(celda_negra23)
		game.addVisual(celda_negra24)
		game.addVisual(celda_negra25)
		game.addVisual(celda_negra26)
		game.addVisual(celda_negra27)
		game.addVisual(celda_negra28)
		game.addVisual(celda_negra29)
		game.addVisual(celda_negra30)
		game.addVisual(celda_negra31)
		game.addVisual(celda_negra32)
	
		// PIEZAS	
		game.addVisual(peon1)
		game.addVisual(peon2)
		game.addVisual(peon3)
		game.addVisual(peon4)
		game.addVisual(peon5)
		game.addVisual(peon6)
		game.addVisual(peon7)
		game.addVisual(peon8)
		
		game.addVisual(caballo1)
		game.addVisual(caballo2)
		
		game.addVisual(alfil1)
		game.addVisual(alfil2)
		
		game.addVisual(torre1)
		game.addVisual(torre2)
		
		game.addVisual(reina)
		game.addVisual(rey)
		
		tablero.agregar(peon1)
		tablero.agregar(peon2)
		tablero.agregar(peon3)
		tablero.agregar(peon4)
		tablero.agregar(peon5)
		tablero.agregar(peon6)
		tablero.agregar(peon7)
		tablero.agregar(peon8)
		
		tablero.agregar(caballo1)
		tablero.agregar(caballo2)
		
		tablero.agregar(alfil1)
		tablero.agregar(alfil2)
		
		tablero.agregar(torre1)
		tablero.agregar(torre2)
		
		tablero.agregar(reina)
		tablero.agregar(rey)
		
		// SELECTOR
		game.addVisualCharacter(selector)
	}	
	
	method jaqueMate() {
		game.addVisual(gameOver)
	}
}

object gameOver {
	method position() = game.center()
	method text() = "JAQUE MATE"
}

object selector {
	var property piezaSeleccionada = false
	var property position = game.origin()
	method image() = "cursor.png"
	method seleccionarPieza() {
		if (piezaSeleccionada == false) {
			piezaSeleccionada = tablero.piezas().findOrDefault({ pieza => pieza.position() == self.position()}, false)
		}
		else {
			game.removeVisual(piezaSeleccionada)
			piezaSeleccionada.position(self.position())
			game.addVisual(piezaSeleccionada)
			piezaSeleccionada = false
		}
	}

}

object tablero {
	const piezas = []
	
	method piezas() = piezas
	
	method agregar(pieza) { piezas.add(pieza) }
	
	method quitar(pieza) { piezas.remove(pieza) }
	
}
