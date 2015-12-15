<?php
    include('koneksi.php');
    if(isset($_POST['cari_keyword']))
    {
        $cari_keyword = $dbConnection->real_escape_string($_POST['cari_keyword']);
        $sqlSiswa="SELECT id_daftar,s_nama FROM master WHERE s_nama LIKE '%$cari_keyword%'";
        $resSiswa=$dbConnection->query($sqlSiswa);
 
        if($resSiswa === false) {
            trigger_error('Error: ' . $dbConnection->error, E_USER_ERROR);
        }else{
            $rows_returned = $resSiswa->num_rows;
        }
 
 $bold_cari_keyword = '<strong>'.$cari_keyword.'</strong>';
 if($rows_returned > 0){
            while($rowSiswa = $resSiswa->fetch_assoc()) 
            { 
                echo '<div class="show" align="left"><span class="nama_siswa">'.str_ireplace($cari_keyword,$bold_cari_keyword,$rowSiswa['s_nama']).'</span></div>'; 
            }
        }else{
            echo '<div class="show" align="left">No matching records.</div>'; 
        }
    } 
?>