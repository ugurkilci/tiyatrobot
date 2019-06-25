<?php
$baslik = "TiyatroBot";
$slogan = "Doğaçlama Önerileri";
$logo = "";
$copyright = "TiyatroBot";
$link = "http://".$_SERVER['HTTP_HOST'];
if ($logo == "") {
    $logox = '<h1><a href="'.$link.'/tiyatrobot/" title="'.$baslik.' '.$slogan.'">'.$baslik.'</a></h1>';
} else {
    $logox = '<a href="'.$link.'/tiyatrobot/" title="'.$baslik.' '.$slogan.'"><img src="'.$logo.'" alt="'.$baslik.'"></a>';
}

include 'ayar.php';
include 'kissql.php';
?>
<!DOCTYPE html>
<html lang="tr">
<head>
    <base href="https://kilci.xyz/tiyatrobot">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">    
    <title><?php echo $baslik; ?> - KILCI.XYZ</title>
    <link rel="stylesheet" type="text/css" href="../css/normalize.css">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap-grid.min.css">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap-reboot.min.css">
    <meta name="MobileOptimized" content="450">
	<style>
		body{
			background:#efefef;
			font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
		}
        h1 a, h1 a:hover, h1 a:focus{
            color:#000;
        }
    </style>
</head>
<body>

    <header class="container">
        <div class="row">
            <div class="col-sm-12"><br />
                <?php echo $logox; ?>
                <h1 style="font-size:0px;display:none;"><?php echo $baslik; ?></h1>
                <p><?php echo $slogan; ?></p>
                <a href="/" class="btn btn-dark">KILCI.XYZ</a>
                <br /><br />
            </div>
        </div>
    </header>

    <div class="container">
        <div class="row">
            <?php
                switch ($_GET["p"]) {
                    case 'karakterekle':
                        if ($_POST) {
                            $k = $_POST["karakter"];

                            if (empty($k)) {
                                echo 'Hacı boş geçme!';
                            } else {
                                $ekle = $db->prepare("INSERT INTO tiyatrobot SET t_tip=?, t_yazi=?");
                                $ekle->execute(["karakter", $k]);

                                if ($ekle) {
                                    header("REFRESH:1;URL=?p=karakterekle");
                                    echo ':)';
                                } else {
                                    header("REFRESH:1;URL=?p=karakterekle");
                                    echo ':(';
                                }
                            }
                            
                        }
                        
                        echo '
                        
                            <div class="col-sm-12"><h1>KARAKTER</h1><a href="tiyatrobot" class="btn btn-success btn-block">Geri Dön</a><br /></div>
                            <div class="col-sm-12">
                                <div class="alert alert-dark">
                                    <strong>Karakter:</strong>
                                    <form action="" method="post"><input type="text" name="karakter" class="form-control" placeholder="çizmeli kedi, travesti, palyaço">
                                </div>
                            </div> 
                            <div class="col-sm-12"><button type="submit" class="btn btn-danger btn-block">Şimdi Ekle!</button></form><br /></div>
                        ';
                        break;
                     
                       case 'olayekle':
                        if ($_POST) {
                            $o = $_POST["olay"];

                            if (empty($o)) {
                                echo 'Hacı boş geçme!';
                            } else {
                                $ekle = $db->prepare("INSERT INTO tiyatrobot SET t_tip=?, t_yazi=?");
                                $ekle->execute(["olay", $o]);

                                if ($ekle) {
                                    header("REFRESH:1;URL=?p=olayekle");
                                    echo ':)';
                                } else {
                                    header("REFRESH:1;URL=?p=olayekle");
                                    echo ':(';
                                }
                            }
                            
                        }
                        
                        echo '
                        
                            <div class="col-sm-12"><h1>OLAY</h1><a href="tiyatrobot" class="btn btn-success btn-block">Geri Dön</a><br /></div>
                            <div class="col-sm-12">
                                <div class="alert alert-dark">
                                    <strong>Olay:</strong>
                                    <form action="" method="post"><input type="text" name="olay" class="form-control" placeholder="evin içine dalar, bekarlığa veda partisinde..">
                                </div>
                            </div> 
                            <div class="col-sm-12"><button type="submit" class="btn btn-danger btn-block">Şimdi Ekle!</button></form><br /></div>
                        ';
                        break;
                    
                    default:
                    $veri = $db->prepare("SELECT * FROM tiyatrobot WHERE t_tip=? ORDER BY RAND()");
                    $veri ->execute(array("karakter"));
                    $vericek = $veri ->fetch(PDO::FETCH_ASSOC);
                   
                    $veri2 = $db->prepare("SELECT * FROM tiyatrobot WHERE t_tip=? ORDER BY RAND()");
                    $veri2 ->execute(array("olay"));
                    $vericek2 = $veri2 ->fetch(PDO::FETCH_ASSOC);

                        echo '<div class="col-sm-12"><a href="/tiyatrobot/" class="btn btn-success btn-block">Yenile</a><br /></div>
                        <div class="col-sm-6">
                            <div class="alert alert-dark">
                                <strong>Karakter ('; k("karakter"); echo'):</strong>
                                <p>'.$vericek["t_yazi"].'</p>
                            </div>
                            <a href="tiyatrobot/?p=karakterekle" class="btn btn-danger btn-block">+ Karakter Ekle</a><br />
                        </div>
                        <div class="col-sm-6">
                            <div class="alert alert-dark">
                                <strong>Olay ('; o("karakter"); echo'):</strong>
                                <p>'.$vericek2["t_yazi"].'</p>
                            </div>
                            <a href="tiyatrobot/?p=olayekle" class="btn btn-danger btn-block">+ Olay Ekle</a><br />
                        </div>';
                        break;
                }
            ?>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <hr><small>
                 <?php echo $copyright . ' &copy; ' . date("Y"); ?><br />
                </small>
                <br /><br />
            </div>
        </div>
    </div>
</body>
</html>
