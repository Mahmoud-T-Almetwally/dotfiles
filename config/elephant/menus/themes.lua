Name = "themes"
NamePretty = "Themes"
FixedOrder = true
HideFromProviderlist = true
Icon = "󰸌"
Parent = "menu"

function GetEntries()
    return {
        {
            Text = "System theme",
            Icon = "󰸌",
            Shortcut = "s",
            Actions = {
                ["change-theme"] = "walker --theme menus -m menus:system-themes",
            },
        },
        {
            Text = "Waybar theme",
            Icon = "󰸌",
            Shortcut = "w",
            Actions = {
                ["change-waybar"] = "walker --theme menus -m menus:waybar-themes",
            },
        },
        {
            Text = "Fastfetch theme",
            Icon = "󰸌",
            Shortcut = "f",
            Actions = {
                ["change-fastfetch"] = "walker --theme menus -m menus:fastfetch-themes",
            },
        },
        {
            Text = "Starship theme",
            Icon = "󰸌",
            Shortcut = "p",
            Actions = {
                ["change-starship"] = "walker --theme menus -m menus:starship-themes",
            },
        },
        {
            Text = "Cursor theme",
            Icon = "󰸌",
            Shortcut = "c",
            Actions = {
                ["change-cursor"] = "walker --theme menus -m menus:cursor-themes",
            },
        },
    }
end
