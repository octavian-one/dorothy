#!/usr/bin/env elvish

# use test -f, instead of os builtin, as test -f actually handles /user symlink

# Load the configuration for interactive shells
if ?(test -f $E:DOROTHY'/user/config.local/interactive.elv') {
	use '../user/config.local/interactive.elv'
} elif ?(test -f $E:DOROTHY'/user/config/interactive.elv') {
	use '../user/config/interactive.elv'
} elif ?(test -f $E:DOROTHY'/config/interactive.elv') {
	use '../config/interactive.elv'
}

# Continue with the shell extras
# use ./history.elv
use '../sources/theme.elv'
# use ./ssh.elv
# use ./autocomplete.elv
