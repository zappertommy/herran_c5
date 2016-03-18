$(function() {
    
    $('#addItem').on('click', function() {
        var container = $('#ccm-edit-rows');
        var defaultItem = $('#defaultTemplate .ccm-edit-row').clone();
        var newCnt = container.find('.ccm-edit-row[data-item-new="1"]').length;
        container.append(defaultItem);
        var newItem = $('#ccm-edit-rows .ccm-edit-row:last');
        var cnt = 0;
        
        $.each($('#ccm-edit-rows .ccm-edit-row'), function(){
           if (cnt < parseInt($(this).attr('data-item-id'))) {
               cnt = $(this).attr('data-item-id');
           }
        });
        
        cnt = (!cnt) ? 1 : parseInt(cnt) + 1;
        newCnt = (!newCnt) ? 1 : parseInt(newCnt) + 1;
        
        $('#tabControl ul li').removeClass('active');
        $('#tabControl ul').append($('<li/>', {'data-item-id': cnt, html: 'New Item ' + newCnt, class: 'active'}));
        
        $('#ccm-edit-rows .ccm-edit-row').removeClass('active');
        newItem.addClass('active');
        newItem.attr('data-item-id', cnt);
        newItem.addClass('active');
        newItem.find('.ccm-item-label').append(' ' + newCnt);
        newItem.find('[name="def[imageID]"]').attr('name', 'item[' + cnt + '][imageID]')
            .attr('id', 'item-image-' + cnt + '-fm-value');
        newItem.find('[id="def[imageID]-fm-selected"]').attr('id', 'item-image-' + cnt + '-fm-selected')
        newItem.find('[id="def[imageID]-fm-display').attr('id', 'item-image-' + cnt + '-fm-display')
            .attr('ccm-file-manager-field', 'item-image-' + cnt)
            .find('a').attr('onclick', "ccm_chooseAsset=false; ccm_alLaunchSelectorFileManager('item-image-" + cnt + "')");
        newItem.find('[name="def[logoID]"]').attr('name', 'item[' + cnt + '][logoID]')
            .attr('id', 'item-logo-' + cnt + '-fm-value');
        newItem.find('[id="def[logoID]-fm-selected"]').attr('id', 'item-logo-' + cnt + '-fm-selected')
        newItem.find('[id="def[logoID]-fm-display').attr('id', 'item-logo-' + cnt + '-fm-display')
            .attr('ccm-file-manager-field', 'item-logo-' + cnt)
            .find('a').attr('onclick', "ccm_chooseAsset=false; ccm_alLaunchSelectorFileManager('item-logo-" + cnt + "')");
        newItem.find('[name="def[content]"]').attr('name', 'item[' + cnt + '][content]')
            .attr('data-form-validate', 'required');
        newItem.find('[name="def[buttonLabel]"]').attr('name', 'item[' + cnt + '][buttonLabel]')
            .attr('id', 'item[' + cnt + '][buttonLabel]');
        newItem.find('[name="def[buttonLink]"]').attr('name', 'item[' + cnt + '][buttonLink]')
            .parent().find('.ccm-sitemap-select-page').attr('dialog-sender', 'item[' + cnt + '][buttonLink]')
            .parent().find('.ccm-sitemap-clear-selected-page').attr('dialog-sender', 'item[' + cnt + '][buttonLink]');
        
        $(ccm_initSelectPage);
    });
    
    $('#ccm-edit-rows').on('click', 'a.deleteItem', function() {
        var parent = $(this).closest('.ccm-edit-row');
        
        parent.remove();
        $('#tabControl ul li.active').remove();
        $('#ccm-edit-rows .ccm-edit-row:first').addClass('active');
        $('#tabControl ul li:first').addClass('active');
    }).on('click', 'a.moveLeftItem', function() {
        var row = $(this).closest('.ccm-edit-row');
        var cnt = row.attr('data-item-id');
        var tab = $('#tabControl ul li[data-item-id="' + cnt + '"]');
        
        row.insertBefore(row.prev());
        tab.insertBefore(tab.prev());
    }).on('click', ' a.moveRightItem', function() {
        var row = $(this).closest('.ccm-edit-row');
        var cnt = row.attr('data-item-id');
        var tab = $('#tabControl ul li[data-item-id="' + cnt + '"]');
        
        row.insertAfter(row.next());
        tab.insertAfter(tab.next());
    });
    
    $('#tabControl').on('click', 'li', function() {
        var cnt = $(this).attr('data-item-id');
        
        $('#tabControl ul li').removeClass('active');
        $(this).addClass('active');
        $.each($('#ccm-edit-rows .ccm-edit-row'), function() {
            if ($(this).attr('data-item-id') == cnt) {
                $(this).addClass('active');
            } else {
                $(this).removeClass('active');
            }
        });
    });
});

ccmValidateBlockForm = function() {
    var success = true;
    var fieldName = '';
    var fieldVal = '';
    
    $.each($('[data-form-validate="required"]'), function() {
        if (!$(this).closest('.ccm-block-field-group').hasClass('header')) {
            fieldName = $(this).closest('.ccm-block-field-group').parent().find('.ccm-col-header .ccm-col-label').html();
            fieldName = fieldName + ' ' + $(this).prev().html();
        } else {
            fieldName = $(this).prev().html();
        }
        
        fieldVal = $(this).val();
        
        if (fieldVal.trim().length <= 0) {            
            ccm_addError(fieldName + ' must be filled in!');
            success = false;
            return false;
        }
    });
    
    return success;
};