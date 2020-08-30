#!/bin/bash
#Lab 0 Compile Script

 tar xzf NthPrime.tgz
 cd NthPrime
  gcc -o NthPrime main.c nth_prime.c nth_prime.h
  ./NthPrime $1
