#!/usr/bin/perl
# fbmenugen - schema file

=for comment

    item:	add an item inside the menu	{item => ["command", "label", "icon"]},
    cat:	add a category inside the menu	{cat => ["name", "label", "icon"]},
    sep:	horizontal line separator	{sep => undef}, {sep => "label"},
    raw:	any valid Fluxbox menu entry	{raw => q(...)},
    begin_cat:	begin of a category		{begin_cat => ["name", "icon"]},
    end_cat:	end of a category		{end_cat => undef},
    fbmenugen:	generic menu settings		{fbmenugen => ["label", "icon"]},
    fluxbox:	the default Fluxbox config menu	{fluxbox => ["label", "icon"]},
    exit:	default "Exit" action		{exit => ["label", "icon"]},

=cut

# NOTE:
#    * Keys and values are case sensitive. Keep all keys lowercase.
#    * ICON can be a either a direct path to an icon or a valid icon name
#    * Category names are case insensitive. (X-XFCE and x_xfce are equivalent)
#
#						LABEL			ICON
#  {begin_cat =>				['My category',		'cat-icon']},
#	... some items ...
#  {end_cat => undef},

require "$ENV{HOME}/.config/fbmenugen/config.pl";

our $SCHEMA = [
{item =>	['lxterminal',			'Terminal',		'terminal']},
{item =>	['pcmanfm',			'File Manager',		'file-manager']},
{item =>	['gksu pcmanfm',		'Root File Manager',	'root-file-manager']},
{item =>	['palemoon',			'Web Browser',		'web-browser']},
{item =>	['claws-mail',			'Mail Client',		'mail-client']},
{begin_cat =>					['Screenshot',		]},
  {item => 	['fb-screenshot -d',		'full screen',		]},
  {item => 	['fb-screenshot -w',		'active window',	]},
  {item => 	['fb-screenshot -s',		'select area',		]},
{end_cat => undef},
{item =>	['fbrun -font cantarell-11',	'Command line',		'system-run']},

{sep => 'undef'},

{cat =>		['office',			'Office',		'applications-office']},
{cat =>		['network',			'Network',		'applications-internet']},
{cat =>		['graphics',			'Graphics',		'applications-graphics']},
{cat =>		['audiovideo',			'Multimedia',		'applications-multimedia']},
{cat =>		['education',			'Education',		'applications-science']},
{cat =>		['utility',			'Accessories',		'applications-utilities']},
{cat =>		['settings',			'Settings',		'applications-accessories']},
{cat =>		['system',			'System',		'applications-system']},
# {cat =>	['other',			'Other',		'applications-other']},
# {cat =>	['development',			'Development',		'applications-development']},
# {cat =>	['qt',				'QT Applications',	'qtlogo']},
# {cat =>	['gtk',				'GTK Applications',	'gnome-applications']},
# {cat =>	['x_xfce',			'XFCE Applications',	'applications-other']},
# {cat =>	['gnome',			'GNOME Applications',	'gnome-applications']},
# {cat =>	['consoleonly',			'CLI Applications',	'applications-utilities']},

{sep => 'undef'},

{begin_cat =>					['Fluxbox menu',	]},
  {raw => q([config] (Behaviour))},
  {raw => q([workspaces] (Workspace List))},
  {raw => q([commanddialog] (Fluxbox Command))},
  {raw => q([reconfig] (Reload config))},
  {raw => q([restart] (Restart))},
{end_cat => undef},
{begin_cat =>					['Menu Generator',	]},
  {fbmenugen =>					['Fbmenugen',		'preferences-desktop']},
  {regenerate =>				['Regenerate menu',     'gtk-refresh']},
  {item =>	['restore_menu',		'Restore original menu',]},
{end_cat => undef},

{sep => 'undef'},

{item =>	['oblogout',			'Exit',			'shutdown/restart']}
]
