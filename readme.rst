mkinitcpio-welcome
==================

A mkinitcpio_ hook that draws out the word "Welcome" in big letters early
during the boot process and accepts input for disk decryption. A box is drawn
underneath for inputting the password and printing the output of the 'fsck'
hook.

The hook wraps and replaces the encrypt hook so that it can have greater
control over the cursor and any printed messages.

If you find that the message is squeezed into a smaller number of columns that
can fit on screen, you may need to enable early `kernel mode setting`_,
although I found enabling the `consolefont` hook also fixed the issue.

It works very well with Evan Purkhiser's `mkinitcpio-colors`_.


Usage
-----

0. Ensure that you can successfully use the `encrypt` hook without first.
1. Copy `hooks/welcome` into `/etc/initcpio/hooks`.
2. Copy `install/welcome` into `/etc/initcpio/install`.
3. Add the `welcome` hook to `/etc/mkinitcpio.conf` replacing the `encrypt` hook.
4. Optionally configure the colours to use in `/etc/vconsole.conf`:

.. code-block:: sh

   WELCOME_BG=0    # background
   WELCOME_FG=5    # foreground ("Welcome")
   WELCOME_IN=6    # input box frame

where the number is 0-15 corresponding to the 16 defined console colours.

5. Rebuild the initramfs image with `mkinitcpio`.


Contact
-------
Email me @ mcol@posteo.net for questions or contributions.


.. _mkinitcpio: https://wiki.archlinux.org/index.php/mkinitcpio
.. _mkinitcpio-colors: https://github.com/EvanPurkhiser/mkinitcpio-colors
