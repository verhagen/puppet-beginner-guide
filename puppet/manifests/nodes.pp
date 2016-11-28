node 'agent' {
	file { '/tmp/hello':
		content => "Hello world!\n",
	}
}
