Param($Hostname, $SharedAccessKeyName, $SharedAccessKey, $DeviceId, $SendCount)

$data= node getTestData.js

#Hack: on send the " is replaced with ' works, don't ask me why
$data = $data.replace('"', "'")

$connection = "HostName=" + $Hostname + ";SharedAccessKeyName=" + $SharedAccessKeyName + ";SharedAccessKey="+ $SharedAccessKey
$connection
iothub-explorer --login $connection simulate-device $DeviceId --send $data --send-count $SendCount