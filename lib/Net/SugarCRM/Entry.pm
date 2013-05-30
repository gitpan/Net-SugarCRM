package Net::SugarCRM::Entry;

use warnings;
use strict;

=head1 Net::SugarCRM::Entry

Represens an entry from Sugar

=head2 new

Creates a new entry

=cut


sub new {
    my $class = shift;
    my $self = shift;
    $self = {} if (!$self);
    return bless $self, $class;
}

=head2 module_name

Returns the module name

=cut
sub module_name { return shift->{module_name} }

=head2 id

Returns the id of the module

=cut
sub id { return shift->{id} }

sub DESTROY { }

sub AUTOLOAD {
    my $self = shift;
    our $AUTOLOAD;
    my $field = $AUTOLOAD;
    $field =~ s/.*:://;

    if (exists $self->{name_value_list}{$field}) {
        my $ret = $self->{name_value_list}{$field}{value};
        $self->{name_value_list}{$field}{value} = $_[0] if ($#_ > -1);
        return $ret;
    } else {
        confess("$field: No such attribute");
    }
}

sub has {
    my ($self, $field) = @_;
    return exists($self->{name_value_list}{$field});
}

1;
