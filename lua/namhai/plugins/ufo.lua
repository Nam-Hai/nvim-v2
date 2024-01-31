return {
	"kevinhwang91/nvim-ufo",
	dependencies = {
		"kevinhwang91/promise-async",
	},
	config = function()
		-- local ufo = require("ufo")
		--
		-- ufo.setup({
		-- 	open_fold_hl_timeout = 150,
		-- 	close_fold_kinds = { "imports" },
		-- 	provider_selector = function(bufnr, filetype, buftype)
		-- 		return { "treesitter", "indent" }
		-- 	end,
		-- 	preview = {
		-- 		win_config = {
		-- 			border = { "", "-", "", "", "", "-", "", "" },
		-- 			winhighlight = "Normal:Folded",
		-- 			winblend = 1,
		-- 		},
		-- 		mappings = {
		-- 			scrollU = "<C-u>",
		-- 			scrollD = "<C-d>",
		-- 			jumpTop = "[",
		-- 			jumpBot = "]",
		-- 		},
		-- 	},
		-- })
		--
		-- vim.keymap.set("n", "zR", require("ufo").openAllFolds)
		-- vim.keymap.set("n", "zM", require("ufo").closeAllFolds)
		-- vim.keymap.set("n", "zr", require("ufo").openFoldsExceptKinds)
		-- vim.keymap.set("n", "zm", require("ufo").closeFoldsWith)
		-- vim.keymap.set("n", "K", function()
		-- 	local winid = require("ufo").peekFoldedLinesUnderCursor()
		-- 	if not winid then
		-- 		vim.lsp.buf.hover()
		-- 	end
		-- end)
	end,
}
