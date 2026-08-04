local mainMod = "SUPER"

hl.bind(mainMod .. "+ H", hl.dsp.focus({ direction = "l" }))
hl.bind(mainMod .. "+ J", hl.dsp.focus({ direction = "d" }))
hl.bind(mainMod .. "+ K", hl.dsp.focus({ direction = "u" }))
hl.bind(mainMod .. "+ L", hl.dsp.focus({ direction = "r" }))
hl.bind(mainMod .. "+ SHIFT + H", hl.dsp.window.swap({ direction = "l" }))
hl.bind(mainMod .. "+ SHIFT + J", hl.dsp.window.swap({ direction = "d" }))
hl.bind(mainMod .. "+ SHIFT + K", hl.dsp.window.swap({ direction = "u" }))
hl.bind(mainMod .. "+ SHIFT + L", hl.dsp.window.move({ direction = "r" }))

hl.bind(mainMod .. "+ W", hl.dsp.window.close())
hl.bind(
	mainMod .. "+ SHIFT + F",
	hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle", layout_aware = true })
)
hl.bind(mainMod .. "+ F", hl.dsp.window.float())
hl.bind(mainMod .. "+ P", hl.dsp.window.pin())
hl.bind(
	mainMod .. "+ SHIFT + O",
	hl.dsp.window.fullscreen_state({ internal = 0, client = 2, action = "toggle", layout_aware = true })
)
hl.bind(mainMod .. "+ comma", hl.dsp.layout("togglesplit"), { description = "Toggle split direction" }) -- preserve_split must be enabled for this to work

hl.bind(mainMod .. "+ SHIFT + equal", hl.dsp.layout("splitratio +0.1"))
hl.bind(mainMod .. "+ SHIFT + minus", hl.dsp.layout("splitratio -0.1"))
-- hl.bind(mainMod .. "+ SHIFT + equal", hl.dsp.window.resize({ x = 150, y = 0, relative = true }))
-- hl.bind(mainMod .. "+ equal", hl.dsp.window.resize({ x = 0, y = 150, relative = true }))
-- hl.bind(mainMod .. "+ SHIFT + minus", hl.dsp.window.resize({ x = -150, y = 0, relative = true }))
-- hl.bind(mainMod .. "+ minus", hl.dsp.window.resize({ x = 0, y = -150, relative = true }))
hl.bind(mainMod .. "+ mouse:272", hl.dsp.window.drag(), { mouse = true }) -- lmb
hl.bind(mainMod .. "+ SHIFT + mouse:272", hl.dsp.window.resize(), { mouse = true }) -- lmb
