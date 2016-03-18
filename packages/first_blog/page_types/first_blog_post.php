<?php defined('C5_EXECUTE') or die(_("Access Denied."));

Loader::model('page');
$home = page::getByID(1);

$bP = page::getByPath("/blog")->cID;

if(!$bP) {
    ## Create a blog page
    $bPConfig = array(
        'pkgID' => $pkg->getPackageID(),
        'cName' => 'Blog',
        'cHandle' => 'blog'
    );
    $bP = $home->add(CollectionType::getByHandle('right_sidebar'), $bPConfig);
    
    ## Add Page list block
    $ctID = CollectionType::getByHandle('first_blog_post')->getCollectionTypeID();
    $bP = page::getByPath("/blog");
    $pLConfig = array(
        'num' => '10',
        'rss' => '1',
        'cParentID' => $bP->getCollectionID(),
        'ctID' => $ctID,
        'truncateSummaries' => '0',
        'displayFeaturedOnly' => '0',
        'paginate' => '1'
    ); 
    $bO = $bP->addBlock('page_list', 'Main', $pLConfig);