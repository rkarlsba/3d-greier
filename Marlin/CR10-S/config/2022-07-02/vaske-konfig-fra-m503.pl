#!/usr/bin/perl
# vim:ts=4:sw=4:sts=4:et:ai:fdm=marker
#
# Les dump fra M503 og skriv om til tolkbar gkode
#

use strict;
use warnings;

# Utsnitt fra dump.txt {{{
#
# Recv: echo:; Filament settings: Disabled
# Recv: echo:  M200 S0 D1.75
# Recv: echo:; Steps per unit:
# Recv: echo: M92 X80.00 Y80.00 Z400.00 E728.00
#
# }}}
while (<STDIN>) {
    next unless (/^Recv: echo:/);
    s/Recv: echo:\s*//;
    print;
}
