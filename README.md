The check_git command is provided here for use as a plugin with Nagios.

Run the command to see usage.

It currently will work with git, http, and ssh URLs (without testing the push)
and can test a push with ssh URLs and an identity file.

On a Debian/Ubuntu system you would install check_git in /usr/lib/nagios/plugins.

The two files to copy into the plugins directory are

  check_git
  check_git_exec_ssh.sh