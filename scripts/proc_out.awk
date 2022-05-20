#!/bin/awk -f

BEGIN {
  p="";
  n="";
  a="";
  e="";
  t="";
}

{
  if ($1 == "Points:") {
    p=$2;
    if ($3 == "Threads:") {
      n=$4;
    } else {
      n=1;
    }
  }
  
  if ($1 == "Area") {
    a=$6;
    e=$8;
  }

  if ($1 == "Time") {
    t=$3;
  }
}

END {
  print n, p, a, e, t;
}
