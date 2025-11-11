return {
  {
    "conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      opts.formatters_by_ft.javascript = { "prettierd" }
      opts.formatters_by_ft.typescript = { "prettierd" }
      opts.formatters_by_ft.javascriptreact = { "prettierd" }
      opts.formatters_by_ft.typescriptreact = { "prettierd" }
      opts.formatters_by_ft.json = { "prettierd" }
      opts.formatters_by_ft.html = { "prettierd" }
      opts.formatters_by_ft.css = { "prettierd" }
      opts.formatters_by_ft.scss = { "prettierd" }
      opts.formatters_by_ft.markdown = { "prettierd" }
      opts.formatters_by_ft.php = { "php_cs_fixer" }
      return opts
    end,
  },
}
