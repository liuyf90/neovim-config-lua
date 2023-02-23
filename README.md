# neovim-config-lua

## lsp 需要的依赖

  -jdsl需要
	jdk 19
	python3.11


## 如何增加plug

```
|- lua
|  |- packer.lua
\- init.lua
```

在packer.lua中增加插件

```
   use {
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
} 
```
然后执行

```
    :so 
    :PackerSync
```
执行之后会自动安装插件，但执行完后透明背景会消失，只要执行如下代码即可

```
    :lua ColorMyPencils()
```
