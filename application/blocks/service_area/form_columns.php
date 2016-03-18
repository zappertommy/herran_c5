<?php if (!defined('C5_EXECUTE')) {header("HTTP/1.1 403 Access Denied"); return;} ?>

<div class="ccm-edit-row<?php echo ($itemCount == 1) ? ' active' : ''; ?>" data-col-id="<?php echo $itemCount; ?>" data-col-new="<?php echo ($itemCount == 0) ? 1 : 0; ?>">
    <div class="ccm-col-header">
        <div class="ccm-col-label">
            <?php echo ($itemCount == 0) ? 'New Column' : 'Column ' . $itemCount; ?>
        </div>
        <div class="ccm-edit-rowIcons">
            <div class="move-icons">
                <a class="moveLeftCol"></a>
                <a class="moveRightCol"></a>
            </div>
            <a class="deleteCol"></a>
        </div>
    </div>
    <div class="clearing"></div>
    <div class="ccm-block-field-group">
        <h2>Title</h2>
        <?php $fieldName = ($itemCount > 0) ? 'col[' . $itemCount . '][title]' : 'def[title]'; ?>
        <?php echo $form->text($fieldName, $col['title']); ?>
        
        <h2>Image</h2>
        <?php $fieldName = ($itemCount > 0) ? 'col[' . $itemCount . '][image_id]' : 'def[image_id]'; ?>
        <?php $fieldId = ($itemCount > 0) ? 'col-image-' . $itemCount : 'def[image_id]'; ?>
        <?php echo $asset->image($fieldId, $fieldName, t('Choose Image'), $image, array('fType' => 1)); ?>
        
        <div class="ccm-block-field-lists">
            <h2>Lists</h2>
            <?php $this->inc('form_lists.php', compact('lists', 'itemCount')); ?>
            <a class="addList"><?php echo t('Add List'); ?></a>
        </div>
        
        <h2>Button Label</h2>
        <?php $fieldName = ($itemCount > 0) ? 'col[' . $itemCount . '][button_label]' : 'def[button_label]'; ?>
        <?php echo $form->text($fieldName, $col['buttonLabel']); ?>
        
        <h2>Button Link</h2>
        <?php $fieldName = ($itemCount > 0) ? 'col[' . $itemCount . '][button_link]' : 'def[button_link]'; ?>
        <?php echo $pageSelector->selectPage($fieldName, $col['buttonLink'], ''); ?>
    </div>
</div>
