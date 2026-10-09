#!/bin/sh
set -e
H=http://web
# /wp-login.php answers with the benchmark's own page.
curl -fsS "$H/wp-login.php" | grep -qF 'user_login'
