#! /bin/bash -x

#Unit Conversion Feet To Meter Using Awk command
awk 'BEGIN { ft1=60 ; ft2=40; print "(ft1 * ft2)=",(ft1 * ft2 * 0.3048)}'
