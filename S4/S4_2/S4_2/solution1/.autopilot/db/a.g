#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/tukl/Amur/IndividualSyn/S4/S4_2/S4_2/solution1/.autopilot/db/a.g.bc ${1+"$@"}
