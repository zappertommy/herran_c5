<?php if (!defined('C5_EXECUTE')) {header("HTTP/1.1 403 Access Denied"); return;} ?>

<div class="ccm-edit-row<?php echo ($itemCount == 1) ? ' active' : ''; ?>" data-item-id="<?php echo $itemCount; ?>" data-item-new="<?php echo ($itemCount == 0) ? 1 : 0; ?>">
    <div class="ccm-item-header">
        <div class="ccm-item-label">
            <?php echo ($itemCount == 0) ? 'New Item' : 'Item ' . $itemCount; ?>
        </div>
        <div class="ccm-edit-rowIcons">
            <div class="move-icons">
                <a class="moveLeftItem"></a>
                <a class="moveRightItem"></a>
            </div>
            <a class="deleteItem"></a>
        </div>
    </div>
    <div class="clearing"></div>
    <div class="ccm-block-field-group">
        <h2>Image</h2>
        <?php $fieldName = ($itemCount > 0) ? 'item[' . $itemCount . '][imageID]' : 'def[imageID]'; ?>
        <?php $fieldId = ($itemCount > 0) ? 'item-image-' . $itemCount : 'def[imageID]'; ?>
        <?php $image = ($item['imageID'] > 0) ? $controller->getImageObject($item['imageID']) : null; ?>
        <?php echo $asset->image($fieldId, $fieldName, t('Choose Image'), $image, array('fType' => 1)); ?>
        
        <h2>Logo</h2>
        <?php $fieldName = ($itemCount > 0) ? 'item[' . $itemCount . '][logoID]' : 'def[logoID]'; ?>
        <?php $fieldId = ($itemCount > 0) ? 'item-logo-' . $itemCount : 'def[logoID]'; ?>
        <?php $logo = ($item['logoID'] > 0) ? $controller->getImageObject($item['logoID']) : null; ?>
        <?php echo $asset->image($fieldId, $fieldName, t('Choose Logo'), $logo, array('fType' => 1)); ?>
        
        <h2>Content</h2>
        <?php $fieldName = ($itemCount > 0) ? 'item[' . $itemCount . '][content]' : 'def[content]'; ?>
        <?php $fieldRequired = ($itemCount > 0) ? ' data-form-validate="required"' : ''; ?>
        <textarea name="<?php echo $fieldName; ?>"<?php echo $fieldRequired; ?> class="ccm-input-textarea"><?php echo Loader::helper('text')->specialchars($controller->getContentEditMode($item['content']))?></textarea>
        
        <h2>Button Label</h2>
        <?php $fieldName = ($itemCount > 0) ? 'item[' . $itemCount . '][buttonLabel]' : 'def[buttonLabel]'; ?>
        <?php echo $form->text($fieldName, $item['buttonLabel']); ?>
        
        <h2>Button Link</h2>
        <?php $fieldName = ($itemCount > 0) ? 'item[' . $itemCount . '][buttonLink]' : 'def[buttonLink]'; ?>
        <?php echo $pageSelector->selectPage($fieldName, $item['buttonLink'], ''); ?>
    </div>
</div>
