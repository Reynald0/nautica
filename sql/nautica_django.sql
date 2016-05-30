/*
Navicat MySQL Data Transfer

Source Server         : mroot
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : nautica

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2016-05-29 22:00:08
*/

SET FOREIGN_KEY_CHECKS=0;

DROP DATABASE IF EXISTS nautica;
CREATE DATABASE nautica;
USE nautica;

-- ----------------------------
-- Table structure for actualizar_barcos
-- ----------------------------
DROP TABLE IF EXISTS `actualizar_barcos`;
CREATE TABLE `actualizar_barcos` (
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of actualizar_barcos
-- ----------------------------
INSERT INTO `actualizar_barcos` VALUES ('100');

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add actualizar barcos', '7', 'add_actualizarbarcos');
INSERT INTO `auth_permission` VALUES ('20', 'Can change actualizar barcos', '7', 'change_actualizarbarcos');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete actualizar barcos', '7', 'delete_actualizarbarcos');
INSERT INTO `auth_permission` VALUES ('22', 'Can add barcos', '8', 'add_barcos');
INSERT INTO `auth_permission` VALUES ('23', 'Can change barcos', '8', 'change_barcos');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete barcos', '8', 'delete_barcos');
INSERT INTO `auth_permission` VALUES ('25', 'Can add barcos salidas', '9', 'add_barcossalidas');
INSERT INTO `auth_permission` VALUES ('26', 'Can change barcos salidas', '9', 'change_barcossalidas');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete barcos salidas', '9', 'delete_barcossalidas');
INSERT INTO `auth_permission` VALUES ('28', 'Can add django migrations', '10', 'add_djangomigrations');
INSERT INTO `auth_permission` VALUES ('29', 'Can change django migrations', '10', 'change_djangomigrations');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete django migrations', '10', 'delete_djangomigrations');
INSERT INTO `auth_permission` VALUES ('31', 'Can add movimientos', '11', 'add_movimientos');
INSERT INTO `auth_permission` VALUES ('32', 'Can change movimientos', '11', 'change_movimientos');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete movimientos', '11', 'delete_movimientos');
INSERT INTO `auth_permission` VALUES ('34', 'Can add personas', '12', 'add_personas');
INSERT INTO `auth_permission` VALUES ('35', 'Can change personas', '12', 'change_personas');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete personas', '12', 'delete_personas');
INSERT INTO `auth_permission` VALUES ('37', 'Can add total', '13', 'add_total');
INSERT INTO `auth_permission` VALUES ('38', 'Can change total', '13', 'change_total');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete total', '13', 'delete_total');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$24000$Jr51iUnvs8dA$puBZIqV+aO8JwxZ5kK1xmG1gb5SuT89mY6wepVwVptY=', '2016-05-30 02:55:21.888000', '1', 'Reynald0', '', '', 'reynaldobernard15@gmail.com', '1', '1', '2016-05-29 22:26:40.003000');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for barcos
-- ----------------------------
DROP TABLE IF EXISTS `barcos`;
CREATE TABLE `barcos` (
  `matricula` varchar(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `numero_amarre` int(11) NOT NULL,
  `cuota_pago` double NOT NULL,
  PRIMARY KEY (`matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of barcos
-- ----------------------------
INSERT INTO `barcos` VALUES ('BA1054', 'Emilio', '1478', '2474.74');
INSERT INTO `barcos` VALUES ('BA1084', 'Paola', '987', '7172.32');
INSERT INTO `barcos` VALUES ('BA1102', 'Valeria', '1298', '3329.98');
INSERT INTO `barcos` VALUES ('BA1109', 'America', '165', '6250.3');
INSERT INTO `barcos` VALUES ('BA1121', 'Maximiliano', '772', '4251.52');
INSERT INTO `barcos` VALUES ('BA1171', 'Linda', '1440', '3616.8');
INSERT INTO `barcos` VALUES ('BA1200', 'Jaime', '844', '4676.2');
INSERT INTO `barcos` VALUES ('BA1211', 'Alexia', '1776', '4519.07');
INSERT INTO `barcos` VALUES ('BA1232', 'Mateo', '1867', '4074.95');
INSERT INTO `barcos` VALUES ('BA1242', 'Lucian', '439', '4077.79');
INSERT INTO `barcos` VALUES ('BA1258', 'Israel', '313', '7885.85');
INSERT INTO `barcos` VALUES ('BA1277', 'Abraham', '652', '7781.45');
INSERT INTO `barcos` VALUES ('BA1345', 'Lia', '345', '4467.25');
INSERT INTO `barcos` VALUES ('BA1402', 'Alicia', '1294', '2438.25');
INSERT INTO `barcos` VALUES ('BA1404', 'Sara', '861', '4112.8');
INSERT INTO `barcos` VALUES ('BA1451', 'Nicolas', '1941', '2820.72');
INSERT INTO `barcos` VALUES ('BA1487', 'Ada', '885', '5419.7');
INSERT INTO `barcos` VALUES ('BA1566', 'Marco', '1790', '5693.04');
INSERT INTO `barcos` VALUES ('BA1581', 'Marina', '327', '2840.57');
INSERT INTO `barcos` VALUES ('BA1590', 'Fernanda', '1858', '2525.93');
INSERT INTO `barcos` VALUES ('BA1607', 'Fernanda', '1783', '882.44');
INSERT INTO `barcos` VALUES ('BA1610', 'Fabian', '1333', '3356.65');
INSERT INTO `barcos` VALUES ('BA1656', 'Roberto', '501', '1901.07');
INSERT INTO `barcos` VALUES ('BA1739', 'Pedro', '1782', '915.24');
INSERT INTO `barcos` VALUES ('BA1856', 'Noe', '1273', '2440.39');
INSERT INTO `barcos` VALUES ('BA1858', 'Tatiana', '218', '731.96');
INSERT INTO `barcos` VALUES ('BA1902', 'Guillermo', '1884', '2736.6');
INSERT INTO `barcos` VALUES ('BA2000', 'Reynaldo', '200', '1224.2');
INSERT INTO `barcos` VALUES ('BA2001', 'Bernard', '201', '1221.2');
INSERT INTO `barcos` VALUES ('BA2002', 'De Dios', '202', '500');
INSERT INTO `barcos` VALUES ('BA2003', 'Estefania', '201', '1221.2');
INSERT INTO `barcos` VALUES ('BA2004', 'De Dios', '202', '500');
INSERT INTO `barcos` VALUES ('BA2111', 'Melonco', '971', '3241.1');

-- ----------------------------
-- Table structure for barcos_salidas
-- ----------------------------
DROP TABLE IF EXISTS `barcos_salidas`;
CREATE TABLE `barcos_salidas` (
  `rfc_persona` varchar(10) NOT NULL,
  `barcos_matricula` varchar(10) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `destino` varchar(45) NOT NULL,
  `id` int(11) DEFAULT NULL,
  PRIMARY KEY (`rfc_persona`,`barcos_matricula`),
  KEY `fk_personas_has_barcos_barcos1_idx` (`barcos_matricula`),
  KEY `fk_personas_has_barcos_personas1_idx` (`rfc_persona`),
  CONSTRAINT `fk_personas_has_barcos_barcos1` FOREIGN KEY (`barcos_matricula`) REFERENCES `barcos` (`matricula`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_personas_has_barcos_personas1` FOREIGN KEY (`rfc_persona`) REFERENCES `personas` (`rfc`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of barcos_salidas
-- ----------------------------
INSERT INTO `barcos_salidas` VALUES ('AIAD552513', 'BA1232', '2004-02-08', '13:21:05', 'Emiliano Zapata', '1');
INSERT INTO `barcos_salidas` VALUES ('AIAD552513', 'BA1242', '2005-02-11', '16:29:21', 'Nacajuca', '2');
INSERT INTO `barcos_salidas` VALUES ('CEIE997246', 'BA1902', '2014-11-05', '22:45:34', 'Macuspana', '3');
INSERT INTO `barcos_salidas` VALUES ('CKLJ610123', 'BA1902', '2002-08-11', '04:06:48', 'Huimanguillo', '4');
INSERT INTO `barcos_salidas` VALUES ('DFCH950877', 'BA1200', '2006-02-07', '03:04:48', 'Macuspana', '5');
INSERT INTO `barcos_salidas` VALUES ('DFCH950877', 'BA1232', '2020-10-02', '11:28:53', 'Cardenas', '6');
INSERT INTO `barcos_salidas` VALUES ('DIIJ695472', 'BA1345', '1995-06-16', '16:20:43', 'Huimanguillo', '7');
INSERT INTO `barcos_salidas` VALUES ('EDBF467297', 'BA1109', '2013-12-27', '07:03:57', 'Teapa', '8');
INSERT INTO `barcos_salidas` VALUES ('EDBF467297', 'BA1232', '2010-06-27', '16:39:41', 'Huimanguillo', '9');
INSERT INTO `barcos_salidas` VALUES ('EDBF467297', 'BA1607', '2006-06-26', '05:48:05', 'Huimanguillo', '10');
INSERT INTO `barcos_salidas` VALUES ('FLMH862656', 'BA1856', '2008-10-26', '14:44:49', 'Nacajuca', '11');
INSERT INTO `barcos_salidas` VALUES ('JMHM533503', 'BA1109', '2012-10-18', '02:15:32', 'Nacajuca', '12');
INSERT INTO `barcos_salidas` VALUES ('LMLE981803', 'BA1487', '2015-10-05', '14:11:30', 'Centro', '13');
INSERT INTO `barcos_salidas` VALUES ('MAIJ720187', 'BA1232', '2014-08-27', '15:08:50', 'Nacajuca', '14');
INSERT INTO `barcos_salidas` VALUES ('MAIM669494', 'BA1232', '2016-06-05', '14:01:47', 'Macuspana', '15');
INSERT INTO `barcos_salidas` VALUES ('MAIM669494', 'BA1581', '2010-05-11', '21:40:33', 'Emiliano Zapata', '16');
INSERT INTO `barcos_salidas` VALUES ('MAIM669494', 'BA1739', '2013-12-09', '17:23:58', 'Emiliano Zapata', '17');
INSERT INTO `barcos_salidas` VALUES ('MJLH264839', 'BA1054', '2000-08-13', '08:30:51', 'Centro', '18');
INSERT INTO `barcos_salidas` VALUES ('MJLH264839', 'BA1566', '2018-10-13', '10:40:56', 'Tacotalpa', '19');
INSERT INTO `barcos_salidas` VALUES ('MJLH264839', 'BA1902', '2020-04-15', '23:18:01', 'Teapa', '20');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2016-05-30 02:17:43.115000', 'ag1234', 'Barcos object', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2016-05-30 02:17:43.257000', 'abcd', 'Barcos object', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2016-05-30 02:39:27.760000', 'BA1663', 'Prueba', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2016-05-30 02:48:54.855000', '20', 'BarcosSalidas object', '2', 'Modifica destino.', '9', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2016-05-30 02:53:37.279000', '20', 'MJLH264839 - BA1902', '2', 'Modifica destino.', '9', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2016-05-30 02:55:35.693000', 'MJLH264839', 'MJLH264839', '2', 'Modifica socio.', '12', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2016-05-30 02:56:39.634000', 'BA2003', 'BA2003', '2', 'Modifica nombre.', '8', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2016-05-30 02:57:24.653000', 'BA2111', 'BA2111', '1', 'Added.', '8', '1');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('7', 'nautica_bd', 'actualizarbarcos');
INSERT INTO `django_content_type` VALUES ('8', 'nautica_bd', 'barcos');
INSERT INTO `django_content_type` VALUES ('9', 'nautica_bd', 'barcossalidas');
INSERT INTO `django_content_type` VALUES ('10', 'nautica_bd', 'djangomigrations');
INSERT INTO `django_content_type` VALUES ('11', 'nautica_bd', 'movimientos');
INSERT INTO `django_content_type` VALUES ('12', 'nautica_bd', 'personas');
INSERT INTO `django_content_type` VALUES ('13', 'nautica_bd', 'total');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2016-05-29 22:24:20.370000');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2016-05-29 22:24:38.144000');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2016-05-29 22:24:42.894000');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2016-05-29 22:24:43.442000');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2016-05-29 22:24:45.660000');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2016-05-29 22:24:47.159000');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2016-05-29 22:24:49.727000');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2016-05-29 22:24:49.864000');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2016-05-29 22:24:50.939000');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2016-05-29 22:24:51.042000');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2016-05-29 22:24:51.170000');
INSERT INTO `django_migrations` VALUES ('12', 'nautica_bd', '0001_initial', '2016-05-29 22:24:51.277000');
INSERT INTO `django_migrations` VALUES ('13', 'sessions', '0001_initial', '2016-05-29 22:24:52.337000');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------

-- ----------------------------
-- Table structure for movimientos
-- ----------------------------
DROP TABLE IF EXISTS `movimientos`;
CREATE TABLE `movimientos` (
  `usuario` varchar(100) NOT NULL,
  `fecha` datetime NOT NULL,
  `accion` varchar(1) NOT NULL,
  `tabla` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movimientos
-- ----------------------------
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-16 17:23:56', 'I', 'barcos');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-16 17:24:02', 'E', 'barcos');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-16 17:48:28', 'I', 'barcos');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-22 11:39:36', 'I', 'barcos');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-22 11:40:32', 'I', 'barcos');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-22 11:42:29', 'I', 'barcos');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-22 11:43:47', 'I', 'barcos');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-22 11:44:52', 'E', 'barcos');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-22 11:44:54', 'I', 'barcos');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-22 21:43:41', 'I', 'personas');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-22 21:46:30', 'E', 'personas');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-22 21:46:30', 'E', 'personas');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-26 12:04:54', 'E', 'barcos');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-26 12:05:30', 'I', 'barcos');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-26 12:23:23', 'I', 'barcos');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-26 12:32:15', 'A', 'barcos');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-26 12:33:02', 'I', 'barcos');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-26 12:33:42', 'E', 'barcos');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-26 12:36:09', 'E', 'barcos');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-26 12:38:30', 'I', 'barcos');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-26 12:40:42', 'E', 'barcos');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-26 12:43:25', 'I', 'barcos');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-26 12:55:43', 'E', 'barcos');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-26 12:56:17', 'E', 'barcos');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-26 12:56:39', 'A', 'barcos');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-29 21:17:43', 'E', 'barcos');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-29 21:17:43', 'E', 'barcos');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-29 21:35:30', 'A', 'barcos_salidas');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-29 21:39:27', 'E', 'barcos');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-29 21:45:32', 'A', 'barcos_salidas');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-29 21:45:33', 'A', 'barcos_salidas');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-29 21:45:34', 'A', 'barcos_salidas');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-29 21:45:34', 'A', 'barcos_salidas');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-29 21:45:35', 'A', 'barcos_salidas');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-29 21:45:36', 'A', 'barcos_salidas');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-29 21:45:36', 'A', 'barcos_salidas');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-29 21:45:37', 'A', 'barcos_salidas');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-29 21:45:38', 'A', 'barcos_salidas');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-29 21:45:40', 'A', 'barcos_salidas');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-29 21:45:44', 'A', 'barcos_salidas');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-29 21:45:45', 'A', 'barcos_salidas');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-29 21:45:46', 'A', 'barcos_salidas');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-29 21:45:47', 'A', 'barcos_salidas');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-29 21:45:49', 'A', 'barcos_salidas');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-29 21:45:50', 'A', 'barcos_salidas');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-29 21:45:51', 'A', 'barcos_salidas');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-29 21:45:52', 'A', 'barcos_salidas');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-29 21:45:53', 'A', 'barcos_salidas');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-29 21:45:55', 'A', 'barcos_salidas');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-29 21:48:54', 'A', 'barcos_salidas');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-29 21:53:37', 'A', 'barcos_salidas');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-29 21:55:35', 'A', 'personas');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-29 21:56:39', 'A', 'barcos');
INSERT INTO `movimientos` VALUES ('root@localhost', '2016-05-29 21:57:24', 'I', 'barcos');

-- ----------------------------
-- Table structure for personas
-- ----------------------------
DROP TABLE IF EXISTS `personas`;
CREATE TABLE `personas` (
  `rfc` varchar(10) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido_paterno` varchar(45) NOT NULL,
  `apellido_materno` varchar(45) NOT NULL,
  `fecha_nac` date NOT NULL,
  `tel` varchar(45) NOT NULL,
  `socio` varchar(2) NOT NULL,
  PRIMARY KEY (`rfc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of personas
-- ----------------------------
INSERT INTO `personas` VALUES ('AIAD552513', 'Elena', 'Alirio', 'Cordero', '1998-02-23', '9987653879', 'si');
INSERT INTO `personas` VALUES ('AMKC324032', 'Gabriel', 'Jimenez', 'Contreras', '1997-06-25', '9949949432', 'no');
INSERT INTO `personas` VALUES ('BBMG039362', 'Alfredo', 'Alvarez', 'Sixto', '1998-04-13', '9962697995', 'si');
INSERT INTO `personas` VALUES ('BGJG814539', 'Isabella', 'Cordero', 'Alvarez', '1996-06-03', '9960762854', 'no');
INSERT INTO `personas` VALUES ('CCEM283256', 'Victor', 'De Dios', 'Suarez', '2000-07-23', '9943841431', 'si');
INSERT INTO `personas` VALUES ('CEIE997246', 'Sandra', 'De La Cruz', 'De La Cruz', '1995-11-01', '9962286762', 'no');
INSERT INTO `personas` VALUES ('CKLJ610123', 'Jairo', 'Contreras', 'Jimenez', '2000-07-13', '9932773268', 'si');
INSERT INTO `personas` VALUES ('DALH547074', 'Joaquin', 'Suarez', 'Herrera', '1995-10-12', '9953263950', 'si');
INSERT INTO `personas` VALUES ('DFCH950877', 'Emiliano', 'De La Cruz', 'Cordero', '1995-08-04', '9981538338', 'no');
INSERT INTO `personas` VALUES ('DIIJ695472', 'Israel', 'Suarez', 'De Dios', '1999-08-01', '9981203938', 'no');
INSERT INTO `personas` VALUES ('EACJ483884', 'Elsa', 'De La Cruz', 'Jimenez', '1997-02-16', '9932517287', 'no');
INSERT INTO `personas` VALUES ('EDBF467297', 'Ruben', 'De La Cruz', 'Jimenez', '2000-05-10', '9997384647', 'si');
INSERT INTO `personas` VALUES ('EGGF549945', 'Alina', 'Sanchez', 'Contreras', '1998-12-28', '9910665070', 'si');
INSERT INTO `personas` VALUES ('EGMA110456', 'Amaya', 'Contreras', 'Villegas', '1999-05-17', '9974604231', 'si');
INSERT INTO `personas` VALUES ('FBLA376692', 'Noe', 'De La Cruz', 'Jimenez', '1996-04-14', '9971529299', 'si');
INSERT INTO `personas` VALUES ('FLMH862656', 'Miranda', 'Villegas', 'Alirio', '1995-12-07', '9977106812', 'si');
INSERT INTO `personas` VALUES ('GJJB452660', 'Tobias', 'Villegas', 'De Dios', '1999-02-28', '9910319647', 'no');
INSERT INTO `personas` VALUES ('IEHC303916', 'Amanda', 'Villegas', 'Villegas', '1999-12-15', '9955807925', 'si');
INSERT INTO `personas` VALUES ('IKCH898325', 'Mario', 'Suarez', 'Contreras', '1997-12-18', '9976367469', 'si');
INSERT INTO `personas` VALUES ('JMHM533503', 'Matias', 'Villegas', 'Cordero', '1997-02-16', '9915182693', 'si');
INSERT INTO `personas` VALUES ('KCMM970213', 'Sebastian', 'Sanchez', 'Alirio', '1995-02-11', '9980622166', 'no');
INSERT INTO `personas` VALUES ('LBJI891183', 'Rafael', 'Jimenez', 'De Dios', '1996-11-22', '9916794245', 'no');
INSERT INTO `personas` VALUES ('LFGM771604', 'Juliana', 'Sanchez', 'Alvarez', '1997-11-01', '9957446061', 'no');
INSERT INTO `personas` VALUES ('LGHB714834', 'Adrian', 'Sanchez', 'Villegas', '2000-11-30', '9992868548', 'no');
INSERT INTO `personas` VALUES ('LMLE981803', 'Vivian', 'De La Cruz', 'Contreras', '1998-06-08', '9968889570', 'no');
INSERT INTO `personas` VALUES ('MAIJ720187', 'Angelica', 'Cordero', 'Herrera', '1997-02-07', '9939966180', 'no');
INSERT INTO `personas` VALUES ('MAIM669494', 'Rafael', 'Herrera', 'Alirio', '2000-12-14', '9993385142', 'no');
INSERT INTO `personas` VALUES ('MAIM669495', 'Reynaldo Bernard', 'De Dios', 'De La Cruz', '2016-05-22', '1234567882', 'si');
INSERT INTO `personas` VALUES ('MJLH264839', 'Eliana', 'De La Cruz', 'Villegas', '2000-01-02', '9982856587', 'si');

-- ----------------------------
-- Table structure for total
-- ----------------------------
DROP TABLE IF EXISTS `total`;
CREATE TABLE `total` (
  `total_cuota_pago` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of total
-- ----------------------------
INSERT INTO `total` VALUES ('2454549.2600000007');
INSERT INTO `total` VALUES ('123115.05');
INSERT INTO `total` VALUES ('123282.05');
INSERT INTO `total` VALUES ('123405.05');
INSERT INTO `total` VALUES ('134594.45000000004');
INSERT INTO `total` VALUES ('152608.57000000004');
INSERT INTO `total` VALUES ('111301.28000000001');
DROP TRIGGER IF EXISTS `insertar_barcos`;
DELIMITER ;;
CREATE TRIGGER `insertar_barcos` AFTER INSERT ON `barcos` FOR EACH ROW INSERT INTO movimientos VALUES(user(), now(), 'I', 'barcos')
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `total_barcos`;
DELIMITER ;;
CREATE TRIGGER `total_barcos` AFTER INSERT ON `barcos` FOR EACH ROW BEGIN
DECLARE total_pago DOUBLE;
SELECT SUM(cuota_pago) INTO total_pago FROM barcos;
INSERT INTO total VALUES(total_pago);
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `actualizar_barcos`;
DELIMITER ;;
CREATE TRIGGER `actualizar_barcos` AFTER UPDATE ON `barcos` FOR EACH ROW INSERT INTO movimientos VALUES(user(), now(), 'A', 'barcos')
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `eliminar_barcos`;
DELIMITER ;;
CREATE TRIGGER `eliminar_barcos` AFTER DELETE ON `barcos` FOR EACH ROW INSERT INTO movimientos VALUES(user(), now(), 'E', 'barcos')
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `insertar_barcos_salidas`;
DELIMITER ;;
CREATE TRIGGER `insertar_barcos_salidas` AFTER INSERT ON `barcos_salidas` FOR EACH ROW INSERT INTO movimientos VALUES(user(), now(), 'I', 'barcos_salidas')
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `actualizar_barcos_salidas`;
DELIMITER ;;
CREATE TRIGGER `actualizar_barcos_salidas` AFTER UPDATE ON `barcos_salidas` FOR EACH ROW INSERT INTO movimientos VALUES(user(), now(), 'A', 'barcos_salidas')
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `eliminar_barcos_salidas`;
DELIMITER ;;
CREATE TRIGGER `eliminar_barcos_salidas` AFTER DELETE ON `barcos_salidas` FOR EACH ROW INSERT INTO movimientos VALUES(user(), now(), 'E', 'barcos_salidas')
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `insertar_personas`;
DELIMITER ;;
CREATE TRIGGER `insertar_personas` AFTER INSERT ON `personas` FOR EACH ROW INSERT INTO movimientos VALUES(user(), now(), 'I', 'personas')
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `actualizar_personas`;
DELIMITER ;;
CREATE TRIGGER `actualizar_personas` AFTER UPDATE ON `personas` FOR EACH ROW INSERT INTO movimientos VALUES(user(), now(), 'A', 'personas')
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `eliminar_personas`;
DELIMITER ;;
CREATE TRIGGER `eliminar_personas` AFTER DELETE ON `personas` FOR EACH ROW INSERT INTO movimientos VALUES(user(), now(), 'E', 'personas')
;;
DELIMITER ;
