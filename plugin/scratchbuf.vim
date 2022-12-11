if exists('g:loaded_scratchbuf')
  finish
endif

function! scratchbuf#Close() abort
    bdelete
endfunction

function! scratchbuf#Create() abort
    vert new
    vert resize 50
    setlocal buftype=nofile bufhidden=hide noswapfile
    nmap <buffer> <silent>q :call scratchbuf#Close()<CR>
endfunction


command! -nargs=0 Scratchbuf call scratchbuf#Create()

let g:loaded_scratchbuf = 1
