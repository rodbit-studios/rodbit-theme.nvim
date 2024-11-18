local M = {}

-- Precompute highlights to avoid runtime computation
local highlights = {}

local function create_highlights(colors, theme)
    -- Flatten nested theme structure
    for category, groups in pairs(theme) do
        for group, color_spec in pairs(groups) do
            highlights[group] = color_spec
        end
    end
    return highlights
end

function M.setup()
    local colors = {
	-- Base colors
	bg = {
		dark = "#272935",
		darker = "#1f2029",
		medium = "#454545",
	},
	fg = {
		light = "#fafafa",
		muted = "#e0e0e0",
		dim = "#c0c0c0",
	},
	-- Semantic colors (muted versions)
	error = {
		bright = "#f87d88",
		muted = "#e57780",
		dim = "#d27178",
	},
	success = {
		bright = "#aef8b0",
		muted = "#9ee6a0",
		dim = "#8ed490",
	},
	warning = {
		bright = "#ffc857",
		muted = "#ebbe54",
		dim = "#d7b351",
	},
	info = {
		bright = "#60d5f6",
		muted = "#58c5e6",
		dim = "#50b5d6",
	},
	purple = {
		bright = "#dd9ff8",
		muted = "#cd95e8",
		dim = "#bd8bd8",
	},
	comment = "#949494",
}

    -- Precompute highlights during setup
    highlights = create_highlights(colors, {
        editor = { ... },
        syntax = { ... },
        ui = { ... },
        git = { ... },
        diagnostic = { ... },
        lang = { ... }
    })

local theme = {
	-- Editor UI
	editor = {
		Normal = { fg = colors.fg.light, bg = colors.bg.dark },
		NonText = { fg = colors.comment, bg = colors.bg.dark },
		CursorLine = { bg = colors.bg.medium },
		LineNr = { fg = colors.comment, bg = colors.bg.dark },
		CursorLineNr = { fg = colors.warning.muted },
		Visual = { bg = colors.bg.medium },
		Search = { bg = colors.purple.muted, fg = colors.fg.light },
		IncSearch = { fg = colors.warning.muted },
		MatchParen = { fg = colors.warning.muted },
	},

	-- Syntax highlighting
	syntax = {
		Comment = { fg = colors.comment },
		SpecialComment = { fg = colors.comment, bg = "NONE" },
		Constant = { fg = colors.success.muted },
		String = { fg = colors.warning.muted },
		Number = { fg = colors.warning.muted },
		Identifier = { fg = colors.error.muted },
		Function = { fg = colors.info.muted },
		Statement = { fg = colors.fg.light },
		Conditional = { fg = colors.warning.muted },
		Repeat = { fg = colors.success.muted },
		Operator = { fg = colors.fg.light },
		Keyword = { fg = colors.success.muted },
		Type = { fg = colors.error.muted },
		Special = { fg = colors.warning.muted },
		SpecialChar = { fg = colors.warning.muted },
		Tag = { fg = colors.warning.muted },
	},

	-- UI Components
	ui = {
		Pmenu = { fg = colors.fg.light, bg = colors.bg.medium },
		PMenuSel = { fg = colors.success.muted },
		StatusLine = { bg = colors.bg.medium, fg = colors.fg.light },
		StatusLineNC = { bg = colors.bg.dark, fg = colors.fg.light },
		TabLine = { fg = colors.comment, bg = colors.bg.medium },
		TabLineFill = { bg = colors.bg.medium },
		VertSplit = { fg = colors.bg.medium, bg = "NONE" },
		SignColumn = { bg = colors.bg.dark },
	},

	-- Git integration
	git = {
		DiffAdd = { fg = colors.success.muted },
		DiffChange = { fg = colors.warning.muted },
		DiffDelete = { fg = colors.error.muted },
		DiffText = { fg = colors.error.muted },
		GitGutterAdd = { fg = colors.success.muted },
		GitGutterChange = { fg = colors.warning.muted },
		GitGutterDelete = { fg = colors.error.muted },
		GitGutterChangeDelete = { fg = colors.error.muted },
	},

	-- Messages and diagnostics
	diagnostic = {
		ErrorMsg = { fg = colors.error.muted },
		WarningMsg = { fg = colors.error.muted },
		Todo = { fg = colors.warning.muted },
	},

	-- Language-specific
	lang = {
		cssIdentifier = { fg = colors.error.muted },
		cssImportant = { fg = colors.error.muted },
		cssIncludeKeyword = { fg = colors.success.muted },
		cssClassName = { fg = colors.purple.muted },
		cssClassNameDot = { fg = colors.purple.muted },
		cssColor = { fg = colors.warning.muted },
		cssAttr = { fg = colors.fg.light },
		markdownLinkText = { fg = colors.purple.muted },
		javaScriptBoolean = { fg = colors.purple.muted },
	},
}




    -- Apply highlights efficiently
    for group, spec in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, spec)
    end
end

function M.load()
    M.setup()
end

return M
