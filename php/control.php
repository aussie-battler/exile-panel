<?php
  ini_set('display_errors', 'On');
  error_reporting(E_ALL);

  include("config.php");
  $retorno = "Servidor desligado.";

  if (isset($_GET['acao']) && $_GET['acao'] != "") {
    $acao = $_GET['acao'];
  } else {
    $acao = "detalhes";
  }

  if ($acao == "iniciar") {
    //$retorno = exec('c:\WINDOWS\system32\cmd.exe /c ' . $caminho_webserver . '\bat\iniciar.bat ' . $caminho_server . ' ' . $executavel . ' ' . $nome);
    $retorno = exec('runas /user:administrator cmd /c ' . $caminho_webserver . '\bat\iniciar.bat');
  } else if ($acao == "parar") {
    //$retorno = exec($caminho_webserver . '\bat\parar.bat ' . $executavel . ' ' . $nome, $retorno);
    //$retorno = exec('c:\WINDOWS\system32\cmd.exe /c ' . $caminho_webserver . '\bat\iniciar.bat ' . $caminho_server . ' ' . $executavel . ' ' . $nome);
    $retorno = exec('c:\WINDOWS\system32\cmd.exe /c ' . $caminho_webserver . '\bat\parar.bat ' . $executavel . ' ' . $nome);
  } else if ($acao == "reiniciar") {
    $retorno = exec('c:\WINDOWS\system32\cmd.exe /c ' . $caminho_webserver . '\bat\reiniciar.bat ' . $executavel . ' ' . $nome . ' ' . $caminho_webserver . '/bat', $retorno);
  } else if ($acao == "atualizar") {
    $retorno = exec('c:\WINDOWS\system32\cmd.exe /c ' . $caminho_webserver . '\bat\atualizar.bat ' . $steamlogin . ' ' . $steampassword . ' ' . $caminho_server . ' ' . $caminho_steamcmd, $retorno);
  } else {
    $status_pattern = '/' . $executavel . '\.exe/';
    $task_list = array();
    exec("tasklist 2>NUL", $task_list);

    foreach ($task_list AS $task_line) {
      if (preg_match($status_pattern, $task_line, $matches)) {
        $retorno = $matches[0];
        break;
      }
    }
  }

  echo $retorno;
