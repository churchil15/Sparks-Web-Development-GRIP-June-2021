<?php

    if(!isset($_SESSION)) {
        session_start();
    }

    include "validate_customer.php";
    include "connect.php";
    include "header.php";
    include "customer_navbar.php";
    include "customer_sidebar.php";

    if (isset($_SESSION['loggedIn_cust_id'])) {                      
        $sql0 = "SELECT * FROM passbook".$_SESSION['loggedIn_cust_id'];   
    } 

    if (isset($_GET['sort'])) {
        $sort = $_GET['sort'];
    }

    

    if (isset($_GET['sort'])) {
        if ($sort == 'tid_down') {   
            $sql0 .= " ORDER BY trans_id ASC";
        }
        if ($sort == 'tid_up') {    
            $sql0 .= " ORDER BY trans_id DESC";
        }
        if ($sort == 'date_down') {   
            $sql0 .= " ORDER BY trans_date ASC";
        }
        if ($sort == 'date_up') {     
            $sql0 .= " ORDER BY trans_date DESC";
        }
    }
?>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="transactions_style.css">
</head>

<body>
    <div class="search-bar-wrapper">
        <div class="search-bar" id="the-search-bar">
            <div class="flex-item-search-bar" id="fi-search-bar">

                <div class="flex-item-by">
                    <label id="sort">Sort By :</label>
                </div>

                <div class="flex-item-search-by">
                    <select name="by" onChange="window.location.href=this.value">
                        <option selected disabled hidden>
                            <?php if (empty($_GET['sort'])) {?>Tn. ID &darr;<?php } else { ?>
                                <?php if ($sort == 'tid_down') {?>Tn. ID &darr;<?php } ?>
                                <?php if ($sort == 'tid_up') {?>Tn. ID &uarr;<?php } ?>
                                <?php if ($sort == 'date_down') {?>Date &darr;<?php } ?>
                                <?php if ($sort == 'date_up') {?>Date &uarr;<?php } ?>
                            <?php } ?>
                        </option>
                        <option value="customer_transactions.php?sort=tid_down">Tn. ID &darr;</option>
                        <option value="customer_transactions.php?sort=tid_up">Tn. ID &uarr;</option>
                        <option value="customer_transactions.php?sort=date_down">Date &darr;</option>
                        <option value="customer_transactions.php?sort=date_up">Date &uarr;</option>
                    </select>
                </div>

            </div>
        </div>
    </div>

    <div id="id01" class="modal">

      
    </div>

   <?php echo $filter_indicator ?>


    <div class="flex-container">

        <?php
            $result = $conn->query($sql0);

            if ($result->num_rows > 0) {?>
                <table id="transactions">
                    <tr>
                        <th>Trans. ID</th>
                        <th>Date & Time (IST)</th>
                        <th>Remarks</th>
                        <th>Debit (INR)</th>
                        <th>Credit (INR)</th>
                        <th>Balance (INR)</th>
                    </tr>
        <?php

            while($row = $result->fetch_assoc()) {?>
                    <tr>
                        <td><?php echo $row["trans_id"]; ?></td>
                        <td>
                            <?php
                                $time = strtotime($row["trans_date"]);
                                $sanitized_time = date("d/m/Y, g:i A", $time);
                                echo $sanitized_time;
                             ?>
                        </td>
                        <td><?php echo $row["remarks"]; ?></td>
                        <td><?php echo number_format($row["debit"]); ?></td>
                        <td><?php echo number_format($row["credit"]); ?></td>
                        <td><?php echo number_format($row["balance"]); ?></td>
                    </tr>
            <?php } ?>
            </table>
            <?php
            } else {  ?>
                <p id="none"> No results found :(</p>
            <?php }
            $conn->close(); ?>

    </div>

    <script>
    $(document).ready(function() {
        var curr_scroll;

        $(window).scroll(function () {
            curr_scroll = $(window).scrollTop();

            if ($(window).scrollTop() > 120) {
                $("#the-search-bar").addClass('search-bar-fixed');

              if ($(window).width() > 855) {
                  $("#fi-search-bar").addClass('fi-search-bar-fixed');
              }
            }

            if ($(window).scrollTop() < 121) {
                $("#the-search-bar").removeClass('search-bar-fixed');

              if ($(window).width() > 855) {
                  $("#fi-search-bar").removeClass('fi-search-bar-fixed');
              }
            }
        });

        $(window).resize(function () {
            var class_name = $("#fi-search-bar").attr('class');

            if ((class_name == "flex-item-search-bar fi-search-bar-fixed") && ($(window).width() < 856)) {
                $("#fi-search-bar").removeClass('fi-search-bar-fixed');
            }

            if ((class_name == "flex-item-search-bar") && ($(window).width() > 855) && (curr_scroll > 120)) {
                $("#fi-search-bar").addClass('fi-search-bar-fixed');
            }
        });

        var modal = document.getElementById('id01');

        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    });
    </script>

</body>
</html>
