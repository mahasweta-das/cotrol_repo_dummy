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
		key    => 'MIIEpAIBAAKCAQEA3YhiUwtJZ+aQC/UJ03lKXKGMO9/DbHvzwHdcT6LPoAwfcVJw
T2sfmT79O8FqLqk/5zNNKXYA1KAKjS4KBbDPVjFFyofR9evcqlWUylg5o5GXmn5l
SFGSECCJGZMnbBMotdi9cAzTE1hGTiX/IFzfVfrEH12bEY/zu8llD42B4PtZuOIJ
pOa+vUuJPFcXSbgOarG5oT0yXah+dZZzAKw+W23+DQTLUFBCl00jYEOX5v/mftpv
5vHOhlmsdHzofHOd5GB438Z2j/mtEzJWcFVEM9m1ry3F8CyFbPuyyPQdyZDKKMFG
HPiIaFdjBdQAVYauoSn9adexsLLF2pGiHxTIrQIDAQABAoIBAHrO/4r/58q0k0g9
qBvW0nV1jRMoIeMC+AbLZJ41KJqV/dxJkj9EqHjA5Yt51o5VfzqBQxZn91/n9NF9
I0syUE589C6piqik/2hiFyDxNcrKjFu2FBm6NpnAH6DQ5frQyDG/HI2AXocL2bW6
9KsRMTIt2Ql2T9+1iK2ioOa1ULnSNLnDLvZ9Z3ix2UAsefpG8YPmqRt9auB7S9bt
XJns8tpM0+3kIBItDgE+AAQJk30TbDfiXKxv13BquXepUPJWEyE6HVsNVyfXxsY1
b8kOiZTOPOBVfwvzfA3Yoi858pi9pYUutOdezGJR/aU3M4B+okD70vt9pE0A09tQ
nz2AqNUCgYEA/juoNveiaN3Qv+oEsqWgjUvnhOazBtx/2d4VyKMSo8Vp76kHzxYC
2zrACGQu3y+B4Z7a9L65/Xmz9Nt3d6ElVoideQ5PUEnCe8VGyyYq/EFxu9zj7ikN
pb4KjRSdR+UlHHxzMaMREcP9AY7dH3ypXPOvMRSXhl8g9nN4LBmSrYsCgYEA3xKL
j++0QnBCGV/sVUZR5EUrgjOyk/lajoyg8rGxqyoMGfvX2fWXv40dSuKlht+fJ+Sf
kdOYWFZF8cFgiAxuvrMtO4x6HVL76FNhJ4Kh0xEtwRvM1NRM74ACNMqnaySE8dcl
Ihif7IFJs8rhT76LqTW0qa8bqBjxxJtUmpy5GacCgYAJB+V5zmIeh4Kazp1MG0YQ
vtmChw9k9wAzpQfxEJng52pT8RUt7gI792JK6gQgOXfLo/DzMLM6pdAWqpUb0sWY
xVGSs0dt+rDF5MQXA0wTmd+IZNhT5XFuqcmGKW1M2H7w/Bq7cKdykhuyqniAXdVG
UAGxJKIdS9PH7WIfbuke8QKBgQCtesespZcDQDg3caDi5HAVXTGr7TaI25fwWi9k
7ookeeu1XWUNbXCZGE5aiY5/KHOm26a5CtxkfpugmmnPBBQwHDomIGZrXbjogceB
qZbeBXMWxd7y+TPn4h5VHfE7Ysg9J7sKHCprDFTcDQBSOvZ0Hn8koziX7uY+pyoR
n6ZX6wKBgQDgQCihOV0NK5qQ/3qs83owiDDx5BLrfT79iBYvX0dgJDqk3Cv0248h
o41YBnCmQTu9Um9KffBZbIKEnqhIBJLnpkkz+WreoBhpeGj3VCJbUZfJgrtU+t+B
I6YkmbG045Ho/iiVZdwW7xaDukUSAJcKSQ53m0WwOQfotzlwdv/cvA==',
	}  
}
