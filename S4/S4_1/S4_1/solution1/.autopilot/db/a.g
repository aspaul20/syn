#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/tukl/Amur/IndividualSyn/S4/S4_1/S4_1/solution1/.autopilot/db/a.g.bc ${1+"$@"}
