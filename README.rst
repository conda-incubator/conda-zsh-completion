conda-zsh-completion
--------------------

Installation
------------
`oh-my-zsh <http://github.com/robbyrussell/oh-my-zsh>`_
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

        git clone https://github.com/esc/conda-zsh-completion ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions


add lines in `.zshrc`

.. code-block:: zsh
        
        plugins=(… conda-zsh-completion)
        autoload -U compinit && compinit


Manual
~~~~~~
Please see the top of the ``_conda`` file for more info.

:License: |license|

.. |license| image:: http://www.wtfpl.net/wp-content/uploads/2012/12/wtfpl-badge-4.png
        :target: http://www.wtfpl.net/
