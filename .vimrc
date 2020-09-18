" 設定
" ----------------

" 文字コードを UFT-8 に設定
set fenc=utf-8


" 見た目
" ----------------

" 行番号を表示
set number

" 対応する括弧を表示
set showmatch

" ステータスラインを常に表示
set laststatus=2

" 入力中のコマンドをステータスに表示
set showcmd

" シンタックスハイライトの有効化
syntax enable

" ダークモードの使用
set background=dark

" ビープ音を可視化
set visualbell


" インデント
" ----------------

" Tab を半角スペースに変更
set expandtab

" 改行時に自動インデント
set autoindent

" スマートインデントの使用
set smartindent

" Tab 文字の幅
set tabstop=2

" vim が挿入するインデントの幅
set shiftwidth=2

" カーソルの動く幅
set softtabstop=2


" 操作
" ----------------

" 行末の1文字先までカーソル移動を可能にする
set virtualedit=onemore


" プラグイン
" ----------------

" カラースキーマを solarized に設定
colorscheme solarized
