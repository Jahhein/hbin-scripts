#!/bin/bash
# Fixes directory and file permissions -- recursively

sudo chmod -R u+rwX,go+rX,go-w .

exit 0
