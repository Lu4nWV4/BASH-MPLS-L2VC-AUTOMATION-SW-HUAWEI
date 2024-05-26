#!/usr/bin/expect
#
# Author: Luan Andrade
#
# Linkedin: https://www.linkedin.com/in/luan-william-vieira-de-andrade-5a8110197/
#
set host [lindex $argv 0];
set user [lindex $argv 1];
set pass [lindex $argv 2];
set mplspeer [lindex $argv 3];
set vlan [lindex $argv 4];
set descvlan [lindex $argv 5];
set interface [lindex $argv 6];
set intdesc [lindex $argv 7];

set timeout 5;

spawn ssh -o StrictHostKeyChecking=no -p 2222 $user@$host
expect -exact "password: "
send -- "$pass\r"
expect -exact "\*>"
send -- "sys\r"
expect -exact "\*]"
set timeout 30;
send -- "vlan $vlan\r
description $descvlan\r
interface Vlanif $vlan\r
description $descvlan\r
mpls l2vc $mplspeer $vlan no-control-word\r
mpls l2vpn flow-label both\r
statistic enable both\r
q\r
interface $interface\r
description $intdesc\r
port link-type trunk\r\r
undo port trunk allow-pass vlan 1 \r
port trunk allow-pass vlan $vlan\r
q\rq\r"
set timeout 2
expect -exact "\*>"
send -- "q\r\r\r"
