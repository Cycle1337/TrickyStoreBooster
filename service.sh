MODDIR=${0%/*}

while [ "$(/system/bin/app_process -Djava.class.path=$MODDIR/isKeyguardLocked.dex /system/bin com.rosan.shell.ActiviteJava)" == "true" ];
do
	sleep 2
done

sleep 10
su -c "sh -c \"pm list packages | sed 's/^package://' > /data/adb/tricky_store/target.txt\""
sleep 1

function auto_game_mode_node () {
	while true ; do
	su -c "sh -c \"pm list packages | sed 's/^package://' > /data/adb/tricky_store/target.txt\""

	sleep 43200
	done
}
auto_game_mode_node &