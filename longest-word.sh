#!/bin/bash

grep -E ".{$(wc -w < test.txt)}" test.txt