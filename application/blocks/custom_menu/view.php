<?php if ($hasSubMenu): ?>
    <li id="dropDown<?php echo $bID; ?>" class="text-center dropdown">
        <?php echo Core::make('html/image', array($menuImg))->getTag(); ?>
        <div class="hb-menu-drop">
            <ul>
                <?php foreach ($subMenus as $menu): ?>
                    <li>
                        <?php $prop = $controller->getSubMenuLinkURL($menu['menuLinkCID']); ?>
                        
                        <?php if (!empty($prop)): ?>
                            <a href="<?php echo $prop['link']; ?>">
                                <?php echo $prop['name']; ?>
                            </a>
                        <?php endif; ?>
                    </li>
                <?php endforeach; ?>
            </ul>
        </div>
    </li>
    
<script type="text/javascript">
    $(document).ready(function(){
        $('#dropDown<?php echo $bID; ?>').on('click', function(){
            $(this).find('.hb-menu-drop').toggle();
            $(this).find('.hb-menu-drop ul').toggle();
        });
    });
</script>
<?php else: ?>
    <li class="text-center">
        <a href="<?php echo $menuLink; ?>">
            <?php echo Core::make('html/image', array($menuImg))->getTag(); ?>
        </a>
    </li>
<?php endif; ?>