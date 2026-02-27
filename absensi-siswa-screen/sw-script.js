jQuery(function ($) {
    setInterval(function () {
        var date = new Date(),
            time = date.toLocaleTimeString();
        $(".clock").html(time);
    }, 1000);
});



$(document).ready(function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(successCallback, errorCallback);
    } else {
        swal({ title: 'Oops!', text: 'Maaf, browser Anda tidak mendukung geolokasi HTML5.', icon: 'error', timer: 3000, });
    }
});

// Define callback function for successful attempt
function successCallback(position) {
    var latitude = "" + position.coords.latitude + "," + position.coords.longitude + "";
    $('.latitude').html(latitude);
}

// Define callback function for failed attempt
function errorCallback(error) {
    if (error.code == 1) {
        swal({ title: 'Oops!', text: 'Anda telah memutuskan untuk tidak membagikan lokasi Anda, tetapi tidak apa-apa. Kami tidak akan meminta Anda lagi.', icon: 'error', timer: 3000, });
    } else if (error.code == 2) {
        swal({ title: 'Oops!', text: 'Jaringan tidak aktif atau layanan penentuan posisi tidak dapat dijangkau.', icon: 'error', timer: 3000, });
    } else if (error.code == 3) {
        swal({ title: 'Oops!', text: 'Waktu percobaan habis sebelum bisa mendapatkan data lokasi.', icon: 'error', timer: 3000, });
    } else {
        swal({ title: 'Oops!', text: 'Waktu percobaan habis sebelum bisa mendapatkan data lokasi.', icon: 'error', timer: 3000, });
    }
}


function webcame_selfie() {
    // Webcam Selfie
    const webcamElement = document.getElementById("webcam");
    const canvasElement = document.getElementById("canvas");
    const webcam = new Webcam(webcamElement, "user", canvasElement);
    // Mulai kamera depan atau kamera utama
    function startFrontCamera() {
        navigator.mediaDevices
            .enumerateDevices()
            .then((devices) => {
                let frontCamera = devices.find(
                    (device) => device.kind === "videoinput" && device.label.toLowerCase().includes("front")
                );
                if (frontCamera) {
                    webcam.start(frontCamera.deviceId)
                        .then(() => cameraStarted())
                        .catch((err) => displayError());
                } else {
                    webcam.start()
                        .then(() => cameraStarted())
                        .catch((err) => displayError());
                }
            })
            .catch((err) => {
                console.error("Gagal mendapatkan perangkat: ", err);
                webcam.start()
                    .then(() => cameraStarted())
                    .catch((err) => displayError());
            });
    }

    startFrontCamera();
    function cameraStarted() {
        if (webcam.webcamList.length > 1) {
            $(".btn-cameraFlip").removeClass("d-none");
        }
        window.scrollTo(0, 0);
    }

    $(".btn-cameraFlip").click(function () {
        if (webcam.webcamList.length > 1) {
            webcam.flip();
            webcam.start();
        }
    });


    /** Scan Absensi Dengan mesin */
    $('body').click(function () {
        $('.qrcode').focus();
    });

    setTimeout(function () {
        $('.qrcode').focus().val('');
    }, 100);


    // Submit otomatis
    let isProcessing = false;
    $('.qrcode').on('keydown', function (e) {
        if (isProcessing) return; // Stop jika masih dalam proses

        if (e.which === 13) { // Enter
            var qrcode = $(this).val().trim();
            var latitude = $(".latitude").html();
            if (!qrcode) return; // Stop jika kosong

            isProcessing = true;

            setTimeout(function () {
                // Ambil gambar dari webcam (Selfie)
                let picture = webcam.snap();
                var img = new Image();
                img.src = picture;
                var canvas = document.getElementById("canvas");
                var ctx = canvas.getContext("2d");

                // Jalankan setelah gambar selesai dimuat
                img.onload = function () {
                    // Tentukan ukuran canvas
                    canvas.width = 300;
                    canvas.height = 300;

                    // Hitung skala supaya gambar tetap proporsional
                    let imgWidth = img.width;
                    let imgHeight = img.height;
                    let scale = Math.min(canvas.width / imgWidth, canvas.height / imgHeight);
                    let newWidth = imgWidth * scale;
                    let newHeight = imgHeight * scale;

                    // Posisi tengah
                    let x = (canvas.width - newWidth) / 2;
                    let y = (canvas.height - newHeight) / 2;

                    // Buat crop
                    ctx.clearRect(0, 0, canvas.width, canvas.height);
                    ctx.drawImage(img, x, y, newWidth, newHeight);

                    // Convert canvas ke Blob
                    canvas.toBlob(function (blob) {
                        var formData = new FormData();
                        formData.append("img", blob, "selfie.jpg");
                        formData.append("qrcode", qrcode);
                        formData.append("latitude", latitude);
                        $.ajax({
                            type: "POST",
                            url: "./sw-proses.php?action=absen",
                            data: formData,
                            processData: false,
                            contentType: false,
                            success: function (data) {
                                const [status, message] = data.split("/");
                                if (status === "success") {
                                    swal({ title: "Berhasil!", text: message, icon: "success", timer: 2500 });
                                    loaddata();
                                    loaddatacouter();
                                } else {
                                    swal({ title: "Oops!", text: data, icon: "error" });
                                }

                                setTimeout(function () {
                                    $('.qrcode').focus().val('');
                                    isProcessing = false; //Buka kembali proses
                                }, 500);
                            },
                            error: function (err) {
                                console.error("Error sending data: ", err);
                            },
                            complete: function () {
                                // Reset input dan buka proses lagi
                                $('.qrcode').val('');
                                isProcessing = false;
                            }
                        });
                    }, "image/jpeg", 0.8);  // Quality 80%
                };

            }, 500); // Delay sebelum proses selfie
        }
    });
}


function qrcode_webcame() {
    // Inisialisasi QR Scanner
    let isScanned = false;
    function onScanSuccess(decodedText, decodedResult) {
        if (isScanned) return; // Stop jika masih dalam proses
        isScanned = true;
        var latitude = $(".latitude").html();
        new Audio('../template/vendor/html5-qrcode/audio/beep.mp3').play().catch(console.error);
        $.ajax({
            type: "POST",
            url: "./sw-proses.php?action=absen-webcame",
            data: { qrcode: decodedText, latitude: latitude },
            success: function (data) {
                const [status, message] = data.split("/");
                if (status === 'success') {
                    swal({ title: 'Berhasil!', text: message, icon: 'success', timer: 2500 });
                    loaddata();
                    loaddatacouter();
                } else {
                    swal({ title: 'Oops!', text: data, icon: 'error', timer: 3000 });
                }
            },
            error: function (xhr, status, error) {
                console.error("AJAX Error: " + status + ": " + error);
                swal({ title: 'Oops!', text: 'Terjadi kesalahan saat mengirim data. Silakan coba lagi!', icon: 'error', timer: 3000 });
            }
        });

        setTimeout(() => { isScanned = false; }, 5000);

    }
    const config = {
        fps: 24,
        qrbox: (viewportWidth, viewportHeight) => ({ width: Math.floor(Math.min(viewportWidth, viewportHeight) * 0.7), height: Math.floor(Math.min(viewportWidth, viewportHeight) * 0.7) }),
        rememberLastUsedCamera: true,
        supportedScanTypes: [Html5QrcodeScanType.SCAN_TYPE_CAMERA]
    };

    const html5QrcodeScanner = new Html5QrcodeScanner("reader", config, false);
    html5QrcodeScanner.render(onScanSuccess);
}

loaddata();
function loaddata() {
    $(".data-absensi").html('<div class="text-center text-white"><span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span> <p>Loading data...</p></div>');
    $(".data-absensi").load("./sw-proses.php?action=data-absensi");
}

loaddatacouter();
function loaddatacouter() {
    $.ajax({
        type: 'POST',
        url: './sw-proses.php?action=data-counter',
        dataType: 'json',
        success: function (response) {
            $('.total-siswa').html(response.total_siswa);
            $('.belum-absen').html(response.belum_absen);
            $('.ontime').html(response.on_time);
            $('.terlambat').html(response.terlambat);
            $('.izin').html(response.izin);
            $('.total-absen').html(response.total_absen);
            $('.persentase').html(response.persentase);
        }
    });

}


