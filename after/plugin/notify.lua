local notify = require("notify")

notify.setup({
	notify._config(),
	background_color="#000000",
	fps=30
})
notify("Welcome to NeoVIm");

