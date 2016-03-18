<?php
    if (!defined('C5_EXECUTE')) {header("HTTP/1.1 403 Access Denied"); return; }
    
    $asset = Loader::helper('concrete/asset_library');
    
    $pageSelector = Loader::helper('form/page_selector');
?>

<div class="ccm-block-field-group header">
    <h2>Header</h2>
    <?php echo $form->text('headerTitle', $headerTitle); ?>
</div>
<div class="ccm-block-field-group footer">
    <div class="field-box">
        <h2>Footer</h2>
        <textarea name="footerDesc" rows="2"><?php echo $footerDesc; ?></textarea>
    </div>
    <div class="field-box">
        <h2>Footer Button</h2>
        <?php echo $form->text('footerButton', $footerButton); ?>
    </div>
    <div class="field-box">
        <h2>Footer Link</h2>
        <?php echo $pageSelector->selectPage('footerLink', $footerLink, ''); ?>
    </div>
</div>
<a id="addCol"><?php echo t('Add Col'); ?></a>

<div id="tabControl">
    <ul>
        <?php foreach ($cols as $cnt => $col): ?>
            <?php $itemCount = ($cnt + 1); ?>
            <li class="<?php echo ($cnt == 0) ? 'active' : ''; ?>" data-col-id="<?php echo $itemCount; ?>">
                <?php echo ($itemCount == 0) ? 'New Column' : 'Column ' . $itemCount; ?>
            </li>
        <?php endforeach; ?>
    </ul>
</div>
<div id="ccm-edit-rows">
    <?php foreach ($cols as $cnt => $col): ?>
        <?php
            $image = null;

            if ($col['imageID'] > 0) {
                $image = $controller->getImageObject($col['imageID']);
            }
            
            if ($col['colID'] > 0) {
                $lists = $controller->getListsByColumn($col['colID']);
                
                if (count($lists) < 1) {
                    $lists = $defaultLists;
                }
            } else {
                $lists = $defaultLists;
            }

            $itemCount = ($cnt + 1);
        ?>
        <?php $this->inc('form_columns.php', compact('asset', 'pageSelector', 'col', 'lists', 'itemCount', 'image')); ?>
    <?php endforeach; ?>
</div>

<div id="defaultTemplate">
    <?php
        $this->inc('form_columns.php', array(
                                        'asset' => $asset, 
                                        'pageSelector' => $pageSelector, 
                                        'col' => $defaultCol, 
                                        'lists' => $defaultLists, 
                                        'itemCount' => 0, 
                                        'image' => null));
    ?>
</div>