#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/tukl/Amur/IndividualSyn/S2/solution1/.autopilot/db/a.g.bc ${1+"$@"}
