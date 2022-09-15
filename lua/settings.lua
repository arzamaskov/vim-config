local options = {
  langmap       = 'ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz',
  clipboard     = "unnamed,unnamedplus",    -- Copy-pase between vim and everything else
  smartindent   = true,                     -- Makes indenting smart
  writebackup	= false,                    -- Not needed
  swapfile      = false,                    -- Swap not needed
  expandtab     = true,                     -- Use spaces instead tabs
  tabstop       = 4,                        -- Insert 4 spaces for a tab
  softtabstop   = 4,                        -- Insert 4 spaces for a tab
  shiftwidth    = 4,                        -- Change a number of space characeters inseted for indentation
  number        = true,                     -- Shows current line number
  termguicolors = true,                     -- Correct terminal colors
  cmdheight     = 1,                        -- Give more space for displaying messages
  completeopt   = "menu,menuone,noselect",  -- Better autocompletion
  cursorline    = true,                     -- Highlight of current line
  ignorecase    = true,                     -- Needed for smartcase
  lazyredraw    = true,                     -- Makes macros faster & prevent errors in complicated mappings
  mouse         = "a",                      -- Enable mouse
  scrolloff     = 4,                        -- Always keep space when scrolling to bottom/top edge
  signcolumn    = "yes:1",                  -- Add extra sign column next to line number
  smartcase     = true,                     -- Uses case in search
  smarttab      = true,                     -- Makes tabbing smarter will realize you have 2 vs 4
  splitright    = true,                     -- Vertical splits will automatically be to the right
  timeoutlen    = 200,                      -- Faster completion (cannot be lower than 200 because then commenting doesn't work)
  undofile      = true,                     -- Sets undo to file
  updatetime    = 100,                      -- Faster completion
  viminfo       = "'1000",                  -- Increase the size of file history
  wrap          = true,                     -- Display long lines as just one line
}

local globals = {
  mapleader     = ',',                      -- Map leader key to SPC
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

for k, v in pairs(globals) do
	vim.g[k] = v
end
