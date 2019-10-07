#!/usr/bin/expect -f

set timeout -1

set username [lindex $argv 0]
set password [lindex $argv 1]

spawn ./openconnect --protocol=gp pa-vpn.aber.ac.uk --user=$username

expect "*OTP:*"

send -- "$password\r"

expect eof

