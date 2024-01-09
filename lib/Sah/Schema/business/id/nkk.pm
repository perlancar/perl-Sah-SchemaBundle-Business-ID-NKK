package Sah::Schema::business::id::nkk;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [str => {
    summary => 'Indonesian family card number (NKK)',
    prefilters => ['Str::remove_nondigit', 'Business::ID::NKK::check_nkk'],
    description => <<'MARKDOWN',

MARKDOWN
    examples => [
        {value=>'', valid=>0, summary=>'Empty string'},
        {value=>'123', valid=>0, summary=>'Too short'},
        {value=>'3273010101900005', valid=>1},
        {value=>'3273 0101 0190 0005', valid=>1, summary=>'Non-digits removed', validated_value=>'3273010101900005'},
    ],
}];

1;

# ABSTRACT:
