local M = {}

M.palette = {
	-- Primary Colors
	primary = {
		red = "#E74C57", -- Bright Red
		blue = "#0288B0", -- Blue
		bg_dark = "#1E1E1E", -- Very Dark Gray
		gray = "#999999", -- Medium Gray
	},

	-- Secondary Colors
	secondary = {
		dark_blue = "#036B86", -- Dark Blue
		light_gray = "#E0E0E0", -- Light Gray
		yellow = "#FFC857", -- Golden Yellow
	},

	-- Tertiary Colors
	tertiary = {
		teal = "#A0DDE1", -- Light Blue-Green
		dark_gray = "#4D4D4D", -- Dark Gray
		off_white = "#FAFAFA", -- Off-White
	},

	-- Additional colors for better contrast and variety
	additional = {
		green = "#2ECC71",
		orange = "#F39C12",
		purple = "#9B59B6",
		dark_green = "#27AE60",
	},

	-- Semantic colors
	bg = {
		normal = "#121212",
		lighter = "#1E1E1E",
		statusline = "#1E1E1E",
	},

	fg = {
		normal = "#E0E0E0",
		muted = "#999999",
		comment = "#666666",
	},
}

return M
