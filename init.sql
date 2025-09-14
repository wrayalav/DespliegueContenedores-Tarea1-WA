-- Tabla de médicos
CREATE TABLE IF NOT EXISTS Medicos (
    IdMedico INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Apellido VARCHAR(100) NOT NULL,
    Especialidad VARCHAR(100) NOT NULL,
    Telefono VARCHAR(20),
    Email VARCHAR(100)
);

-- Tabla de pacientes
CREATE TABLE IF NOT EXISTS Pacientes (
    IdPaciente INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Apellido VARCHAR(100) NOT NULL,
    Edad INT,
    Genero VARCHAR(10),
    Telefono VARCHAR(20),
    Email VARCHAR(100),
    Direccion VARCHAR(200)
);

-- Tabla de citas médicas
CREATE TABLE IF NOT EXISTS Citas (
    IdCita INT AUTO_INCREMENT PRIMARY KEY,
    IdPaciente INT NOT NULL,
    IdMedico INT NOT NULL,
    FechaHora DATETIME NOT NULL,
    Motivo VARCHAR(200),
    Estado VARCHAR(50) DEFAULT 'Pendiente',
    FOREIGN KEY (IdPaciente) REFERENCES Pacientes(IdPaciente),
    FOREIGN KEY (IdMedico) REFERENCES Medicos(IdMedico)
);

-- Tabla de tratamientos
CREATE TABLE IF NOT EXISTS Tratamientos (
    IdTratamiento INT AUTO_INCREMENT PRIMARY KEY,
    IdCita INT NOT NULL,
    Descripcion VARCHAR(500),
    Costo DECIMAL(10,2),
    FOREIGN KEY (IdCita) REFERENCES Citas(IdCita)
);

-- Tabla de recetas médicas
CREATE TABLE IF NOT EXISTS Recetas (
    IdReceta INT AUTO_INCREMENT PRIMARY KEY,
    IdTratamiento INT NOT NULL,
    Medicamento VARCHAR(200) NOT NULL,
    Indicaciones VARCHAR(500),
    FOREIGN KEY (IdTratamiento) REFERENCES Tratamientos(IdTratamiento)
);

-- Tabla de pagos
CREATE TABLE IF NOT EXISTS Pagos (
    IdPago INT AUTO_INCREMENT PRIMARY KEY,
    IdTratamiento INT NOT NULL,
    Monto DECIMAL(10,2) NOT NULL,
    MetodoPago VARCHAR(50) NOT NULL, -- Efectivo, Tarjeta, Transferencia
    FechaPago DATETIME DEFAULT CURRENT_TIMESTAMP,
    Banco VARCHAR(100),
    NumeroReferencia VARCHAR(100),
    FOREIGN KEY (IdTratamiento) REFERENCES Tratamientos(IdTratamiento)
);

-- Datos de ejemplo
INSERT INTO Medicos (Nombre, Apellido, Especialidad, Telefono, Email)
VALUES ('Carlos', 'Ramírez', 'Medicina General', '0999999999', 'carlos.ramirez@consultorio.com');

INSERT INTO Pacientes (Nombre, Apellido, Edad, Genero, Telefono, Email, Direccion)
VALUES ('Ana', 'Pérez', 35, 'Femenino', '0988888888', 'ana.perez@email.com', 'Av. Principal 123');

INSERT INTO Citas (IdPaciente, IdMedico, FechaHora, Motivo)
VALUES (1, 1, '2025-09-15 10:00:00', 'Dolor de cabeza persistente');

INSERT INTO Tratamientos (IdCita, Descripcion, Costo)
VALUES (1, 'Consulta general y medicación', 25.00);

INSERT INTO Recetas (IdTratamiento, Medicamento, Indicaciones)
VALUES (1, 'Paracetamol 500mg', 'Tomar 1 tableta cada 8 horas por 5 días');

INSERT INTO Pagos (IdTratamiento, Monto, MetodoPago, Banco, NumeroReferencia)
VALUES (1, 25.00, 'Efectivo', 'Banco Pichincha', '1234567890');


