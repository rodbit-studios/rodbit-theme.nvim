local M = {}

function M.setup()
	vim.cmd("highlight clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "rodbit-theme"

	-- Color Palette
	local palette = {
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

	-- Highlight function
	local function hi(group, color)
		local style = color.style and "gui=" .. color.style or "gui=NONE"
		local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
		local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
		vim.cmd(string.format("highlight %s %s %s %s", group, fg, bg, style))
	end

	-- Editor Highlights
	hi("Normal", { fg = palette.secondary.light_gray, bg = palette.bg.normal })
	hi("NormalFloat", { fg = palette.secondary.light_gray, bg = palette.bg.lighter })
	hi("FloatBorder", { fg = palette.primary.blue })
	hi("LineNr", { fg = palette.primary.gray, bg = palette.bg.normal })
	hi("CursorLineNr", { fg = palette.primary.blue, bg = palette.bg.lighter, style = "bold" })
	hi("CursorLine", { bg = palette.bg.lighter })
	hi("SignColumn", { bg = palette.bg.normal })

	-- Syntax Highlights
	hi("Comment", { fg = palette.fg.comment, style = "italic" })
	hi("Constant", { fg = palette.tertiary.teal })
	hi("String", { fg = palette.additional.green })
	hi("Character", { fg = palette.additional.dark_green })
	hi("Number", { fg = palette.secondary.yellow })
	hi("Boolean", { fg = palette.primary.red })
	hi("Float", { fg = palette.secondary.yellow })

	-- [Rest of the highlight definitions]

	-- Popup Menu
	hi("Pmenu", { fg = palette.secondary.light_gray, bg = palette.bg.lighter })
	hi("PmenuSel", { fg = palette.primary.blue, bg = palette.bg.statusline, style = "bold" })
	hi("PmenuSbar", { bg = palette.bg.lighter })
	hi("PmenuThumb", { bg = palette.primary.blue })

	-- Search and Selection
	hi("Search", { fg = palette.bg.normal, bg = palette.secondary.yellow })
	hi("IncSearch", { fg = palette.bg.normal, bg = palette.primary.red })
	hi("Visual", { bg = palette.secondary.dark_blue })

	-- Diagnostic & Git
	hi("DiagnosticError", { fg = palette.primary.red })
	hi("DiagnosticWarn", { fg = palette.secondary.yellow })
	hi("DiagnosticInfo", { fg = palette.primary.blue })
	hi("DiagnosticHint", { fg = palette.tertiary.teal })

	hi("GitSignsAdd", { fg = palette.additional.green })
	hi("GitSignsChange", { fg = palette.primary.blue })
	hi("GitSignsDelete", { fg = palette.primary.red })

	-- Telescope
	hi("TelescopeBorder", { fg = palette.primary.blue })
	hi("TelescopePromptBorder", { fg = palette.primary.blue })
	hi("TelescopeResultsBorder", { fg = palette.primary.blue })
	hi("TelescopePreviewBorder", { fg = palette.primary.blue })

	-- Treesitter Highlights
	hi("@variable", { fg = palette.secondary.light_gray })
	hi("@property", { fg = palette.tertiary.teal })
	hi("@function", { fg = palette.primary.blue, style = "bold" })
	hi("@constructor", { fg = palette.additional.purple })
	hi("@keyword", { fg = palette.primary.red })
	hi("@type", { fg = palette.tertiary.teal })
	hi("@string", { fg = palette.additional.green })
	hi("@comment", { fg = palette.fg.comment, style = "italic" })

	-- LSP
	hi("LspReferenceText", { bg = palette.bg.lighter })
	hi("LspReferenceRead", { bg = palette.bg.lighter })
	hi("LspReferenceWrite", { bg = palette.secondary.dark_blue })
end

function M.load()
	M.setup()
end

return M
