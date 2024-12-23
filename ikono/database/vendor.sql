CREATE TABLE vendor.vendor (
  vendor_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  contact_person VARCHAR(100) NOT NULL DEFAULT 'Unknown',
  email VARCHAR(150) NOT NULL,
  phone VARCHAR(15) NOT NULL DEFAULT 'Unknown',
  address TINYTEXT NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL,
  PRIMARY KEY (vendor_id),
  UNIQUE INDEX name_UNIQUE (name ASC) VISIBLE,
  UNIQUE INDEX email_UNIQUE (email ASC) VISIBLE
);
