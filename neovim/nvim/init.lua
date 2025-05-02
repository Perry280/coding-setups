require("setup.options")
require("setup.keymaps")
require("setup.terminal")
-- require("setup.windows")

require("config.lazy")
vim.cmd("colorscheme tokyonight-night")

require("lsp.lspinit")
