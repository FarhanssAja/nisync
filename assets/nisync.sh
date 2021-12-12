#!/data/data/com.termux/files/usr/bin\n\n#\ntext_help() {\n	echo "Usage : nisync [option] [mode]\n   action Command :\n      --version,-v,-ver : to check version\n      --reload,-r,-rel  : to reload sistem\n      --clear,-c        : to clear termux\n\n   module Resource_Pack :\n      @app_reload       : to reload sistem\n      @app_terkey       : to add terkey\n      @app_plugins      : to Allow nisync read sistem\n      @app_themes       : Gatau buat apa\n      @app_marshall     : to encode marshal python\n      @app_mkdir        : to create the folder\n      @app_directory    : to view directory\n      @app_copy         : to copy file or folder\n      and more\n"\n}\n\ntools_install() {\n	python3 /data/data/com.termux/files/usr/lib/nisync.py install $1\n	exit 0\n}\n\ntools_reload() {\n	am broadcast --user 0 -a com.termux.app.reload_style com.termux > /dev/null\n	exit 0\n}\n\ntools_clear() {\n	clear && login\n	exit 0\n}\n\ntools_version() {\n	echo "nisync @beta"\n	exit 0\n}\n\nwhile true; do\n	case $1 in\n		--version|-v|-ver)\n			tools_version\n			exit 0\n			;;\n		--reload|-r|-rel)\n			tools_reload\n			exit 0\n			;;\n		--clear|-c)\n			tools_clear\n			exit 0\n			;;\n		install|-i)\n			tools_install $2\n			exit 0\n	esac\ndone\n
