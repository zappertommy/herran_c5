<?php if (!defined('C5_EXECUTE')) {header("HTTP/1.1 403 Access Denied"); return;} ?>

<?php if (is_array($items) &&  count($items)): ?>
    <div class="case-study-block">
        <div data-behaviour="case-study-block-slider" class="case-study-block__slider">
            <?php foreach($items as $item): ?>
                <div class="case-study-block__item">
                    <div class="case-study-block__media"><?php echo $controller->getImage($item['imageID']); ?></div>
                    <div class="container">
                        <div class="case-study-block__text">
                            <?php echo $controller->getImage($item['logoID'], 'case-study-block__logo'); ?>
                            <p><?php echo $item['content']; ?></p>
                            <a class="button case-study-block__button button--ghost button--ghost-black" href="<?php echo $controller->getLinkURL($item['buttonLink']); ?>"><?php echo $item['buttonLabel']; ?></a>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
        <div class="container case-study-block__arrows">
            <div class="case-study-block__arrow-prev">
                <button data-behaviour="custom-prev" type="button" data-role="none" class="slick-prev" aria-label="previous">Previous</button>
            </div>
            <div class="case-study-block__arrow-next">
                <button data-behaviour="custom-next" type="button" data-role="none" class="slick-next" aria-label="next" >Next</button>
            </div>
        </div>
    </div>
<?php endif; ?>