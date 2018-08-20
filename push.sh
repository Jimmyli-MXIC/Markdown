#! /bin/expect
set timeout 30
spawn git push origin master
expect "Username for 'https://github.com':"
send "jimmyli-mxic\r"
expect "Password for 'https:jimmyli-mxic@github.com':"
send "xingyang0502\r"
interact