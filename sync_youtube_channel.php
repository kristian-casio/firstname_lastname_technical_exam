<?php
require 'config/db_connect.php';
spl_autoload_register(function ($class_name) {
    include 'class/'.$class_name . '.php';
});

$channel = new YoutubeApi;
$channelID = 'UCWJ2lWNubArHWmf3FIHbfcQ';
$maxResult = 10;
$data = $channel->getChannelInfo($channelID, $maxResult);

foreach ($data['items'] as $items){
    $channelTitle = $items['snippet']['channelTitle'];
    $channelId= $items['snippet']['channelId'];
}

$youtubeData = new SyncData;
$youtubeData->dbconn = $pdoConn;
$youtubeData->saveChannelInfo($channelTitle, $channelId);

$youtubeData = new SyncData;
$youtubeData->dbconn = $pdoConn;
$youtubeData->videos = $data;
$response = $youtubeData->saveChannelVideos();

header('content-type: application/json');
echo json_encode($response, JSON_PRETTY_PRINT);

?>