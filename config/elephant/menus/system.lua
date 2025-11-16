Name = "system"
NamePretty = "System"
FixedOrder = true
HideFromProviderlist = true
Icon = ""
Parent = "menu"

function GetEntries()
	return {
		{
			Text = "Lock",
			Icon = "",
            Shortcut = "k",
			Actions = {
				["lock"] = "pidof hyprlock || hyprlock &",
			},
		},
		{
			Text = "Suspend",
			Icon = "󰤄",
            Shortcut = "d",
			Actions = {
				["suspend"] = "systemctl suspend",
			},
		},
		{
			Text = "Relaunch",
			Icon = "",
            Shortcut = "l",
			Actions = {
				["relaunch"] = "uwsm stop",
			},
		},
		{
			Text = "Restart",
			Icon = "󰜉",
            Shortcut = "r",
			Actions = {
				["restart"] = "systemctl reboot",
			},
		},
		{
			Text = "Shutdown",
			Icon = "󰐥",
            Shortcut = "s",
			Actions = {
				["shutdown"] = "systemctl poweroff",
			},
		},
	}
end
