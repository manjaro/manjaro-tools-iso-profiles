#!/usr/bin/perl

# fbmenugen - schema file

=for comment

    item:      add an item inside the menu               {item => ["command", "label", "icon"]},
    cat:       add a category inside the menu             {cat => ["name", "label", "icon"]},
    sep:       horizontal line separator                  {sep => undef}, {sep => "label"},
    raw:       any valid Fluxbox menu entry               {raw => q(...)},
    begin_cat: begin of a category                  {begin_cat => ["name", "icon"]},
    end_cat:   end of a category                      {end_cat => undef},
    fbmenugen: generic menu settings                {fbmenugen => ["label", "icon"]},
    fluxbox:   the default Fluxbox config menu        {fluxbox => ["label", "icon"]},
    exit:      default "Exit" action                     {exit => ["label", "icon"]},

=cut

# NOTE:
#    * Keys and values are case sensitive. Keep all keys lowercase.
#    * ICON can be a either a direct path to an icon or a valid icon name
#    * Category names are case insensitive. (X-XFCE and x_xfce are equivalent)

require "$ENV{HOME}/.config/fbmenugen/config.pl";

our $SCHEMA = [
    #COMMAND				LABEL			ICON
    {item => ['pcmanfm',		'File Manager',		'file-manager']},
    {item => ['palemoon',		'Web Browser',		'web-browser']},
    {item => ['claws-mail',		'Mail Client',		'mail-client']},
    {item => ['fbrun -font cantarell-11','Run command',		'system-run']},
    {item => ['lxterminal',		'Terminal',		'terminal']},
    {item => ['gksu lxterminal',	'Root Terminal',	'root-terminal']},
    {item => ['gksu pcmanfm',		'File Manager Root',	'root-file-manager']},

    {sep => 'undef'},

    #          NAME            LABEL                ICON
    {cat => ['education',   'Education',   'applications-science']},
    {cat => ['game',        'Games',       'applications-games']},
    {cat => ['graphics',    'Graphics',    'applications-graphics']},
    {cat => ['audiovideo',  'Multimedia',  'applications-multimedia']},
    {cat => ['network',     'Network',     'applications-internet']},
    {cat => ['office',      'Office',      'applications-office']},
    {cat => ['other',       'Other',       'applications-other']},

    {sep => 'undef'},

    {cat => ['utility',     'Accessories', 'applications-utilities']},
    {cat => ['system',      'System',      'applications-system']},
    {cat => ['settings',    'Settings',    'applications-accessories']},
    {cat => ['development', 'Development', 'applications-development']},

    #{cat => ['qt',          'QT Applications',    'qtlogo']},
    #{cat => ['gtk',         'GTK Applications',   'gnome-applications']},
    #{cat => ['x_xfce',      'XFCE Applications',  'applications-other']},
    #{cat => ['gnome',       'GNOME Applications', 'gnome-applications']},
    #{cat => ['consoleonly', 'CLI Applications',   'applications-utilities']},

    #                  LABEL          ICON
    #{begin_cat => ['My category',  'cat-icon']},
    #             ... some items ...
    #{end_cat   => undef},

    {sep => 'undef'},

    #                  LABEL               ICON
    {fluxbox    => ['Fluxbox menu', 'preferences-desktop']},
    {fbmenugen  => ['Fbmenugen',    'preferences-desktop']},
    {regenerate => ['Regenerate menu',     'gtk-refresh']},

    {sep       => undef},

    # This options uses the default Fluxbox action "Exit"
    {item	=> ['oblogout',	'exit', 'shutdown/restart']}
]
