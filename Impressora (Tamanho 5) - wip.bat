@echo off
set chave="HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\PageSetup"

set font= "font"
set valorFonte= ""

set footer= "footer"
set valorFooter= ""

set header= "header"
set valorHeader= ""

set margem= "margin_bottom"
set valorMargem= "0.196850"

set left= "margin_left"
set valorLeft= "0.196850"

set right= "margin_right"
set valorRight= "0.196850"

set top= "margin_top"
set valorTop= "0.196850"

set background= "Print_Background"
set valorBack= "no"

set shrink= "Shrink_To_Fit"
set valorShrink= "yes"

reg add %chave% /v %font% /t REG_SZ /d %valorFonte% /f
reg add %chave% /v %footer% /t REG_SZ /d %valorFooter% /f
reg add %chave% /v %header% /t REG_SZ /d %valorHeader% /f
reg add %chave% /v %margem% /t REG_SZ /d %valorMargem% /f
reg add %chave% /v %left% /t REG_SZ /d %valorLeft% /f
reg add %chave% /v %right% /t REG_SZ /d %valorRight% /f
reg add %chave% /v %top% /t REG_SZ /d %valorTop% /f
reg add %chave% /v %background% /t REG_SZ /d %valorBack% /f
reg add %chave% /v %shrink% /t REG_SZ /d %valorShrink% /f


if %errorlevel% equ 0 (
    echo Valor adicionado com sucesso.
) else (
    echo Falha ao adicionar o valor.
)

pause
