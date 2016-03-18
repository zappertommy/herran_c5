<?php
    defined('C5_EXECUTE') or die("Access Denied.");
    $this->inc('elements/header_top.php');
?>

<header>
    <div class="container hb-logo-container">
        <div class="text-center">
            <?php
                $a = new GlobalArea('Header Logo');
                $a->display();
            ?>
        </div>
    </div>
</header>

<div class="container header-menu">
    <div class="container">
        <ul class="nav-justified header-menu">
            <?php
                $a = new GlobalArea('Header Menu');
                $a->display($c);
            ?>
        </ul>
    </div>
</div>