" vimwiki
let g:vimwiki_folding='list'
let main_wiki = {}
let main_wiki.path = '$HOME/vimwiki-main'
let main_wiki.path_html = '$HOME/vimwiki-main-html'
let main_wiki.name = 'Tech'
let home_wiki = {}
let home_wiki.path = '$HOME/vimwiki-home'
let home_wiki.path_html = '$HOME/vimwiki-home-html'
let home_wiki.name = 'Home'
let g:vimwiki_list = [ main_wiki,home_wiki ]

