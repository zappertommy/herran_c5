<?php
    defined('C5_EXECUTE') or die("Access Denied.");
    
    $pageSelector = Loader::helper('form/page_selector');
    
    $assetLib = Loader::helper('concrete/asset_library');
    
    $bf = null;
    $args = array();
    
    if ($controller->getFileID() > 0) { 
        $bf = $controller->getFileObject();
    }
?>
<fieldset>
    <div class="form-group">
        <label class="control-label"><?php echo t('Image'); ?></label>
        <?php echo $assetLib->image('ccm-b-image', 'fID', t('Choose Image'), $bf, $args); ?>
    </div>
    <div class="form-group">
        <label class="control-label"><?php echo t('Link')?></label>
	<?php echo $pageSelector->selectPage('menuLinkCID', $menuLinkCID); ?>
    </div>
</fieldset>
<fieldset>
    <div class="form-group">
        <div class="checkbox" data-checkbox-wrapper="sub-menus">
            <label>
                <?php echo $form->checkbox('hasSubMenu', 1, $hasSubMenu); ?>
                <?php echo t('Has sub menu'); ?>
            </label>
        </div>
    </div>
    <div class="form-group sub-group">
        <div id="subList">
            <?php if ($subMenus): ?>
                <?php foreach ($subMenus as $key => $menu): ?>
                    <div class="sub-list" data-item-count="<?php echo $key + 1; ?>">
                        <ul>
                            <li><label><?php echo t('Link'); ?></label></li>
                            <li><span class="delete-list"></span></li>
                        </ul>
                        <?php echo $pageSelector->selectPage('subMenuLinkCID[]', $menu['menuLinkCID']); ?>
                    </div>
                <?php endforeach; ?>
            <?php endif; ?>
        </div>
        <button id="addSubMenu" type="button" class="btn btn-info"><?php echo t('Add Sub Menu'); ?></button>
    </div>
    <div id="tmpList">
        <div class="sub-list" data-item-count="">
            <ul>
                <li><label><?php echo t('Link'); ?></label></li>
                <li><span class="delete-list"></span></li>
            </ul>
            <div data-page-selector="tmpSubLinkID"></div>
        </div>
    </div>
</fieldset>
<script type="text/javascript">
    $(document).ready(function(){
        if ($('#hasSubMenu:checked').length) {
            $('.form-group.sub-group').show();
        }
        
        $('#hasSubMenu').on('click', function(){
            if ($(this).is(':checked')) {
                $('.sub-group').show();
            } else {
                $('.sub-group').hide();
            }
        });

        $('#addSubMenu').on('click', function(){
            var cnt = ($('#subList .sub-list:last').length) ? parseInt($('#subList .sub-list:last').attr('data-item-count')) + 1 : 1;

            $('#subList').append($('#tmpList .sub-list').clone());

            var list = $('#subList .sub-list:last');

            list.attr('data-item-count', cnt);
            list.find('[data-page-selector="tmpSubLinkID"]').attr('data-page-selector', 'subMenuLink'+cnt);
            list.find('.delete-list').on('click', function(){
                $(this).closest('.sub-list').remove();
            });

            $('[data-page-selector=subMenuLink'+cnt+']').concretePageSelector({inputName: 'subMenuLinkCID[]'});
        });

        $('.delete-list').on('click', function(){
            $(this).closest('.sub-list').remove();
        });
    });
</script>