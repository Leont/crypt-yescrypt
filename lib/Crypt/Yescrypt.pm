package Crypt::Yescrypt;

use strict;
use warnings;

use XSLoader;
XSLoader::load('Crypt::Yescrypt');

use Exporter 5.57 'import';
our @EXPORT_OK = qw(yescrypt yescrypt_check yescrypt_needs_rehash);

# ABSTRACT: A Perl interface to the yescrypt password hash

=head1 DESCRIPTION

=func yescrypt($password, $salt, $flags, $block_count, $block_size, $parallelism, $time, $upgrades)

This function processes the $password with the given $salt and parameters. It encodes the resulting tag and the parameters as a password string (e.g. C<$y$j9T$SALT$HIA0o5.HmkE9HhZ4H8X1r0aRYrqdcv0IJEZ2PLpqpz6>).

=func yescrypt_check($password, $hash)

This verifies that the C<$password> matches C<$hash>. All parameters and the tag value are extracted from C<$hash>, so no further arguments are necessary.

=func yescrypt_needs_rehash($hash, $salt, $flags, $block_count, $block_size, $parallelism, $time, $upgrades)

This returns true if the yescrypt C<$hash> uses a different parameters than the given parameters.

1;
