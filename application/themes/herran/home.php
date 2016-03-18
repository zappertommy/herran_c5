<?php
defined('C5_EXECUTE') or die("Access Denied.");
$this->inc('elements/header.php'); ?>
<div class="container">
    <div class="hb-slider-container">
        <?php
            $a = new Area('Slider');
            $a->enableGridContainer();
            $a->display($c);
        ?>
    </div>
</div>
<main>
    <?php
        $a = new Area('Main');
        $a->enableGridContainer();
        $a->display($c);
    ?>

    <?php
        $a = new Area('Page Footer');
        $a->enableGridContainer();
        $a->display($c);
    ?>
</main>

<?php  $this->inc('elements/footer.php'); ?>
