local present = pcall(require, "catppuccin")
if not present then
  return
end

-- vim.cmd([[
--   set background=light
--   colorscheme enfocado
-- ]])

vim.cmd([[
  set laststatus=2
  set statusline=
  set statusline+=%F
  set statusline+=\ 
  set statusline+=%r
  set statusline+=\ 
  set statusline+=%m
  set statusline+=%=
  set statusline+=%{b:gitbranch}
  set statusline+=%y
  set statusline+=\ 
  set statusline+=%{strlen(&fenc)?&fenc:'none'}
  set statusline+=\ 
  set statusline+=%l
  set statusline+=:
  set statusline+=%c
  set statusline+=/
  set statusline+=%L
  set statusline+=\ 
  set statusline+=%P

  function! StatuslineGitBranch()
    let b:gitbranch=""
    if &modifiable
      try
        let l:dir=expand('%:p:h')
        let l:gitrevparse = system("git -C ".l:dir." rev-parse --abbrev-ref HEAD")
        if !v:shell_error
          let b:gitbranch="(".substitute(l:gitrevparse, '\n', '', 'g').") "
        endif
      catch
      endtry
    endif
  endfunction

  augroup GetGitBranch
    autocmd!
    autocmd VimEnter,WinEnter,BufEnter * call StatuslineGitBranch()
  augroup END
]])
