#!/bin/sh

# Create the command overview page.

ls -1 | tr -d '/' | awk '{ printf "|[`%s`](%s/%s.md)    | %s ||\n", $1, $1, $1, $1 }'
