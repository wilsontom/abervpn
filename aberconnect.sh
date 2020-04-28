#!/usr/bin/expect -f

set timeout -1

set username [lindex $argv 0]
set password [lindex $argv 1]
set OTP [lindex $argv 2]

spawn ./openconnect --protocol=gp pa-vpn.aber.ac.uk --user=$username

expect "Password:*"
send -- "$password\r"

expect "*OTP:*"
send -- $OTP\r"

expect eof

