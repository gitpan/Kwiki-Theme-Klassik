package Kwiki::Theme::Klassik;
use strict;
use warnings;
use Kwiki::Theme '-Base';
our $VERSION = '0.10';

const theme_id => 'klassik';
const class_title => 'Klassik Theme';

1;
__DATA__

=head1 NAME 

Kwiki::Theme::Klassik - Kwiki Klassik Theme

=head1 SYNOPSIS

=head1 DESCRIPTION

=head1 AUTHOR

Brian Ingerson <ingy@cpan.org>

=head1 COPYRIGHT

Copyright (c) 2004. Brian Ingerson. All rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

See http://www.perl.com/perl/misc/Artistic.html

=cut
__theme/klassik/css/kwiki.css__
#logo_pane {
    text-align: center;
    width: 90px;
}
    
#group_1 {
    width: 125px;
    float: left;
}
    
#group_2 {
    float: left;
    width: 510px;
    background: #FFF;
    margin-bottom: 20px;
}

#links {
    background:#FFF;
    color:#CCC;
    margin-right:25%;
}
    
div#links div.side span a { display: inline }
div#links div.side span:after { content: " | " }
    
body {
    background:#fff;        
}

h1, h2, h3, h4, h5, h6 {
    margin: 0px;
    padding: 0px;
    font-weight: bold;
}

form.edit input { position: absolute; left: 3% }
textarea { width: auto }
pre {
    background-color: #fff;
    color: black;
    border: none;
}

/* ------------------------------------------------------------------- */

a         {text-decoration: none}
a:link    {color: #d64}
a:visited {color: #864}
a:hover   {text-decoration: underline}
a:active  {text-decoration: underline}
a.empty   {color: gray}
a.private {color: black}

.error    {color: #f00;}

div.side a { display: list-item; list-style-type: none }
div.upper-nav { }
textarea { width: 100% }
__theme/klassik/css/toolbar.css__
div.toolbar a:visited {
    color: #d64;
}
__theme/klassik/template/tt2/html_begin.html__
<!-- BEGIN html_begin.html -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <title>[% site_title %]</title>
[% FOR css_file = hub.css.files -%]
  <link rel="stylesheet" type="text/css" href="[% css_file %]" />
[% END -%]
[% FOR javascript_file = hub.javascript.files -%]
  <script type="text/javascript" src="[% javascript_file %]"></script>
[% END -%]
  <link rel="shortcut icon" href="" />
  <link rel="start" href="index.cgi" title="Home" />
</head>
<body>
<!-- END html_begin.html -->
__theme/klassik/template/tt2/html_end.html__
<!-- BEGIN html_end.html -->
</body>
</html>
<!-- END html_end.html -->
__theme/klassik/template/tt2/kwiki_layout_begin.html__
<!-- BEGIN kwiki_layout_begin.html -->
[% INCLUDE html_begin.html %]
<div id="group_1">
<div id="widgets_pane">
<div id="logo_image">
<img src="[% logo_image %]" align="center" alt="Kwiki Logo" title="[% site_title %]" />
</div>
<br/>
[% hub.widgets.html %]
</div>
</div>

<div id="group_2">
<div id="title_pane">
<h1>[% screen_title || page_id %]</h1>
</div>
<div id="toolbar_pane">
[% hub.toolbar.html %]
[% IF hub.have_plugin('user_name') %]
[% INCLUDE user_name_title.html %]
[% END %]
</div>
<div id="content_pane">
<hr />
<!-- END kwiki_layout_begin.html -->
__theme/klassik/template/tt2/kwiki_layout_end.html__
<!-- BEGIN kwiki_layout_end.html -->
<hr />
</div>
<div id="toolbar_pane_2">
[% USE toolbar %]
[% toolbar.html %]
</div>
</div>
[% INCLUDE html_end.html %]
<!-- END kwiki_layout_end.html -->
__theme/klassik/css/.htaccess__
Allow from all
