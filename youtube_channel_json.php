<?php
spl_autoload_register(function ($class_name) {
    include 'class/'.$class_name . '.php';
});

$channel = new YoutubeApi;
$channelID = 'UCWJ2lWNubArHWmf3FIHbfcQ';
$maxResult = 1;
$response = $channel->getChannelInfo($channelID, $maxResult);

header('content-type: application/json');
echo json_encode($response, JSON_PRETTY_PRINT);

?>