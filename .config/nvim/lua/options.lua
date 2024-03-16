-- ファイル
vim.opt.fileencoding = "utf-8" -- エンコーディングをUTF-8に設定
vim.opt.swapfile = false -- スワップファイルを作成しない
vim.opt.helplang = "ja" -- ヘルプファイルの言語は日本語
vim.opt.hidden = true -- バッファを切り替えるときにファイルを保存しなくてもOKに

-- クリップボード共有
vim.opt.clipboard:append({ "unnamedplus" }) -- レジスタとクリップボードを共有

-- メニューとコマンド
vim.opt.wildmenu = true -- コマンドラインで補完
vim.opt.cmdheight = 1 -- コマンドラインの表示行数
vim.opt.laststatus = 2 -- 下部にステータスラインを表示
vim.opt.showcmd = true -- コマンドラインに入力されたコマンドを表示

-- 検索・置換え
vim.opt.hlsearch = true -- ハイライト検索を有効
vim.opt.incsearch = true -- インクリメンタルサーチを有効
vim.opt.matchtime = 1 -- 入力された文字列がマッチするまでにかかる時間

-- インデント
vim.opt.shiftwidth = 2 -- シフト幅を4に設定する
vim.opt.tabstop = 2 -- タブ幅を4に設定する
vim.opt.expandtab = true -- タブ文字をスペースに置き換える
vim.opt.autoindent = true -- 自動インデントを有効にする
vim.opt.smartindent = true -- インデントをスマートに調整する

-- 表示
vim.opt.number = true -- 行番号を表示
vim.opt.wrap = false -- テキストの自動折り返しを無効に
vim.opt.showtabline = 2 -- タブラインを表示 （1:常に表示、2:タブが開かれたときに表示）
vim.opt.visualbell = true -- ビープ音を表示する代わりに画面をフラッシュ
vim.opt.showmatch = true -- 対応する括弧をハイライト表示

-- Syntax highlighting
vim.opt.syntax = "enable"
vim.opt.termguicolors = true -- 24 ビットカラーを使用
vim.opt.background = "dark" -- ダークカラーを使用する
