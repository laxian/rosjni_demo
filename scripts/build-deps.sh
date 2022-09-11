#!/bin/bash

die () {
    echo
    echo "$*"
    echo
    exit 1
}

log () {
	echo === $* ===
}

cd ..

[[ ! -e depend ]] && die cause depend file not exists

OLD_IFS=$IFS
IFS=$'\n'
for l in `cat depend`;do
	if grep "^#" <<< $l >/dev/null 2>&1; then
		log "SKIP: $l"
		continue
	else
		log "Handle line: $l"
	fi
	
	k=`echo $l | cut -d/ -f1`
	v=`echo $l | cut -d/ -f2`
	t=`echo $v | cut -d. -f2`
	pkg_dir=`rospack find $k`
	[[ ! -e $pkg_dir ]] && log "rospack $k not found", skip ; continue
	if [[ $t -eq 'msg' ]];then
		[[ ! -e $pkg_dir/msg/$v ]] && continue
		./scripts/genmsg_java.py $pkg_dir/msg/$v ./src
	elif [[ $t -eq 'srv' ]]; then
		[[ ! -e $pkg_dir/srv/$v ]] && continue
		./scripts/gensrv_java.py $pkg_dir/srv/$v ./src
	else
		die "Unknown format"
	fi
done
IFS=$OLD_IFS

log Done