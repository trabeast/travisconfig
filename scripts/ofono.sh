echo "Fix bluetooth headset"

dbus-send --print-reply --system --dest=org.ofono /phonesim org.ofono.Modem.SetProperty string:"Powered" variant:boolean:true
dbus-send --print-reply --system --dest=org.ofono /phonesim org.ofono.Modem.SetProperty string:"Online" variant:boolean:true

/usr/lib/ofono/test/enable-modem /phonesim
/usr/lib/ofono/test/online-modem /phonesim
/usr/lib/ofono/test/list-modems

