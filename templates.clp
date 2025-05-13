(deftemplate cliente
  (multislot name)
  (multislot address)
  (slot phone)
  (slot tipo)
)

(deftemplate producto
  (slot tipo)
  (slot marca)
  (slot modelo)
  (slot color)
  (slot precio)
)

(deftemplate orden
  (slot cliente)
  (slot tipo)
  (slot marca)
  (slot modelo)
  (slot cantidad)
  (slot pago)
)

(deftemplate accesorio
  (slot tipo)
  (slot marca)
  (slot precio)
)
(deftemplate tarjetacred 
  (slot banco) 
  (slot grupo) 
  (slot expira)
)

(deftemplate vale 
  (slot cliente) 
  (slot monto)
)

(deftemplate stock 
  (slot tipo) 
  (slot marca) 
  (slot modelo) 
  (slot cantidad)
)
