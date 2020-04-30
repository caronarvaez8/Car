-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         5.7.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para proyecto
CREATE DATABASE IF NOT EXISTS `proyecto` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `proyecto`;

-- Volcando estructura para tabla proyecto.carro
CREATE TABLE IF NOT EXISTS `carro` (
  `car_pla` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Placa',
  `car_mar` varchar(35) NOT NULL COMMENT 'Marca',
  `car_mod` varchar(35) NOT NULL COMMENT 'Modelo',
  `car_pre` double NOT NULL COMMENT 'Precio',
  `car_tip` varchar(35) NOT NULL COMMENT 'Tipo',
  `car_usa` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Usado?',
  PRIMARY KEY (`car_pla`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla proyecto.carro: ~14 rows (aproximadamente)
/*!40000 ALTER TABLE `carro` DISABLE KEYS */;
INSERT INTO `carro` (`car_pla`, `car_mar`, `car_mod`, `car_pre`, `car_tip`, `car_usa`) VALUES
	(1, 'Ford', '2020', 120, 'Automovil', b'0'),
	(2, 'Chevrolet', '2019', 22.9, 'Automovil', b'0'),
	(3, 'Nissan', '2020', 11.3, 'Camionetas', b'0'),
	(4, 'Renault', '2019', 16, 'Camperos', b'0'),
	(5, 'Hyundai', '2020', 95.99, 'Automovil', b'0'),
	(6, 'Kia', '2020', 30.5, 'Automovil', b'0'),
	(7, 'Toyota', '2019', 45.8, 'Camionetas', b'0'),
	(8, 'Chevrolet', '2020', 136.99, 'Camionetas', b'0'),
	(9, 'Toyota', '2019', 29, 'Carga', b'0'),
	(10, 'Ford', '2019', 28.39, 'Camionetas', b'0'),
	(11, 'Nissan', '2019', 30.5, 'Automovil', b'0'),
	(12, 'Kia', '2020', 22.9, 'Camperos', b'0'),
	(13, 'Renault', '2020', 16, 'Carga', b'0'),
	(14, 'Hyundai', '2019', 45.8, 'Camionetas', b'0');
/*!40000 ALTER TABLE `carro` ENABLE KEYS */;

-- Volcando estructura para tabla proyecto.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `usu_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `usu_nom` text NOT NULL COMMENT 'Nombre',
  `usu_ape` text NOT NULL COMMENT 'Apellido',
  `usu_tel` text NOT NULL COMMENT 'Telefonia',
  `usu_dir` varchar(35) NOT NULL COMMENT 'Dirección',
  `usu_pas` text NOT NULL COMMENT 'Contraseña',
  `usu_car_rec` json DEFAULT NULL COMMENT 'Lista de los carros',
  PRIMARY KEY (`usu_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla proyecto.usuarios: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`usu_ide`, `usu_nom`, `usu_ape`, `usu_tel`, `usu_dir`, `usu_pas`, `usu_car_rec`) VALUES
	(1, 'camilo', 'valencia', '3104460913', 'Calle 44 #34B-74', '12345', NULL),
	(4, 'andres', 'orejuela', '3113211192', 'Calle 6a #09-74', '1983', NULL),
	(5, 'valentina', 'valencia', '3129340988', 'Carrera 39 #35C-98', '199889', NULL),
	(6, 'luis', 'giraldo', '3008651203', 'Calle 102 #114-22', '232839', NULL),
	(7, 'daniela', 'velez', '3113646998', 'Carrera 8 #88-74', '0993434', NULL),
	(8, 'tatiana', 'fernandez', '3015559877', 'Carrera 34A #39C-66', '4693232', NULL),
	(9, 'diego', 'caicedo', '3226661208', 'Calle 10a #11-55', '8787856', NULL);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
