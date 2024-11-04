if vim.g.colors_name then
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
end

vim.g.colors_name = "rodbit-theme"

-- Load the setup function from the init.lua file
local rodbit_theme = require("rodbit-theme")
rodbit_theme.setup()
