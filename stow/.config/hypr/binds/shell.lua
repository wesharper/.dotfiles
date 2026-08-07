local mainMod = "SUPER"
local ipc = "noctalia msg "

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(ipc .. "volume-up"), { repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(ipc .. "volume-down"), { repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(ipc .. "volume-mute"))
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(ipc .. "brightness-up"), { repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(ipc .. "brightness-down"), { repeating = true })

hl.bind(mainMod .. "+ SHIFT + comma", hl.dsp.exec_cmd(ipc .. "settings-toggle"))
hl.bind(mainMod .. "+ Space", hl.dsp.exec_cmd(ipc .. "panel-toggle launcher"))
hl.bind(mainMod .. "+ escape", hl.dsp.exec_cmd(ipc .. "panel-toggle session"))
