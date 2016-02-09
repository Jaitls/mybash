# mybash

Source .bashrc from your .bash_profile file, then put PATH and environment config in .bashrc.

To do this, add the following lines to /etc/.bash_profile or /etc/profile (os x):
"if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi"
