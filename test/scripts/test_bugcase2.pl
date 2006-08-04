#!/usr/local/bin/perl

use strict;
require './scripts/testlib.pl';

my $bindir="../bin.i686-pc-linux-gnu/";
my $resdir="res/";
my $exec_resdir="bugcase2";
my $bin="${bindir}mk_flat";

my $topo="${exec_resdir}/bug.topo";
my $mdef="mk_mdef_gen/4st.ci.mdef";

test_this("$bin -moddeffn $mdef -topo $topo -tmatfn tm -mixwfn mw","mk_flat","mk_flat format bug (Tracker no: 1504066) Expected Fail", 256);

unlink("tm","mw");

