#! /bin/bash
for i in "$@"
do
	case $i in
	    -b=*|--base_url=*)
	    BASE_URL="${i#*=}"
	    shift
	    ;;
	    -r=*|--remote_url=*)
	    REMOTE_URL="${i#*=}"
	    shift
	    ;;
	    -d=*|--driver=*)
	    DRIVER="${i#*=}"
	    shift
	    ;;
	    -c=*|--count=*)
	    COUNT="${i#*=}"
	    shift
	    ;;
	    *)
	    # unknown option
	    ;;
	esac
done

if [[ -z  $BASE_URL || -z $REMOTE_URL ]]; then
	./scrapper.rb -h
	exit 1
fi
if [ -z $COUNT ]; then
	COUNT=1
fi
if [ -z $DRIVER ]; then
	DRIVER="chrome"
fi

printf "\nStarting ${COUNT} drivers with the following options"
echo "BASE_URL   = ${BASE_URL}"
echo "REMOTE_URL = ${REMOTE_URL}"
printf "DRIVER     = ${DRIVER}\n"

if [[ -n $1 ]]; then
    echo "Last line of file specified as non-opt/last argument:"
    tail -1 $1
fi


for (( COUNTER=1; COUNTER<=$COUNT; COUNTER+=1 ));
do
	FILENAME="scrapper_$COUNTER.log"
	echo "starting scrapper #$COUNTER"
	echo "output is redirected into $FILENAME" 
	nohup ./scrapper.rb --b ${BASE_URL} --r ${REMOTE_URL} -d ${DRIVER} > $FILENAME & 
done
