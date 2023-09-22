local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

lsp_zero.preset("recommended")

require("mason").setup({})
local mason_lspconfig = require('mason-lspconfig')

mason_lspconfig.setup({
  ensure_installed = {'tsserver', 'rust_analyzer', 'lua_ls'},
  handlers = {
    lsp_zero.default_setup,
    tsserver = function()
      require('lspconfig').tsserver.setup({
        settings = {
          completions = {
            completeFunctionCalls = true
          },
          implicitProjectConfiguration = {
            checkJs = true
          }
        }
      })
    end,
  },
})
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp = require("cmp")
-- cmp.event:on(
--   'confirm_done',
--   cmp_autopairs.on_confirm_done()
-- )
cmp.setup({
  window = {
    completion = {
      winhighlight = "Normal:NormalNC,FloatBorder:NormalNC,Search:None",
      border = "rounded"
    },
    documentation = {
      winhighlight = "Normal:NormalNC,FloatBorder:NormalNC,Search:None"
    }
  },
  mapping = {
--    ["<Tab>"] = cmp.mapping(function(fallback)
--      -- This little snippet will confirm with tab, and if no entry is selected, will confirm the first item
--      if cmp.visible() then
--        local entry = cmp.get_selected_entry()
--        if not entry then
--          cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
--        else
--          cmp.confirm()
--        end
--      else
--        fallback()
--      end
--    end, {"i","s","c",}),
    ...
  },
})

local cmp_select = {behavior = cmp.SelectBehavior.Select}
lsp_zero.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({select = true}),
  ['<C-Spaces>'] = cmp.mapping.complete(),

})

