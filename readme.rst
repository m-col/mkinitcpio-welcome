mkinitcpio-welcome
==================

Two hooks for mkinitcpio_ that draw out the word "Welcome" in big letters early
during the boot process. A box is drawn underneath for inputting the password
during the 'encrypt' hook and printing the output of the 'fsck' hook.

Please email me with any issues, questions or comments @ mcol at posteo.net

Usage
-----

1. Copy the contents of `hooks` into `/etc/initcpio/hooks`
#. Copy the contents of `install` into `/etc/initcpio/install`
#. Add the `welcome` hook to `/etc/mkinitcpio.conf` before the `encrypt` hook
#. Add the `poscursor` hook to `/etc/mkinitcpio.conf` after the `encrypt` hook
   but before the `fsck` hook
#. Optionally configure the colours to use in `/etc/vconsole.conf`:

.. code-block:: sh

   WELCOME_BG=0    # background
   WELCOME_FG=5    # foreground ("Welcome")
   WELCOME_IN=6    # input box

where the number is 0-15 corresponding to the 16 defined console colours.

Works very well with Evan Purkhiser's `mkinitcpio-colors`_.

.. _mkinitcpio: https://wiki.archlinux.org/index.php/mkinitcpio
.. _mkinitcpio-colors: https://github.com/EvanPurkhiser/mkinitcpio-colors
