# Copyright (c) 2010 Aldo Cortesi
# Copyright (c) 2010, 2014 dequis
# Copyright (c) 2012 Randall Ma
# Copyright (c) 2012-2014 Tycho Andersen
# Copyright (c) 2012 Craig Barnes
# Copyright (c) 2013 horsik
# Copyright (c) 2013 Tao Sauvage
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

#!/usr/bin/python3
from libqtile.config import Key, Screen, Group, Drag, Click
from libqtile.command import lazy
from libqtile import layout, bar, widget

mod = "mod4"

keys = [
    # Switch between windows in current stack pane
    Key(
        [mod], "k",
        lazy.layout.down()
    ),
    Key(
        [mod], "j",
        lazy.layout.up()
    ),

    # Move windows up or down in current stack
    Key(
        [mod, "control"], "k",
        lazy.layout.shuffle_down()
    ),
    Key(
        [mod, "control"], "j",
        lazy.layout.shuffle_up()
    ),

    # Switch window focus to other pane(s) of stack
    Key(
        [mod], "space",
        lazy.layout.next()
    ),

    # Swap panes of split stack
    Key(
        [mod, "shift"], "space",
        lazy.layout.rotate()
    ),

    # Toggle between split and unsplit sides of stack.
    # Split = all windows displayed
    # Unsplit = 1 window displayed, like Max layout, but still with
    # multiple stack panes
    Key(
        [mod, "shift"], "Return",
        lazy.layout.toggle_split()
    ),
    Key([mod], "Return", lazy.spawn("terminator")),
    # yay for rofi
    Key([mod], "d", lazy.spawn("rofi -show run -fuzzy -font \"go mono 14\"")),

    # Toggle between different layouts as defined below
    Key([mod], "Tab", lazy.next_layout()),
    Key([mod, "shift"], "q", lazy.window.kill()),

    Key([mod, "control"], "r", lazy.restart()),
    Key([mod, "control"], "q", lazy.shutdown()),

    # taken from https://github.com/qtile/qtile-examples/blob/master/arkchar.py
    # Change the volume if your keyboard has special volume keys.
    Key(
        [], "XF86AudioRaiseVolume",
        lazy.spawn("amixer -c 0 -q set Master 2dB+")
    ),
    Key(
        [], "XF86AudioLowerVolume",
        lazy.spawn("amixer -c 0 -q set Master 2dB-")
    ),
    Key(
        [], "XF86AudioMute",
        lazy.spawn("amixer -c 0 -q set Master toggle")
    ),

    # brightness stuff
    Key(
        [], "XF86MonBrightnessUp",
        lazy.spawn("xbacklight -inc 10")
    ),
    Key(
        [], "XF86MonBrightnessDown",
        lazy.spawn("xbacklight -dec 10")
    ),

    # Also allow changing volume the old fashioned way.
    Key([mod], "equal", lazy.spawn("amixer -c 0 -q set Master 2dB+")),
    Key([mod], "minus", lazy.spawn("amixer -c 0 -q set Master 2dB-")),
]

groups = [Group(str(i)) for i in range(9)]

for i in groups:
    # mod1 + letter of group = switch to group
    keys.append(
        Key([mod], i.name, lazy.group[i.name].toscreen())
    )

    # mod1 + shift + letter of group = switch to & move focused window to group
    keys.append(
        Key([mod, "shift"], i.name, lazy.window.togroup(i.name))
    )

layouts = [
    layout.Max(),
    layout.Stack(num_stacks=2)
]

widget_defaults = dict(
    font='Go Mono',
    fontsize=14,
    padding=3,
)

screens = [
    Screen(
        bottom=bar.Bar(
            [
                widget.GroupBox(),
                widget.Sep(),
                widget.WindowName(),
                widget.CPUGraph(samples=50, line_width=1, width=50,
                                graph_color='FF2020',
                                fill_color='C01010'),
                widget.MemoryGraph(samples=50, line_width=1, width=50,
                                graph_color='0066FF',
                                fill_color='001188'),
                widget.NetGraph(samples=50, line_width=1,
                                width=50, interface="eth0",
                                graph_color='22FF44',
                                fill_color='11AA11'),
                widget.Battery(),
                widget.Systray(),
                widget.Clock(format='%Y-%m-%d %a %I:%M %p'),
            ],
            24,
        ),
    ),
]

# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(),
        start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(),
        start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front())
]

dgroups_key_binder = None
dgroups_app_rules = []
main = None
follow_mouse_focus = True
bring_front_click = True
cursor_warp = False
floating_layout = layout.Floating()
auto_fullscreen = True
focus_on_window_activation = "smart"

# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, github issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "LG3D"
