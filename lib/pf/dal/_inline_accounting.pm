package pf::dal::_inline_accounting;

=head1 NAME

pf::dal::_inline_accounting - pf::dal implementation for the table inline_accounting

=cut

=head1 DESCRIPTION

pf::dal::_inline_accounting

pf::dal implementation for the table inline_accounting

=cut

use strict;
use warnings;

###
### pf::dal::_inline_accounting is auto generated any change to this file will be lost
### Instead change in the pf::dal::inline_accounting module
###
use base qw(pf::dal);

our @FIELD_NAMES;
our @INSERTABLE_FIELDS;
our @PRIMARY_KEYS;
our %DEFAULTS;
our %FIELDS_META;
our @COLUMN_NAMES;

BEGIN {
    @FIELD_NAMES = qw(
        outbytes
        inbytes
        tenant_id
        ip
        firstseen
        lastmodified
        status
    );

    %DEFAULTS = (
        outbytes => '0',
        inbytes => '0',
        tenant_id => '1',
        ip => '',
        firstseen => '',
        lastmodified => '',
        status => '0',
    );

    @INSERTABLE_FIELDS = qw(
        outbytes
        inbytes
        tenant_id
        ip
        firstseen
        lastmodified
        status
    );

    %FIELDS_META = (
        outbytes => {
            type => 'BIGINT',
            is_auto_increment => 0,
            is_primary_key => 0,
            is_nullable => 0,
        },
        inbytes => {
            type => 'BIGINT',
            is_auto_increment => 0,
            is_primary_key => 0,
            is_nullable => 0,
        },
        tenant_id => {
            type => 'INT',
            is_auto_increment => 0,
            is_primary_key => 0,
            is_nullable => 0,
        },
        ip => {
            type => 'VARCHAR',
            is_auto_increment => 0,
            is_primary_key => 1,
            is_nullable => 0,
        },
        firstseen => {
            type => 'DATETIME',
            is_auto_increment => 0,
            is_primary_key => 1,
            is_nullable => 0,
        },
        lastmodified => {
            type => 'DATETIME',
            is_auto_increment => 0,
            is_primary_key => 0,
            is_nullable => 0,
        },
        status => {
            type => 'INT',
            is_auto_increment => 0,
            is_primary_key => 0,
            is_nullable => 0,
        },
    );

    @PRIMARY_KEYS = qw(
        ip
        firstseen
    );

    @COLUMN_NAMES = qw(
        inline_accounting.outbytes
        inline_accounting.inbytes
        inline_accounting.tenant_id
        inline_accounting.ip
        inline_accounting.firstseen
        inline_accounting.lastmodified
        inline_accounting.status
    );

}

use Class::XSAccessor {
    accessors => \@FIELD_NAMES,
};

=head2 _defaults

The default values of inline_accounting

=cut

sub _defaults {
    return {%DEFAULTS};
}

=head2 field_names

Field names of inline_accounting

=cut

sub field_names {
    return [@FIELD_NAMES];
}

=head2 primary_keys

The primary keys of inline_accounting

=cut

sub primary_keys {
    return [@PRIMARY_KEYS];
}

=head2

The table name

=cut

sub table { "inline_accounting" }

our $FIND_SQL = do {
    my $where = join(", ", map { "$_ = ?" } @PRIMARY_KEYS);
    "SELECT * FROM `inline_accounting` WHERE $where;";
};

=head2 find_columns

find_columns

=cut

sub find_columns {
    return [@COLUMN_NAMES];
}

=head2 _find_one_sql

The precalculated sql to find a single row inline_accounting

=cut

sub _find_one_sql {
    return $FIND_SQL;
}

=head2 _updateable_fields

The updateable fields for inline_accounting

=cut

sub _updateable_fields {
    return [@FIELD_NAMES];
}

=head2 _insertable_fields

The insertable fields for inline_accounting

=cut

sub _insertable_fields {
    return [@INSERTABLE_FIELDS];
}

=head2 get_meta

Get the meta data for inline_accounting

=cut

sub get_meta {
    return \%FIELDS_META;
}

=head2 update_params_for_select

Automatically add the current tenant_id to the where clause of the select statement

=cut

sub update_params_for_select {
    my ($self, %args) = @_;
    unless ($args{'-no_auto_tenant_id'}) {
        my $where = {
            tenant_id => $self->get_tenant,
        };
        my $old_where = delete $args{-where};
        if (defined $old_where) {
            $where->{-and} = $old_where;
        }
        $args{-where} = $old_where;
    }
    return $self->SUPER::update_params_for_select(%args);
}

=head2 update_params_for_update

Automatically add the current tenant_id to the where clause of the update statement

=cut

sub update_params_for_update {
    my ($self, %args) = @_;
    unless ($args{'-no_auto_tenant_id'}) {
        my $where = {
            tenant_id => $self->get_tenant,
        };
        my $old_where = delete $args{-where};
        if (defined $old_where) {
            $where->{-and} = $old_where;
        }
        $args{-where} = $old_where;
    }
    return $self->SUPER::update_params_for_select(%args);
}

=head2 update_params_for_delete

Automatically add the current tenant_id to the where clause of the delete statement

=cut

sub update_params_for_delete {
    my ($self, %args) = @_;
    unless ($args{'-no_auto_tenant_id'}) {
        my $where = {
            tenant_id => $self->get_tenant,
        };
        my $old_where = delete $args{-where};
        if (defined $old_where) {
            $where->{-and} = $old_where;
        }
        $args{-where} = $old_where;
    }
    return $self->SUPER::update_params_for_select(%args);
}

=head2 update_params_for_insert

Automatically add the current tenant_id to the set clause of the insert statement

=cut

sub update_params_for_insert {
    my ($self, %args) = @_;
    unless ($args{'-no_auto_tenant_id'}) {
        my $old_set = delete $args{-set} // {};
        $old_set->{tenant_id} = $self->get_tenant;
        $args{-set} = $old_set;
    }
    return $self->SUPER::update_params_for_insert(%args);
}

=head2 defaults

=cut

sub defaults {
    my ($self) = @_;
    return {%{$self->SUPER::defaults}, tenant_id => $self->get_tenant};
}

 
=head1 AUTHOR

Inverse inc. <info@inverse.ca>

=head1 COPYRIGHT

Copyright (C) 2005-2018 Inverse inc.

=head1 LICENSE

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
USA.

=cut

1;
