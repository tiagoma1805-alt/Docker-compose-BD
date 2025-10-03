CREATE TABLE IF NOT EXISTS productos (
    id SERIAL PRIMARY KEY,
    sku VARCHAR(30) UNIQUE,
    nombre VARCAR(150) NOT NULL,
    precio NUMERIC(12,2) CHECK  (precio >= 0), --Dominio
    stock INT NOT NULL DEFAULT 0 CHECK (stock >=0)
);

CREATE TABLE IF NOT EXISTS pedidos (
    id SERIAL PRIMARY KEY,
    cliente_id INT REFRENCES  cliente(id),
    -- FK (referencia)
    total NUMERIC(12,2)  NOT NULL CHECK (total >=0),
    fecha TIMESTAMP NOT NULL DEFAULT now()
);

INSERT INTO productos (sku, nombre, precio, stock)
VALUES ('A-100', 'Teclado', 120000, 10),('B-200','MOUSE',50000, 20)

INSERT INTO pedidos (cliente_id, total)
VALUES (1, 120000),(1, 50000);
