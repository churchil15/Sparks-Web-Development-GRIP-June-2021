<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="admin_sidebar_style.css">
</head>

<body>
    <div class="sidenav" id="theSideNav">
        <a href="javascript:void(0)" id="closebtn" style="padding: 10px 20px;"
                        onclick="closeNav()">&times;</a>
        <a href="/customer_home.php">Home</a>
        <a href="/customer_transactions.php">Passbook</a>
        <a id="label"><I>Send/Recieve</I></a>
        <a href="/beneficiary.php">Transfer Funds</a>
        <a href="/atm_simulator.php">ATM Simulator</a>
    </div>

<script>

function openNav() {
    document.getElementById("theSideNav").style.width = "256px";
    var x = document.getElementById("theSideNav");
    if (x.className === "sidenav sidenav-fixed") {
        x.className += " responsive";
    }
}

function closeNav() {
    if (document.documentElement.clientWidth < 856) {
        document.getElementById("theSideNav").style.width = "0";
    }
}

$(document).ready(function() {
    $(window).resize(function () {
        if ($(window).width() > 855)
            document.getElementById("theSideNav").style.width = "256px";

        if (($(window).width()) < 856){
            $('#closebtn').trigger('click');
        }
    });
});

$(document).ready(function() {
    $(window).scroll(function () {
        var x1 = document.getElementById("theSideNav").style.width;

        if ($(window).scrollTop() > 120) {
          $("#theSideNav").addClass('sidenav-fixed');

            if (($(window).width()) < 856 && x1 == "256px") {
                $('#hamburger').trigger('click');
            }
        }

        if ($(window).scrollTop() < 121) {
          $("#theSideNav").removeClass('sidenav-fixed');
        }
    });
});
</script>

</body>
</html>
