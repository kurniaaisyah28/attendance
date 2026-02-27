<?php  @session_start();
/*ini_set('display_errors', 0);
error_reporting(0);
header("X-XSS-Protection: 1; mode=block");
*/
$DB_HOST 	= 'localhost';
$DB_USER 	= 'root';
$DB_NAME 	= 'Absensi_sekolah_V.3';
$DB_PASSWD  = ''; 

@define("DB_HOST", $DB_HOST);
@define("DB_NAME", $DB_NAME);
@define("DB_USER", $DB_USER);
@define("DB_PASSWD" , $DB_PASSWD);

if (empty($DB_HOST) || empty($DB_USER) || empty($DB_NAME)) {
    die("Konfigurasi database tidak lengkap.");
}

$connection = new mysqli($DB_HOST, $DB_USER, $DB_PASSWD, $DB_NAME);
if ($connection->connect_error) {
    echo "
        <style>
            body {
                background: #000000;
                color: #ffffff;
                font-family: Arial, sans-serif;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                text-align: center;
            }
        </style>
        <div>
            <h3>Koneksi database gagal</h3>
            <p>Silakan cek kembali konfigurasi Database Anda.</p>
            <small>Error: " . $connection->connect_error . "</small>
        </div>";
    exit();
} 

$query_site  = "SELECT * FROM setting LIMIT 1";
$result_site = $connection->query($query_site);
if ($result_site && $row_site = $result_site->fetch_assoc()) {
	extract($row_site);
	date_default_timezone_set(strip_tags($row_site['timezone']??''));
	$whatsapp_sender = htmlspecialchars($row_site['whatsapp_phone']??'-');
	$whatsapp_token = htmlspecialchars($row_site['whatsapp_token']??'-');
	$secret_key = htmlspecialchars($row_site['secret_key']??'-');
	$whatsapp_domain = htmlspecialchars($row_site['whatsapp_domain']??'-');
	$whatsapp_tipe = htmlspecialchars($row_site['whatsapp_tipe']??'-');
}

if (empty($_SESSION['csrf_token'])) {
	$_SESSION['csrf_token'] = bin2hex(random_bytes(32));
}

if (!function_exists('base_url')) {
	function base_url($atRoot = false, $atCore = false, $parse = false) {
		if (isset($_SERVER['HTTP_HOST'])) {
			$http = isset($_SERVER['HTTPS']) && strtolower($_SERVER['HTTPS']) !== 'off' ? 'https' : 'http';
			$hostname = $_SERVER['HTTP_HOST'];
			$dir = str_replace(basename($_SERVER['SCRIPT_NAME']), '', $_SERVER['SCRIPT_NAME']);
			$core = preg_split('@/@', str_replace($_SERVER['DOCUMENT_ROOT'], '', realpath(dirname(__FILE__) ?: '')), -1, PREG_SPLIT_NO_EMPTY);
			$core = $core[0] ?? '';
			$tmplt = $atRoot ? ($atCore ? "%s://%s/%s/" : "%s://%s/") : ($atCore ? "%s://%s/%s/" : "%s://%s%s");
			$end = $atRoot ? ($atCore ? $core : $hostname) : ($atCore ? $core : $dir);
			$base_url = sprintf($tmplt, $http, $hostname, $end);
		} else {
			$base_url = 'http://localhost/';
		}
		if ($parse) {
			$base_url = parse_url($base_url);
			if (isset($base_url['path']) && $base_url['path'] === '/') {
				$base_url['path'] = '';
			}
		}
		return $base_url;
	}
}
$base_url = base_url();?>