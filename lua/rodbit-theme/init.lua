local M = {}

local colors = require("rodbit-theme.colors")

function M.setup()
	vim.cmd("highlight clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "rodbit-theme"

	-- Highlight function
	local function hi(group, color)
		local style = color.style and "gui=" .. color.style or "gui=NONE"
		local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
		local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
		vim.cmd(string.format("highlight %s %s %s %s", group, fg, bg, style))
	end

	-- Editor Highlights
	hi("Normal", { fg = colors.secondary.light_gray, bg = colors.bg.normal })
	hi("NormalFloat", { fg = colors.secondary.light_gray, bg = colors.bg.lighter })
	hi("FloatBorder", { fg = colors.primary.blue })
	hi("LineNr", { fg = colors.primary.gray, bg = colors.bg.normal })
	hi("CursorLineNr", { fg = colors.primary.blue, bg = colors.bg.lighter, style = "bold" })
	hi("CursorLine", { bg = colors.bg.lighter })
	hi("SignColumn", { bg = colors.bg.normal })

	-- Syntax Highlights
	hi("Comment", { fg = colors.fg.comment, style = "italic" })
	hi("Constant", { fg = colors.tertiary.teal })
	hi("String", { fg = colors.additional.green })
	hi("Character", { fg = colors.additional.dark_green })
	hi("Number", { fg = colors.secondary.yellow })
	hi("Boolean", { fg = colors.primary.red })
	hi("Float", { fg = colors.secondary.yellow })

	-- [Rest of the highlight definitions]

	-- Popup Menu
	hi("Pmenu", { fg = colors.secondary.light_gray, bg = colors.bg.lighter })
	hi("PmenuSel", { fg = colors.primary.blue, bg = colors.bg.statusline, style = "bold" })
	hi("PmenuSbar", { bg = colors.bg.lighter })
	hi("PmenuThumb", { bg = colors.primary.blue })

	-- Search and Selection
	hi("Search", { fg = colors.bg.normal, bg = colors.secondary.yellow })
	hi("IncSearch", { fg = colors.bg.normal, bg = colors.primary.red })
	hi("Visual", { bg = colors.secondary.dark_blue })

	-- Diagnostic & Git
	hi("DiagnosticError", { fg = colors.primary.red })
	hi("DiagnosticWarn", { fg = colors.secondary.yellow })
	hi("DiagnosticInfo", { fg = colors.primary.blue })
	hi("DiagnosticHint", { fg = colors.tertiary.teal })

	hi("GitSignsAdd", { fg = colors.additional.green })
	hi("GitSignsChange", { fg = colors.primary.blue })
	hi("GitSignsDelete", { fg = colors.primary.red })

	-- Telescope
	hi("TelescopeBorder", { fg = colors.primary.blue })
	hi("TelescopePromptBorder", { fg = colors.primary.blue })
	hi("TelescopeResultsBorder", { fg = colors.primary.blue })
	hi("TelescopePreviewBorder", { fg = colors.primary.blue })

	-- Treesitter Highlights
	hi("@variable", { fg = colors.secondary.light_gray })
	hi("@property", { fg = colors.tertiary.teal })
	hi("@function", { fg = colors.primary.blue, style = "bold" })
	hi("@constructor", { fg = colors.additional.purple })
	hi("@keyword", { fg = colors.primary.red })
	hi("@type", { fg = colors.tertiary.teal })
	hi("@string", { fg = colors.additional.green })
	hi("@comment", { fg = colors.fg.comment, style = "italic" })

	-- LSP
	hi("LspReferenceText", { bg = colors.bg.lighter })
	hi("LspReferenceRead", { bg = colors.bg.lighter })
	hi("LspReferenceWrite", { bg = colors.secondary.dark_blue })
end

function M.load()
	M.setup()
end

return M
