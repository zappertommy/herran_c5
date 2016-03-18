<?php if (!defined('C5_EXECUTE')) {header("HTTP/1.1 403 Access Denied"); return;} ?>

<?php foreach ($lists as $list): ?>
    <div class="ccm-edit-row-list">
        <?php $fieldName = ($itemCount > 0) ? 'col[' . $itemCount . '][content][]' : 'def[content]'; ?>
        <textarea name="<?php echo $fieldName; ?>" rows="1"><?php echo $list['content']; ?></textarea>
        <div class="ccm-edit-listIcons">
            <div class="move-icons">
                <a class="moveUpList"></a>
                <a class="moveDownList"></a>
            </div>
            <a class="deleteList"></a>
        </div>
    </div>
<?php endforeach; ?>