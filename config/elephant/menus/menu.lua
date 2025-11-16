Name = "menu"
NamePretty = "Menu"
FixedOrder = true
HideFromProviderlist = true
Description = "Menu"

function GetEntries()
	return {
		{
			Text = "Update",
			Icon = "",
			Shortcut = "u",
			Actions = {
				["update"] = "ghostty --class=local.floating -e update-perform",
			},
		},
		{
			Text = "Install package",
			Icon = "󰣇",
			Shortcut = "i",
			Actions = {
				["manage-pkg"] = "ghostty --class=local.floating -e pkg-install",
			},
		},
		{
			Text = "Remove package",
			Icon = "󰭌",
			Shortcut = "r",
			Actions = {
				["manage-pkg"] = "ghostty --class=local.floating -e pkg-remove",
			},
		},
		{
			Text = "Change themes",
			Icon = "󰸌",
			Shortcut = "t",
			Actions = {
				["change-themes"] = "walker -t menus -m menus:themes",
			},
		},
		{
			Text = "Next background",
			Icon = "",
			Shortcut = "b",
			Actions = {
				["change-bg"] = "theme-bg-next",
			},
		},
		{
			Text = "Capture",
			Icon = "",
			Shortcut = "c",
			Actions = {
				["capture"] = "walker -t menus -m menus:capture",
			},
		},
		{
			Text = "Setup",
			Icon = "󰉉",
			Shortcut = "s",
			Actions = {
				["setup"] = "walker -t menus -m menus:setup",
			},
		},
		{
			Text = "Tools",
			Icon = "",
			Shortcut = "o",
			Actions = {
				["tools"] = "walker -t menus -m menus:tools",
			},
		},
		{
			Text = "Keybindings",
			Icon = "",
			Shortcut = "k",
			Actions = {
				["keybindings"] = "walker -t menus -m menus:keybindings",
			},
		},
		{
			Text = "System",
			Icon = "󰐥",
			Shortcut = "y",
			Actions = {
				["system"] = "walker -t menus -m menus:system",
			},
		},
	}
end
