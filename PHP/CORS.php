<?php
  header('Content-Type: application/javascript');
  echo $_GET['callback'].'('."{'imageData':'".'data:image/jpg;base64,'.base64_encode(file_get_contents($_GET['url']))."'})";
?>