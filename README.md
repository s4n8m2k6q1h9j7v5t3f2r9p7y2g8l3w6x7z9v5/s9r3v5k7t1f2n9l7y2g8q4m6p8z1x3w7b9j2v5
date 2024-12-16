# SSU UI
library for roblox by 4lpaca (Kncrypt Hub)


![image](https://github.com/user-attachments/assets/6d9b81ce-b959-4117-8d2b-af2544a6843c)


- Resizable
- Minimize
- Maximize

## Document
### Create Library
```lua
local AcrylicLibrary = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/s4n8m2k6q1h9j7v5t3f2r9p7y2g8l3w6x7z9v5/s9r3v5k7t1f2n9l7y2g8q4m6p8z1x3w7b9j2v5/refs/heads/main/Source", true))();
local TextEffect = AcrylicLibrary.TextEffect;
```

### Themes
NOTE: run this code before create window
- Discord
```lua
AcrylicLibrary.Theme:Discord()
```
- Houston
```lua
AcrylicLibrary.Theme:Houston()
```
- Dark
```lua
AcrylicLibrary.Theme:Dark()
```
- Light
```lua
AcrylicLibrary.Theme:Light()
```
- Neverlose
```lua
AcrylicLibrary.Theme:Neverlose()
```
- Catppuccin
```lua
AcrylicLibrary.Theme:Catppuccin()
```
- Matcha
```lua
AcrylicLibrary.Theme:Matcha()
```
- Christmas
```lua
AcrylicLibrary.Theme:Christmas()
```
- Halloween
```lua
AcrylicLibrary.Theme:Halloween()
```
- HightGreen
```lua
AcrylicLibrary.Theme:HightGreen()
```

### Create Window
```lua
local Window = AcrylicLibrary:CreateWindow({
	Title = string.format("Acrylic Library - %s" , TextEffect:AddColor(AcrylicLibrary.Version, AcrylicLibrary.Colors.Hightlight)),
	Logo = "rbxassetid://7733752630",
	Keybind = Enum.KeyCode.LeftControl,
})
```

### Create Tab
```lua
local Tab = Window:AddTab({
	Title = "Example",
	Icon = "library"
})
```

### Create Paragraph
```lua
Tab:AddParagraph({
	Title = "Paragraph",
	Description = AcrylicLibrary:HightlightSource([[
local X = 15;

for I = 1 , X do
	print(I);
end;
]])
})
```

### Create Textbox
```lua
Tab:AddTextbox({
	Title = "Textbox",
	Default = "Hello, World",
	PlaceHolder = "Placeholder",
	Numeric = false,
	Callback = function(value)
		print(value)
	end,
})
```

### Create Button
```lua
Tab:AddButton({
	Title = "Button",
	Tip = "Click Me!",
	Callback = function()
		print('Click!')
	end,
})
```

### Create Toggle
```lua
Tab:AddToggle({
	Title = "Toggle",
	Tip = "Click Me!",
	Default = false,
	Callback = function(value)
		print(value);
	end,
})
```

### Create Slider
```lua
Tab:AddSlider({
	Title = "Slider",
	Tip = "Min: 0\nMax: 100",
	Min = 0,
	Max = 100,
	Default = 50,
	Round = 2,
	Callback = function(value)
		print(value)
	end,
})
```

### Create Textbox
```lua
Tab:AddTextbox({
	Title = "Textbox",
	Default = "Hello, World",
	PlaceHolder = "Placeholder",
	Numeric = false,
	Callback = function(value)
		print(value)
	end,
})
```

### Create Keybind
```lua
Tab:AddKeybind({
	Title = "Keybind",
	Default = Enum.KeyCode.G,
	Tip = "Keybind",
	Callback = function(value)
		print(value)
	end,
})
```

### Create Dropdown
```lua
Tab:AddDropdown({
	Title = "Dropdown",
	Values = {"V1","V2","V3","V4","V5"},
	Default = "V1",
	Multi = false,
	MaxMulti = 4,
	Callback = function(value)
		print(value)
	end,
})
```

## Notification
```lua
Window:Notify({
	Title = "Notification",
	Description = "Description",
	Duration = 5,
})
```

## Watermark
```lua
Window:AddWatermark(string.format("WATERMARK [%s]",TextEffect:AddColor("KNCRYPT HUB - FREEMIUM", AcrylicLibrary.Colors.Hightlight)))
```

## Dialog
```lua
Window:Dialog({
	Title = "Dialog",
	Buttons = {
		{
			Title = "YES",
			Hightlight = true,
			Callback = function()
				print('ye')
			end,
		},
		{
			Title = "NO",
		}
	}
})
```

# Full Example

```lua
local AcrylicLibrary = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/Acrylic/refs/heads/main/source", true))();
local TextEffect = AcrylicLibrary.TextEffect;

local Window = AcrylicLibrary:CreateWindow({
	Title = string.format("Acrylic Library - %s" , TextEffect:AddColor(AcrylicLibrary.Version, AcrylicLibrary.Colors.Hightlight)),
	Logo = "rbxassetid://7733752630",
	Keybind = Enum.KeyCode.LeftControl,
})

Window:AddWatermark(string.format("WATERMARK [%s]",TextEffect:AddColor("KNCRYPT HUB - FREEMIUM", AcrylicLibrary.Colors.Hightlight)))

local Tab = Window:AddTab({
	Title = "Example",
	Icon = "library"
})

Tab:AddButton({
	Title = "Button",
	Tip = "Click Me!",
	Callback = function()
		print('Click!')
	end,
})

Tab:AddToggle({
	Title = "Toggle",
	Tip = "Click Me!",
	Default = false,
	Callback = function(value)
		print(value);
	end,
})

Tab:AddSlider({
	Title = "Slider",
	Tip = "Min: 0\nMax: 100",
	Min = 0,
	Max = 100,
	Default = 50,
	Round = 2,
	Callback = function(value)
		print(value)
	end,
})

Tab:AddTextbox({
	Title = "Textbox",
	Default = "Hello, World",
	PlaceHolder = "Placeholder",
	Numeric = false,
	Callback = function(value)
		print(value)
	end,
})


Tab:AddKeybind({
	Title = "Keybind",
	Default = Enum.KeyCode.G,
	Tip = "Keybind",
	Callback = function(value)
		print(value)
	end,
})

Tab:AddDropdown({
	Title = "Dropdown",
	Values = {"V1","V2","V3","V4","V5"},
	Default = "V1",
	Multi = false,
	MaxMulti = 4,
	Callback = function(value)
		print(value)
	end,
})

Tab:AddParagraph({
	Title = "Paragraph",
	Description = AcrylicLibrary:HightlightSource([[
local X = 15;

for I = 1 , X do
	print(I);
end;
]])
})
```
