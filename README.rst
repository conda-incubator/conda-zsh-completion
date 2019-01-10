conda-zsh-completion
--------------------

Please see the top of the ``_conda`` file for more info.

--------------------
To add to .oh-my-zsh (OMZ):
  1. Clone/download conda-zsh-completion into $ZSH/custom/plugin: ``cd $ZSH/custom/plugin; git clone $CLONEURL``
  2. Ensure conda is in your path. There are several options, depending on your conda version:
     - Pre conda 4.4, add ``export PATH="<conda_path>/bin:$PATH"`` to .zshrc
     - Conda 4.4 and up, add ``. <conda_path>/etc/profile.d/conda.sh`` to .zshrc
     If you do not know your conda version: ``<conda_path>/bin/conda --version``.
  3. Append the following lines to your .zshrc:
     ``fpath+=$ZSH/custom/plugins/conda-zsh-completion``
     ``compinit conda``

These instructions will not add conda-zsh-completion (CZC) to OMZ as a custom
plugin, as CZC is not formated as a plugin, and will fail if used as such. But
it will function correctly and be clean.
 
       
       
