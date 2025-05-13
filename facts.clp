(deffacts clientes
  (cliente (name "Manzano") (address "Guadalajara") (phone "12345678") (tipo mayorista))
  (cliente (name "Andrea") (address "Guadalajara") (phone "12345678") (tipo menudista))
  (cliente (name "Judith") (address "Puebla") (phone "12345678") (tipo mayorista))
)

(deffacts productos
  (producto (tipo smartphone) (marca apple) (modelo iphoneXr) (color coral) (precio 10000))
  (producto (tipo smartphone) (marca apple) (modelo iphoneX) (color blanco) (precio 8000))
  (producto (tipo smartphone) (marca samsung) (modelo GalaxyA25) (color azul) (precio 5000))
  (producto (tipo compu) (marca apple) (modelo macbookair) (color gris) (precio 20000))
  (producto (tipo compu) (marca lenovo) (modelo ThinkPadT490) (color negro) (precio 8000))
)

(deffacts accesorios
  (accesorio (tipo funda) (marca apple) (precio 400))
  (accesorio (tipo funda) (marca samsung) (precio 300))
  (accesorio (tipo mouse) (marca HP) (precio 800))
  (accesorio (tipo mica) (marca apple) (precio 200))
  (accesorio (tipo mica) (marca samsung) (precio 100))
)

(deffacts inventario
  (stock (tipo smartphone) (marca apple) (modelo iphoneXr) (cantidad 8))
  (stock (tipo smartphone) (marca samsung) (modelo GalaxyA25) (cantidad 12))
  (stock (tipo computadora) (marca apple) (modelo macbookair) (cantidad 10))
  (stock (tipo computadora) (marca lenovo) (modelo ThinkpadT490) (cantidad 20))
)

(deffacts ordenes
  (orden (cliente Andrea) (tipo smartphone) (marca apple) (modelo iphoneXr) (cantidad 1) (pago banamex))
  (orden (cliente Manzano) (tipo smartphone) (marca samsung) (modelo GalaxyA25) (cantidad 1) (pago liverpool))
  (orden (cliente Manzano) (tipo computadora) (marca apple) (modelo macbookair) (cantidad 1) (pago contado))
  (orden (cliente Judith) (tipo accesorio) (marca HP) (modelo mouse) (cantidad 2) (pago contado))
)

(deffacts tarjetas
  (tarjetacred (banco banamex) (grupo visa) (expira 1225))
  (tarjetacred (banco liverpool) (grupo mastercard) (expira 1124))
  (tarjetacred (banco santander) (grupo visa) (expira 0623))
)



