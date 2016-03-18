$(function() {
    
    $('#addCol').on('click', function() {
        var container = $('#ccm-edit-rows');
        var defaultColumn = $('#defaultTemplate .ccm-edit-row').clone();
        var newCnt = container.find('.ccm-edit-row[data-col-new="1"]').length;
        container.append(defaultColumn);
        var newCol = $('#ccm-edit-rows .ccm-edit-row:last');
        var cnt = 0;
        
        $.each($('#ccm-edit-rows .ccm-edit-row'), function(){
           if (cnt < $(this).attr('data-col-id')) {
               cnt = $(this).attr('data-col-id');
           }
        });
        
        cnt = (!cnt) ? 1 : parseInt(cnt) + 1;
        newCnt = (!newCnt) ? 1 : parseInt(newCnt) + 1;
        
        $('#tabControl ul li').removeClass('active');
        $('#tabControl ul').append($('<li/>', {'data-col-id': cnt, html: 'New Column ' + newCnt, class: 'active'}));
        
        $('#ccm-edit-rows .ccm-edit-row').removeClass('active');
        newCol.addClass('active');
        newCol.attr('data-col-id', cnt);
        newCol.addClass('active');
        newCol.find('.ccm-col-label').append(' ' + newCnt);
        newCol.find('[name="def[title]"]').attr('name', 'col[' + cnt + '][title]')
            .attr('id', 'col[' + cnt + '][title]');
        newCol.find('[name="def[image_id]"]').attr('name', 'col[' + cnt + '][image_id]')
            .attr('id', 'col-image-' + cnt + '-fm-value');
        newCol.find('[name="def[button_label]"]').attr('name', 'col[' + cnt + '][button_label]')
            .attr('id', 'col[' + cnt + '][button_label]');
        newCol.find('[name="def[button_link]"]').attr('name', 'col[' + cnt + '][button_link]')
            .parent().find('.ccm-sitemap-select-page').attr('dialog-sender', 'col[' + cnt + '][button_link]')
            .parent().find('.ccm-sitemap-clear-selected-page').attr('dialog-sender', 'col[' + cnt + '][button_link]');
        newCol.find('[name="def[content]"]').attr('name', 'col[' + cnt + '][content][]');
        newCol.find('[id="def[image_id]-fm-selected"]').attr('id', 'col-image-' + cnt + '-fm-selected')
        newCol.find('[id="def[image_id]-fm-display').attr('id', 'col-image-' + cnt + '-fm-display')
            .attr('ccm-file-manager-field', 'col-image-' + cnt)
            .find('a').attr('onclick', "ccm_chooseAsset=false; ccm_alLaunchSelectorFileManager('col-image-" + cnt + "')");
    
        $(ccm_initSelectPage);
    
        newCol.find('.addList').on('click', function(){
            var cnt = $(this).closest('.ccm-edit-row').attr('data-col-id');
            var defaultList = $('#defaultTemplate .ccm-block-field-lists .ccm-edit-row-list').clone();

            var newList = defaultList.insertBefore($(this));
            newList.find('[name="def[content]"]').attr('name', 'col[' + cnt + '][content][]');
        });
    });
    
    $('.addList').on('click', function() {
        var cnt = $(this).closest('.ccm-edit-row').attr('data-col-id');
        var defaultList = $('#defaultTemplate .ccm-block-field-lists .ccm-edit-row-list').clone();
        
        var newList = defaultList.insertBefore($(this));
        newList.find('[name="def[content]"]').attr('name', 'col[' + cnt + '][content][]');
    });
    
    $('#ccm-edit-rows').on('click', 'a.deleteCol', function() {
        var parent = $(this).closest('.ccm-edit-row');
        
        parent.remove();
        $('#tabControl ul li.active').remove();
        $('#ccm-edit-rows .ccm-edit-row:first').addClass('active');
        $('#tabControl ul li:first').addClass('active');
    }).on('click', 'a.moveLeftCol', function() {
        var row = $(this).closest('.ccm-edit-row');
        var cnt = row.attr('data-col-id');
        var tab = $('#tabControl ul li[data-col-id="' + cnt + '"]');
        
        row.insertBefore(row.prev());
        tab.insertBefore(tab.prev());
    }).on('click', ' a.moveRightCol', function() {
        var row = $(this).closest('.ccm-edit-row');
        var cnt = row.attr('data-col-id');
        var tab = $('#tabControl ul li[data-col-id="' + cnt + '"]');
        
        row.insertAfter(row.next());
        tab.insertAfter(tab.next());
    })
    .on('click', 'a.deleteList', function() {
        var parent = $(this).closest('.ccm-edit-row-list');
        parent.remove();
    }).on('click', 'a.moveUpList', function() {
        var row = $(this).closest('.ccm-edit-row-list');
        
        if (row.prev().is('div')) {
            row.insertBefore(row.prev());
        }
    }).on('click', ' a.moveDownList', function() {
        var row = $(this).closest('.ccm-edit-row-list');
        
        if (row.next().is('div')) {
            row.insertAfter(row.next());
        }
    });
    
    $('#tabControl').on('click', 'li', function() {
        var cnt = $(this).attr('data-col-id');
        
        $('#tabControl ul li').removeClass('active');
        $(this).addClass('active');
        $.each($('#ccm-edit-rows .ccm-edit-row'), function() {
            if ($(this).attr('data-col-id') == cnt) {
                $(this).addClass('active');
            } else {
                $(this).removeClass('active');
            }
        });
    });
});

ccmValidateBlockForm = function() {
    var success = true;
    
    $.each($('.ccm-edit-row').find('[name^=col]'), function(i, row) {
        
        if ($(this).is('input[type=text]')) {
            if ($(this).val() === '') {
                ccm_addError('All titles must be filled in!');
                success = false;
                return false;
            }
        }

        if (success) {
            if ($(this).is('textarea')) {
                if ($(this).val().trim().length <= 0) {
                    ccm_addError('All lists must be filled in!');
                    success = false;
                    return false;
                }
            }
        }
    });

    return success;
};