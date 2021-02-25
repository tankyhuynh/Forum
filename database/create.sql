-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema askus_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema askus_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `askus_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
USE `askus_db` ;

-- -----------------------------------------------------
-- Table `askus_db`.`role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `askus_db`.`role` (
  `id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_code` VARCHAR(20) NOT NULL,
  `role_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `askus_db`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `askus_db`.`user` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `full_name` VARCHAR(30) NOT NULL,
  `username` VARCHAR(200) NOT NULL,
  `password` VARCHAR(200) NOT NULL,
  `email` VARCHAR(30) NOT NULL,
  `gender` BIT NOT NULL,
  `role_id` TINYINT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `tai_khoan_UNIQUE` (`username` ASC) VISIBLE,
  INDEX `fk_user_role_idx` (`role_id` ASC) VISIBLE,
  CONSTRAINT `fk_user_role`
    FOREIGN KEY (`role_id`)
    REFERENCES `askus_db`.`role` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `askus_db`.`type_of_post`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `askus_db`.`type_of_post` (
  `id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_code` VARCHAR(20) NOT NULL,
  `type_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `askus_db`.`post`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `askus_db`.`post` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(200) NOT NULL,
  `content` LONGTEXT NOT NULL,
  `user_id` BIGINT UNSIGNED NOT NULL,
  `type_of_post_id` TINYINT UNSIGNED NOT NULL,
  `history_of_post_id` BIGINT UNSIGNED NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_post_user1_idx` (`user_id` ASC) VISIBLE,
  INDEX `fk_post_type_of_post1_idx` (`type_of_post_id` ASC) VISIBLE,
  INDEX `fk_post_post1_idx` (`history_of_post_id` ASC) VISIBLE,
  CONSTRAINT `fk_post_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `askus_db`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_post_type_of_post1`
    FOREIGN KEY (`type_of_post_id`)
    REFERENCES `askus_db`.`type_of_post` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_post_post1`
    FOREIGN KEY (`history_of_post_id`)
    REFERENCES `askus_db`.`post` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `askus_db`.`status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `askus_db`.`status` (
  `id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `status_code` VARCHAR(20) NOT NULL,
  `status_name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `askus_db`.`comment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `askus_db`.`comment` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `content` LONGTEXT NOT NULL,
  `user_id` BIGINT UNSIGNED NOT NULL,
  `child_of_comment_id` BIGINT UNSIGNED NULL,
  `history_of_comment_id` BIGINT UNSIGNED NULL,
  `post_id` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_comment_user1_idx` (`user_id` ASC) VISIBLE,
  INDEX `fk_comment_comment1_idx` (`child_of_comment_id` ASC) VISIBLE,
  INDEX `fk_comment_comment2_idx` (`history_of_comment_id` ASC) VISIBLE,
  INDEX `fk_comment_post1_idx` (`post_id` ASC) VISIBLE,
  CONSTRAINT `fk_comment_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `askus_db`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comment_comment1`
    FOREIGN KEY (`child_of_comment_id`)
    REFERENCES `askus_db`.`comment` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comment_comment2`
    FOREIGN KEY (`history_of_comment_id`)
    REFERENCES `askus_db`.`comment` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comment_post1`
    FOREIGN KEY (`post_id`)
    REFERENCES `askus_db`.`post` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `askus_db`.`type_of_report`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `askus_db`.`type_of_report` (
  `id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_code` VARCHAR(20) NOT NULL,
  `type_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `askus_db`.`report`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `askus_db`.`report` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `time` TIMESTAMP NOT NULL,
  `user_id` BIGINT UNSIGNED NOT NULL,
  `type_of_report_id` TINYINT UNSIGNED NOT NULL,
  `post_id` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_report_user1_idx` (`user_id` ASC) VISIBLE,
  INDEX `fk_report_type_of_report1_idx` (`type_of_report_id` ASC) VISIBLE,
  INDEX `fk_report_post1_idx` (`post_id` ASC) VISIBLE,
  CONSTRAINT `fk_report_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `askus_db`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_report_type_of_report1`
    FOREIGN KEY (`type_of_report_id`)
    REFERENCES `askus_db`.`type_of_report` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_report_post1`
    FOREIGN KEY (`post_id`)
    REFERENCES `askus_db`.`post` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `askus_db`.`post_detail`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `askus_db`.`post_detail` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `post_id` BIGINT UNSIGNED NOT NULL,
  `status_id` TINYINT UNSIGNED NOT NULL,
  `time` TIMESTAMP NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_post_has_status_status1_idx` (`status_id` ASC) VISIBLE,
  INDEX `fk_post_has_status_post1_idx` (`post_id` ASC) VISIBLE,
  CONSTRAINT `fk_post_has_status_post1`
    FOREIGN KEY (`post_id`)
    REFERENCES `askus_db`.`post` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_post_has_status_status1`
    FOREIGN KEY (`status_id`)
    REFERENCES `askus_db`.`status` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `askus_db`.`comment_detail`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `askus_db`.`comment_detail` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `comment_id` BIGINT UNSIGNED NOT NULL,
  `status_id` TINYINT UNSIGNED NOT NULL,
  `time` TIMESTAMP NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_comment_has_status_status1_idx` (`status_id` ASC) VISIBLE,
  INDEX `fk_comment_has_status_comment1_idx` (`comment_id` ASC) VISIBLE,
  CONSTRAINT `fk_comment_has_status_comment1`
    FOREIGN KEY (`comment_id`)
    REFERENCES `askus_db`.`comment` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comment_has_status_status1`
    FOREIGN KEY (`status_id`)
    REFERENCES `askus_db`.`status` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
