The check_git command is provided here for use as a plugin with Nagios.

Run the command to see usage.

It currently will work with git, http, and ssh URLs (without testing the push)
and can test a push with ssh URLs and an identity file.

On a Debian/Ubuntu system you would install check_git in /usr/lib/nagios/plugins.

Configuration:

1. Copy these files to /usr/lib/nagios/plugins:
   * check_git
   * check_git_exec_ssh.sh
2. Configure a check command like
   * $USER1$/check_git $ARG1$
   * $USER1$/check_git $ARG1$ --keyfile $ARG2$ --push
3. (optional) Create a keyfile that can be used as the SSH identity file:

      ssh-keygen -f /var/tmp/check_git_keyfile

      sudo chown nagios /var/tmp/check_git_keyfile

      sudo chmod 400 /var/tmp/check_git_keyfile

4. Make or use a an appropriate repository.  If it's an ssh repo, you'll have
to configure it with the pubkey of the check_git_keyfile you made.
If you do pushes, your pushes will be recorded in the file check_git_commits.txt.
