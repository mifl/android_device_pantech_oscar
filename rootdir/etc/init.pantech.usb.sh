# Allow persistent usb charging disabling
target=`getprop ro.board.platform`
usbchgdisabled=`getprop persist.usb.chgdisabled`
case "$usbchgdisabled" in
    "") ;; #Do nothing here
    * )
    echo "$usbchgdisabled" > /sys/module/pm8921_charger/parameters/disabled
esac
