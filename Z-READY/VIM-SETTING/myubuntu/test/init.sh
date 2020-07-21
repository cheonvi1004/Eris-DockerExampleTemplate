#!/usr/bin/env bash

/usr/sbin/sshd -D
/usr/sbin/apache2ctl -D FOREGROUND

# echo 'if has(\"syntax\")\n	syntax on\nendif\n\nset autoindent\nset cindent\n\nset nu\n\nset ts=4\nset shiftwidth=4\n\nset laststatus=2\nset statusline=\\ %<%l:%v\\ [%P]%=%a\\ %h%m%r\\ %F\\\n\nset autoread\nset paste\nset cindent         \" C언어 자동 들여쓰기\nset showmatch       \" 매치되는 괄호의 반대쪽을 보여줌\nset autoindent      \" 자동 인덴트 세팅\nset cindent         \" 자동 인덴트 세팅\nset shiftwidth=4    \" 자동 인덴트할 때 너비\n\nset rtp+=~/.vim/bundle/Vundle.vim\ncall vundle#begin()\nPlugin \'VundleVim/Vundle.vim\'\nPlugin \'fatih/vim-go\'\nPlugin \'scrooloose/nerdtree\'\nPlugin \'vim-airline/vim-airline\'\nPlugin \'vim-gitgutter\'\nPlugin \'townk/vim-autoclose\'\nPlugin \'maksimr/vim-jsbeautify\'\nPlugin \'leafOfTree/vim-vue-plugin\'\nPlugin \'AutoComplPop\'\nPlugin \'prettier/vim-prettier\', { \'do\': \'yarn install\' }\ncall vundle#end()\n\nfiletype plugin on\n\nnmap nerd :NERDTreeToggle<CR>\n\" https://vim.fandom.com/wiki/Get_the_name_of_the_current_fil\n\" 위 사이트 참조했음\n\n\".vimrc\nmap cf :call JsBeautify()<cr>\n\" or\nautocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>\n\" for json\nautocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>\n\" for jsx\nautocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>\n\" for html\nautocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>\n\" for css or scss\nautocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>\n\n\" prettier 저장할 때 자동으로 동작하기\nlet g:prettier#autoformat = 0\nautocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync\n\n\" prettier 동작시 탭크기\nlet g:prettier#config#tab_width = 4\n'