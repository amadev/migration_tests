CREATE TABLE `build_requests` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_spec_id` int(11) DEFAULT NULL,
  `project_id` varchar(255) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `instance_metadata` text,
  `progress` int(11) DEFAULT NULL,
  `vm_state` varchar(255) DEFAULT NULL,
  `task_state` varchar(255) DEFAULT NULL,
  `image_ref` varchar(255) DEFAULT NULL,
  `access_ip_v4` varchar(39) DEFAULT NULL,
  `access_ip_v6` varchar(39) DEFAULT NULL,
  `info_cache` text,
  `security_groups` text,
  `config_drive` tinyint(1) DEFAULT NULL,
  `key_name` varchar(255) DEFAULT NULL,
  `locked_by` enum('owner','admin') DEFAULT NULL,
  `instance_uuid` varchar(36) DEFAULT NULL,
  `instance` mediumtext,
  `block_device_mappings` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_build_requests0instance_uuid` (`instance_uuid`),
  KEY `build_requests_project_id_idx` (`project_id`),
  KEY `build_requests_instance_uuid_idx` (`instance_uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
