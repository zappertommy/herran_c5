<?php if (!defined('C5_EXECUTE')) {header("HTTP/1.1 403 Access Denied"); return;} ?>

<?php $total_col = count($cols); ?>
<?php if ($total_col < 4): ?>
    <?php
        $width_con = array(1 => '25%', '50%', '75%');
        $width_blk = array(1 => '100%', '50%', '33%');
    ?>
    <style type="text/css">
        #send div.content {
            text-align: center !important;
        }
        #send .content .col-container {
            display: inline-block;
            width: <?php echo $width_con[$total_col]; ?>;
        }
        #send .content .col-container .col-block {
            width: <?php echo $width_blk[$total_col]; ?>;
        }
    </style>
<?php endif; ?>
<div id="send">
    <div class="content">
        <h2><?php echo $headerTitle; ?></h2>
        <?php if (is_array($cols) && $total_col): ?>
            <ul class="col-container">
                <?php foreach($cols as $col): ?>
                    <?php $lists = $controller->getListsByColumn($col['colID']); ?>
                    <li class="col-block">
                        <div class="c button-bottom">
                            <h3><?php echo $col['title']; ?></h3>
                            <p><?php echo $controller->getImage($col['imageID']); ?></p>
                            <?php if (is_array($lists) && count($lists)): ?>
                                <ol>
                                    <?php foreach($lists as $list): ?>
                                        <li><?php echo $list['content']; ?></li>
                                    <?php endforeach; ?>
                                </ol>
                            <?php endif; ?>
                            <p class="b button-wrap-bottom">
                                <a class="button full" href="<?php echo $controller->getLinkURL($col['buttonLink']); ?>">
                                    <?php echo $col['buttonLabel']; ?>
                                </a>
                            </p>
                        </div>
                    </li>
                <?php endforeach; ?>
            </ul>
            <div class="clearing"></div>
        <?php endif; ?>
        
        <?php if ($footerDesc != ''): ?>
            <div class="centerit discover">
                <h3><?php echo $footerDesc; ?></h3>
                <?php if ($footerLink != ''): ?>
                    <p>
                        <a href="<?php echo $controller->getLinkURL($footerLink); ?>" class="button large"><?php echo $footerButton; ?></a>
                    </p>
                <?php endif; ?>
            </div>
        <?php endif; ?>
    </div>
</div>