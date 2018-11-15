SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS `RDR` DEFAULT CHARACTER SET utf8mb4;
USE `RDR`;

CREATE TABLE IF NOT EXISTS `players` (
  `uid` int(6) NOT NULL AUTO_INCREMENT,
  `nome` varchar(32) NOT NULL,
  `pid` varchar(17) NOT NULL,
  `dinheiro` int(100) NOT NULL DEFAULT '0',
  `bancoacc` int(100) NOT NULL DEFAULT '0',
  `bopelevel` enum('0','1','2','3','4','5','6','7','8','9','10') NOT NULL DEFAULT '0',
  `bandidolevel` enum('0','1','2','3','4','5') NOT NULL DEFAULT '0',
  `bope_gear` text NOT NULL,
  `band_gear` text NOT NULL,
  `adminlevel` enum('0','1','2','3','4','5') NOT NULL DEFAULT '0',
  `doadorlevel` enum('0','1','2','3','4','5') NOT NULL DEFAULT '0',
  `blacklist` tinyint(1) NOT NULL DEFAULT '0',
  `band_alive` tinyint(1) NOT NULL DEFAULT '0',
  `band_position` varchar(64) NOT NULL DEFAULT '"[]"',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `pid` (`pid`),
  KEY `nome` (`nome`),
  KEY `blacklist` (`blacklist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=12 ;

CREATE USER IF NOT EXISTS `arma3`@`localhost` IDENTIFIED BY 'RDR';
GRANT SELECT, UPDATE, INSERT, EXECUTE ON `RDR`.* TO 'arma3'@'localhost';
FLUSH PRIVILEGES;

-- Alterações By: RobérioJR

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
