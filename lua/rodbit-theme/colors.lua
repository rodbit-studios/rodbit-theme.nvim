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
		green = "#4CAF50", -- Softer Green (adjusted from bright green)
	},

	-- Tertiary Colors
	tertiary = {
		teal = "#A0DDE1", -- Light Blue-Green
		dark_gray = "#4D4D4D", -- Dark Gray
		off_white = "#FAFAFA", -- Off-White
		jade = "#00897B", -- For object keys (new)
	},

	-- Additional colors for better contrast and variety
	additional = {
		green = "#66BB6A", -- Softer green (adjusted)
		orange = "#F39C12",
		purple = "#9B59B6",
		dark_green = "#2E7D32", -- Darker green for contrast
		light_pink = "#FFB7C5", -- For special syntax (new)
	},

	-- Semantic colors
	bg = {
		normal = "#121212",
		lighter = "#1E1E1E",
		statusline = "#1E1E1E",
	},

	fg = {
		normal = "#E0E0E0",
		muted = "#B0B0B0", -- Adjusted for better contrast
		comment = "#666666",
		syntax = "#D4D4D4", -- For object keys and special syntax (new)
	},
}

return M
