<?php

    require "config.php";

    $status_pattern = '/' . $executavel . '\.exe/';
    $task_list = array();
    exec("tasklist 2>NUL", $task_list);

    foreach ($task_list AS $task_line) {
      if (preg_match($status_pattern, $task_line, $matches)) {
        $retorno = $matches[0];
        break;
      } else {
        $retorno = "Nenhum App.";
      }
    }


  if (isset($retorno)) { echo $retorno; }
?>
