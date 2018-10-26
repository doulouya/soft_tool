umask 022
setenv LANG C
#setenv SHELL /bin/csh
unset autologout
#set autologout=0
if ( $?prompt ) then
  set history = 10000
  set savehist = 10000
  set filec
endif

setenv LS_COLORS 'no=00:fi=00;32:di=01;33:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'
cd

setenv OPENWINHOME /usr/share/X11
setenv XKEYSYMDB /usr/share/X11/XKeysymDB

#source /cad/ENV/tk.env
#source /cad/ENV/nc92.env
#source /cad_local/nlint2009.env
source /nfsroot/FPGA_Tools/Cshrc.certify_fpga_e201103
#setenv DISPLAY 192.168.215.5
source /cad/ENV/verdi2011.env
source /cad/ENV/nc102.env
#source /nfsroot/FPGA_Tools/ISE13_2/ISE_DS/settings64.csh
#source /nfsroot/FPGA_Tools/ISE13_2/ISE_DS/EDK/.settings64.csh /nfsroot/FPGA_Tools/ISE13_2/ISE_DS/EDK
#source /nfsroot/FPGA_Tools/ISE13_2/ISE_DS/ISE/.settings64.csh /nfsroot/FPGA_Tools/ISE13_2/ISE_DS/ISE
#source /nfsroot/FPGA_Tools/ISE13_2/ISE_DS/PlanAhead/.settings64.csh /nfsroot/FPGA_Tools/ISE13_2/ISE_DS/PlanAhead
#source /nfsroot/FPGA_Tools/ISE13_2/ISE_DS/SysGen/.settings64.csh /nfsroot/FPGA_Tools/ISE13_2/ISE_DS/SysGen
#source /nfsroot/FPGA_Tools/ISE13_2/ISE_DS/common/.settings64.csh /nfsroot/FPGA_Tools/ISE13_2/ISE_DS/common
##setenv LM_LICENSE_FILE 27020@192.168.24.125      
source /cad/ENV/soc_tool.env

set autolist
setenv XKEYSYMDB /usr/share/X11/XKeysymDB
#setenv UVM_HOME /nfsroot/Tools/INCISIV11.10.001/tools/uvm_1_1_update/
setenv UVM_HOME "/nfsroot/Tools/uvm_lib/uvm-1.1c"
#setenv UVM_HOME /nfsroot/Tools/uvm_lib/uvm-1.1c/


alias xtm 'xterm -fn 9x15 -cr red -sb -fg white -bg black &'
alias disp 'setenv DISPLAY 192.168.\!*\:0.0'
alias x 'exit'
alias nlint 'nLint -gui &'
alias srverdi 'source /cad/ENV/verdi2011.env'
alias srrc 'source /cad/ENV/rc91.env'
alias srlec 'source /cad/ENV/lec7.env'
alias lc1 'lmstat -c 5280@b2000 -a'
alias lc2 'lmstat -c 5219@b2000 -a'
alias lc3 'lmstat -c 27000@b2000 -a'
alias lc4 'lmstat -c 1709@Verification1 -a'
alias srlint 'source /cad_local/nlint2009.env'
alias ss 'source run.csh'
alias g "gvim"
alias v "vim"
alias h "history"
alias kk 'kill -1 -1'
alias gg "gnome-terminal &"
alias ssvn "sh /cad/ENV/smartsvn.sh &"
alias u "/cad/uex/uex"
alias vd "verdi -syntaxerrormax 1000000 +systemverilogext+.sv +verilog2001ext+.v -autoalias -f wholechip.f &"
alias vvd "verdi -syntaxerrormax 1000000 +systemverilogext+.sv +verilog2001ext+.v -autoalias &"
alias srvd "source /cad/ENV/verdi2014_c15.env"

