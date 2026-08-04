local mainMod = "SUPER"
local ipc = "noctalia msg "

-- windows
hl.bind(mainMod .. "+ H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. "+ J", hl.dsp.focus({ direction = "down" }))
hl.bind(mainMod .. "+ K", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. "+ L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. "+ SHIFT + H", hl.dsp.window.swap({ direction = "left" }))
hl.bind(mainMod .. "+ SHIFT + J", hl.dsp.window.swap({ direction = "down" }))
hl.bind(mainMod .. "+ SHIFT + K", hl.dsp.window.swap({ direction = "up" }))
hl.bind(mainMod .. "+ SHIFT + L", hl.dsp.window.move({ direction = "right" }))

hl.bind(mainMod .. "+ W", hl.dsp.window.close())
hl.bind(
	mainMod .. "+ SHIFT + F",
	hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle", layout_aware = true })
)
hl.bind(mainMod .. "+ F", hl.dsp.window.float())
hl.bind(mainMod .. "+ comma", hl.dsp.layout("togglesplit")) -- preserve_split must be enabled for this to work
hl.bind(mainMod .. "+ SHIFT + equal", hl.dsp.window.resize({ x = 150, y = 0, relative = true }))
hl.bind(mainMod .. "+ equal", hl.dsp.window.resize({ x = 0, y = 150, relative = true }))
hl.bind(mainMod .. "+ SHIFT + minus", hl.dsp.window.resize({ x = -150, y = 0, relative = true }))
hl.bind(mainMod .. "+ minus", hl.dsp.window.resize({ x = 0, y = -150, relative = true }))
hl.bind(mainMod .. "+ mouse:272", hl.dsp.window.drag(), { mouse = true }) -- lmb
hl.bind(mainMod .. "+ SHIFT + mouse:272", hl.dsp.window.resize(), { mouse = true }) -- lmb

-- workspaces
hl.bind(mainMod .. "+ 1", hl.dsp.focus({ workspace = "1" }))
hl.bind(mainMod .. "+ 2", hl.dsp.focus({ workspace = "2" }))
hl.bind(mainMod .. "+ 3", hl.dsp.focus({ workspace = "3" }))
hl.bind(mainMod .. "+ 4", hl.dsp.focus({ workspace = "4" }))
hl.bind(mainMod .. "+ 5", hl.dsp.focus({ workspace = "5" }))
hl.bind(mainMod .. "+ 6", hl.dsp.focus({ workspace = "6" }))
hl.bind(mainMod .. "+ 7", hl.dsp.focus({ workspace = "7" }))
hl.bind(mainMod .. "+ 8", hl.dsp.focus({ workspace = "8" }))
hl.bind(mainMod .. "+ 9", hl.dsp.focus({ workspace = "9" }))
hl.bind(mainMod .. "+ SHIFT + 1", hl.dsp.window.move({ workspace = "1" }))
hl.bind(mainMod .. "+ SHIFT + 2", hl.dsp.window.move({ workspace = "2" }))
hl.bind(mainMod .. "+ SHIFT + 3", hl.dsp.window.move({ workspace = "3" }))
hl.bind(mainMod .. "+ SHIFT + 4", hl.dsp.window.move({ workspace = "4" }))
hl.bind(mainMod .. "+ SHIFT + 5", hl.dsp.window.move({ workspace = "5" }))
hl.bind(mainMod .. "+ SHIFT + 6", hl.dsp.window.move({ workspace = "6" }))
hl.bind(mainMod .. "+ SHIFT + 7", hl.dsp.window.move({ workspace = "7" }))
hl.bind(mainMod .. "+ SHIFT + 8", hl.dsp.window.move({ workspace = "8" }))
hl.bind(mainMod .. "+ SHIFT + 9", hl.dsp.window.move({ workspace = "9" }))

-- applications
hl.bind(mainMod .. "+ RETURN", hl.dsp.exec_cmd("uwsm app -T"))

-- special keys
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(ipc .. "volume-up"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(ipc .. "volume-down"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(ipc .. "volume-mute"))
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(ipc .. "brightness-up"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(ipc .. "brightness-down"))

-- noctalia/shell
hl.bind(mainMod .. "+ Space", hl.dsp.exec_cmd(ipc .. "panel-toggle launcher"))
hl.bind(mainMod .. "+ escape", hl.dsp.exec_cmd(ipc .. "session lock-and-suspend"))
