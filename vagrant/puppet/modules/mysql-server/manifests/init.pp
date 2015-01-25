class mysql-server {
	$user = "root"
	$password = "root"

	package { "mysql-server": ensure => installed }

	service { "mysql":
		ensure => running,
		require => Package["mysql-server"],
	}

	exec { "set-mysql-passwrod":
		unless => "mysqladmin -u$user -p$password status",
		command => "mysqladmin -u$user password $password",
		require => Service["mysql"],
	}

	$dbnames = ["playground", "test_playground"]
	define createdb($user, $password) {
		$dbname = $name
	  exec { "create-$dbname-db":
	    command => "mysqladmin -u$user -p$password create $dbname",
	    require => Service["mysql"],
	  }
	}
	createdb {$dbnames:
		user => $user,
		password => $password
	}
}