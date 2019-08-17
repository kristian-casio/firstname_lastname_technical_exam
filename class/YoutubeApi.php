<?php

class YoutubeApi
{

    public $maxResult = 0;
    public $channelID = null;
    private $apiKey = 'AIzaSyDlxuq7zKon1beCxGfQsh2dTi2WmuZyf5s';

    public function getChannelInfo($channelID, $maxResult)
    {
        try {
            $this->channelID = $channelID;
            $this->maxResult = $maxResult;
            $endpoint = "https://www.googleapis.com/youtube/v3/search?key={$this->apiKey}&channelId={$this->channelID}&part=snippet,id&order=date&maxResults={$this->maxResult}";
            $data = file_get_contents($endpoint);
            return  json_decode($data, true);
        } catch (\Throwable $e) {
            return 'Message: ' .$e->getMessage();
        }

    }

}
