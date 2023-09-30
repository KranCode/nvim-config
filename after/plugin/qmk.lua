local qmk = require('qmk')

local conf = { 
	name = 'LAYOUT_moonlander',
layout = {
	'_ x x x x x x x _ x x x x x x x _',
	'_ x x x x x x x _ x x x x x x x _',
	'_ x x x x x x x _ x x x x x x x _',
	'_ x x x x x x _ _ _ x x x x x x _',
	'_ x x x x x _ x _ x _ x x x x x _',
	'_ _ _ _ _ x x x _ x x x _ _ _ _ _',
},
auto_format_pattern = nil,
comment_preview = {
	keymap_overrides = {
		HERE_BE_A_LONG_KEY = 'Magic', -- replace any long key codes
	},
}
}
qmk.setup(conf)
