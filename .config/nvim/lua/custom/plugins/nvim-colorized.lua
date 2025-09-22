return {
  -- Add this inside your `plugins` table in kickstart.lua
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup({
        '*', -- Highlight all files
        css = { rgb_fn = true }, -- Enable parsing `rgb(...)` in CSS/SCSS
        html = { names = true }, -- Enable parsing #FFF and color names in HTML
      }, {
        mode = 'background', -- Show colors as background
      })
    end,
  },
}
