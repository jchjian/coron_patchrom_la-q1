#!/system/bin/sh

savelog()
{
    PRODUCT=`getprop ro.product.name`
    LOGDATE=`date +'%Y_%m_%d'`
    LOGTIME=`date +'%Y%m%d_%H%M%S'`
    LOGPATH=/data/media/Debug_Log_$PRODUCT
    DATEPATH=$LOGPATH/$LOGDATE
    LOGFILE=$DATEPATH/Radio_$LOGTIME
    mkdir $LOGPATH
    chmod 777 $LOGPATH
    mkdir $DATEPATH
    chmod 777 $DATEPATH
    echo -e "\n\n\n\nRadio log begin!!!\n" | cat >> $LOGFILE
    chmod 644 $LOGFILE
    logcat -bradio -v threadtime >> $LOGFILE
}

savelog