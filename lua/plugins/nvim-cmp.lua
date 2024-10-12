return {
	"nvim-cmp",
	dependencies = {
		"saadparwaiz1/cmp_luasnip",
	},
	opts = function(_, opts)
		opts.sources = opts.sources or {}
		opts.snippet = {
			expand = function(args)
				require("luasnip").lsp_expand(args.body)
			end,
		}
		table.insert(opts.sources, {name = "luasnip" })

		-- key mappings
		opts.mapping = opts.mapping or {}
		opts.mapping["<Tab>"] = {
			i = function()
				return require("luasnip").jumpable(1) and "<Plug>luasnip-jump-next" or "<Tab>"
			end,
			expr = true, silent = true, mode = "i",
		}
		opts.mapping["<Tab>"] = {
			s = function() require("luasnip").jump(1) end,
		}
		opts.mapping["<S-Tab>"] = {
			i = function() require("luasnip").jump(-1) end,
			s = function() require("luasnip").jump(-1) end,
		}
	end,
}
