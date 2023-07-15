package LibYAML::FFI::YPP;
use strict;
use warnings;

use base qw/ YAML::PP Exporter /;
our @EXPORT_OK = qw/ Load Dump LoadFile DumpFile /;

use LibYAML::FFI::YPP::Parser;

sub new {
    my ($class, %args) = @_;

    my $self = $class->SUPER::new(
        parser => LibYAML::FFI::YPP::Parser->new,
        %args,
    );
    return $self;
}

1;
