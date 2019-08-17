<?php

class SyncData
{

  public $dbconn = null;
  public $channelTitle;
  public $channelId;
  public $videos;
  public $videoId;
  public $title;
  public $description;
  public $thumbnails;

  public function saveChannelInfo($channelTitle, $channelId)
  {
    try {
        $this->channelTitle = $channelTitle;
        $this->channelId = $channelId;

        $this->dbconn->beginTransaction();

        $sql = "INSERT INTO youtube_channels
                           (
                            channel_id,
                            channel_title
                            )
                VALUES    (
                            :channel_id,
                            :channel_title
                          )";
        $stmt = $this->dbconn->prepare($sql);
        $stmt->bindParam(':channel_id', $this->channelId, PDO::PARAM_STR);
        $stmt->bindParam(':channel_title', $this->channelTitle, PDO::PARAM_STR);
        $stmt->execute();

        $this->dbconn->commit();

        if($stmt->errorCode() == 0){
            $result = array(
                "success" => 1
            );
        }else{
            $errors = $stmt->errorInfo();
            $result = array(
                "success" => 0
            );
        }

        $this->dbconn = null;
        return $result;

    } catch (PDOException $e) {
      $this->dbconn->rollBack();
      throw new Exception("Connection failed: ". $e->getMessage());
    }
  }

  public function saveChannelVideos()
  {
    try {

      $this->dbconn->beginTransaction();

      foreach ($this->videos['items'] as $video) {

        $this->videoId = $video['id']['videoId'];
        $this->title = $video['snippet']['title'];
        $this->description = $video['snippet']['description'];
        $this->thumbnails = $video['snippet']['thumbnails']['default']['url'];

        $sql = "INSERT INTO youtube_channel_videos
                           (
                            video_id,
                            title,
                            description,
                            thumbnails
                            )
                VALUES    (
                            :video_id,
                            :title,
                            :description,
                            :thumbnails
                          )";
      $stmt = $this->dbconn->prepare($sql);
      $stmt->bindParam(':video_id', $this->videoId, PDO::PARAM_STR);
      $stmt->bindParam(':title', $this->title, PDO::PARAM_STR);
      $stmt->bindParam(':description', $this->description, PDO::PARAM_STR);
      $stmt->bindParam(':thumbnails', $this->thumbnails, PDO::PARAM_STR);
      $stmt->execute();

      }

      $this->dbconn->commit();

      if($stmt->errorCode() == 0){
        $result = array(
              "success" => 1
        );
      }else{
        $errors = $stmt->errorInfo();
        $result = array(
              "success" => 0
        );
      }

      $this->dbconn = null;
      return $result;

    } catch (PDOException $e) {
      $this->dbconn->rollBack();
      throw new Exception("Connection failed: ". $e->getMessage());
    }
  }

}

?>
