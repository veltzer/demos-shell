#!/bin/sh

<<'COMMENT'

This example shows that xargs has problems processing file names
hat have whitespace in them. The -n 1 is to make xargs activate
the command on each individual input and not combine them into
one activation.
as you can the number of activations of echo is problematic
the difference between number of words of wc of the entire
file and the number of echo activations is blank lines (there
are 2 of these in this script)

COMMENT

file=$0
wc $file
cat $file | xargs -n 1 echo | wc
