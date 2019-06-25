<?php

 # KissQL
 # Author: Uğur KILCI
 # Version: 1.0
 # Very simple sql code

    function kissql($type, $table, $one, $two){
        global $db; 

        /*if($type == "+"){
            $type = "insert";
        }*/

        switch ($type) {
            case 'insert': /* kissql("+", "table", "column=?", "text"); */
                $ekle = $db->prepare("INSERT INTO $table SET $one");
                $ekle->execute([$two]);
                break;
            
            default:
                echo 'KissQL Error!';
                break;
        }
    }

    function k(){
        include 'ayar.php'; // ayar dosyası
        $sorgu = $db->prepare("SELECT COUNT(*) FROM tiyatrobot WHERE t_tip=?");
        $sorgu->execute(array("karakter"));
        $say = $sorgu->fetchColumn();
       
        echo $say;
    }

    function o(){
        include 'ayar.php'; // ayar dosyası
        $sorgu = $db->prepare("SELECT COUNT(*) FROM tiyatrobot WHERE t_tip=?");
        $sorgu->execute(array("olay"));
        $say = $sorgu->fetchColumn();
       
        echo $say;
    }