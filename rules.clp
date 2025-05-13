;;1
(defrule iphoneXr-banamex
   (orden (tipo smartphone) (marca apple) (modelo iphoneXr) (pago banamex))
   =>
   (printout t "Gracias por la compra de tu iPhoneXr con Banamex - obtienes 24 meses sin intereses" crlf))

;;2 
(defrule GalaxyA25-liverpool
   (orden (tipo smartphone) (marca samsung) (modelo GalaxyA25) (pago liverpool))
   =>
   (printout t "Gracias por la compra de tu GalaxyA25 con Liverpool - obtienes 12 meses sin intereses" crlf))

;;3
(defrule iphoneXr-banamex
   (orden (tipo smartphone) (marca apple) (modelo iphoneX) (pago contado))
   =>
   (printout t "Gracias por la compra de tu iPhoneX recibe un 15% de descuento en tu proxima compra" crlf))

;;4
(defrule mac-iphone-vales
   (orden (cliente ?c) (tipo smartphone) (marca apple) (modelo iphone16) (pago contado))
   (orden (cliente ?c) (tipo compu) (marca apple) (modelo macbookair) (pago contado))
   =>
   (bind ?vale (* 52 100))
   (assert (vale (cliente ?c) (monto ?vale)))
   (printout t "Vale: $" ?vale " por comprar Mac + iPhone al contado." crlf))

;;5
(defrule funda-mica-descuento
   (orden (cliente ?c) (tipo smartphone))
   =>
   (printout t "Descuento 15% en funda y mica para " ?c crlf))

;;6
(defrule clasificar-mayorista
   (orden (cliente ?c) (cantidad ?q&:(> ?q 10)))
   (cliente (name ?c) (tipo mayorista))
   =>
   (printout t "Cliente mayorista " ?c ", cantidad: " ?q crlf))

;;7
(defrule clasificar-menudista
   (orden (cliente ?c) (cantidad ?q&:(<= ?q 10)))
   (cliente (name ?c) (tipo menudista))
   =>
   (printout t "Cliente menudista " ?c ", cantidad: " ?q crlf))

;;8
(defrule actualizar-stock
   ?o <- (orden (tipo ?t) (marca ?m) (modelo ?mod) (cantidad ?q))
   ?s <- (stock (tipo ?t) (marca ?m) (modelo ?mod) (cantidad ?c&:(>= ?c ?q)))
   =>
   (modify ?s (cantidad (- ?c ?q)))
   (printout t "Stock actualizado: " ?m " " ?mod " queda: " (- ?c ?q) crlf)
   (retract ?o))

;;9
(defrule low-stock-alert
   (stock (tipo ?t) (marca ?m) (modelo ?mod) (cantidad ?c&:(< ?c 10)))
   =>
   (printout t "ALERTA: Poco stock en " ?t " " ?m " " ?mod crlf))

;;10
(defrule descuento-accesorioHP
   (orden (tipo accesorio) (marca HP))
   =>
   (printout t "Accesorio HP: Descuento del 10% del precio total de tu producto" crlf))

;;11
(defrule accesorio-gratis-mayorista
   (orden (cliente ?c) (tipo smartphone) (cantidad ?q&:(> ?q 20)))
   (cliente (name ?c) (tipo mayorista))
   =>
   (printout t "Gracias por tu compra recibe 3 audifonos de regalo " ?c crlf))

;;12
(defrule bonificacion-lenovo
   (orden (tipo computadora) (marca lenovo) (modelo ThinkpadT490))
   =>
   (printout t "Gracias por tu compra mouse gratis con tu ThinkpadT490" crlf))

;;13
(defrule recomendacion-compra-al-mayoreo
   (orden (cantidad ?q&:(< ?q 5)))
   =>
   (printout t "Para obtener mejores precios compra al mayoreo" crlf))

;;14
(defrule descuento-pack-apple
   (orden (cliente ?c) (tipo smartphone) (marca apple))
   (orden (cliente ?c) (tipo accesorio) (marca apple))
   =>
   (printout t "Gracias por comprar tu paquete apple aqui tienes un 10% extra de descuento " ?c crlf))

;;15
(defrule oferta-compu-macbook
   (orden (tipo compu) (marca apple) (modelo macbookair) (pago banamex))
   =>
   (printout t "MacBook Air con Banamex: 12 meses sin intereses" crlf))

;;16
(defrule descuento-clientes-frecuentes
   (cliente (name Andrea) (tipo menudista))
   =>
   (printout t "Hola Andrea, gracias por tu compra recibe un 15% por cliente frecuente" crlf))

;;17
(defrule stock-agotado
   (stock (tipo ?t) (marca ?m) (modelo ?mod) (cantidad 0))
   =>
   (printout t "Producto agotado: " ?t " " ?m " " ?mod crlf))

;;18
(defrule cupon-fidelidad
  (orden (cliente ?c) (cantidad ?q&:(> ?q 25)))
  =>
  (assert (vale (cliente ?c) (monto 1000)))
  (printout t ?c " Gracias por tu compra mayor a 25 aqui tienes un vale de $1000" crlf)
)


;;19
(defrule regalar-vale-por-compra
  ?orden <- (orden (cliente ?c) (tipo compu) (marca ?m) (modelo ?mo) (cantidad ?cant) (pago ?p))
  (cliente (name ?c) (tipo mayorista))
  (not (vale (cliente ?c))) 
  =>
  (assert (vale (cliente ?c) (monto 50)))
  (printout t "Gracias por tu compra recibe un vale de $50 a " ?c "." crlf)
)

;;20
(defrule iphoneXr-liverpool
   (orden (tipo smartphone) (marca apple) (modelo iphoneXr) (pago liverpool))
   =>
   (printout t "Gracias por la compra de tu iPhoneXr con Liverpool - obtienes 6 meses sin intereses" crlf))

