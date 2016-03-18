<?php
    if (!defined('C5_EXECUTE')) {header("HTTP/1.1 403 Access Denied"); return; }
    
    $asset = Loader::helper('concrete/asset_library');
    
    $pageSelector = Loader::helper('form/page_selector');
?>

<a id="addItem"><?php echo t('Add Item'); ?></a>

<div id="tabControl">
    <ul>
        <?php foreach ($items as $cnt => $item): ?>
            <?php $itemCount = ($cnt + 1); ?>
            <li class="<?php echo ($cnt == 0) ? 'active' : ''; ?>" data-item-id="<?php echo $itemCount; ?>">
                <?php echo ($itemCount == 0) ? 'New Item ' . $itemCount : 'Item ' . $itemCount; ?>
            </li>
        <?php endforeach; ?>
    </ul>
</div>
<div id="ccm-edit-rows">
    <?php foreach ($items as $cnt => $item): ?>
        <?php $itemCount = ($cnt + 1); ?>
        <?php $this->inc('form_items.php', compact('asset', 'pageSelector', 'item', 'itemCount')); ?>
    <?php endforeach; ?>
</div>

<div id="defaultTemplate">
    <?php
        $this->inc('form_items.php', array(
                                        'asset' => $asset, 
                                        'pageSelector' => $pageSelector, 
                                        'item' => $defaultItem, 
                                        'itemCount' => 0));
    ?>
</div>