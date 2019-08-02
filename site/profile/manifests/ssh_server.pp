class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCbIyJ5Ku0ZP3AFI0rWMNcVlNB4AScvD41Fj2Bq0JzI3RqJCv+1aCqBLGYlxaIFC5zE7D6EL4AAe+CZJCYi0nKoYS2A0xDwPYOohR2O6jbH7S8JdI0LVPfgVPdDEA1b3hoJ6FjEWml4PqB50Qh9gRxBuIu6nee+o7ZqWPvHZ0RY0kImdH7MR9KTnxZUSu9s1hr5uHHjwGl3mo/Bhi/7bJGiepbz2pBQZS9tujWfnESApTwAvi5y7KeTkiebSSkpvaOB72t8h1IqKS6gy+JpFEt++UW+1FJm1lTI35vFzhTCxiQbSS4l12BA6KVSEeITYTzhahuDrzHvE/tn27UhXO83',
	}  
}
