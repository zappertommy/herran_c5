<?php defined('C5_EXECUTE') or die(_("Access Denied."));

class FirstBlogPackage extends Package {
    protected $pkgHandle = 'first_blog';
    protected $appVersionRequired = '5.5.0';
    protected $pkgVersion = '0.9.0';
    
    public function getPackageName() {
        return t("First Blog");
    }
    
    public function getPackageDescription() {
        return t("Simple blogging system for concrete5 websites");
    }
    
    public function install() {
        $pkg = parent::install();
        
        ## New page type
        Loader::model('collection_types');
        Loader::model('collection');
        
        if(!is_object(CollectionType::getByHandle('first_blog_post'))) {
            $data['ctHandle'] = 'ap_blog_post';
            $data['ctName'] = t('Blog Post');
            $pt = CollectionType::add($data, $pkg);
            
            ## Install two blocks to page type
            $pt = CollectionType::getByHandle('first_blog_post'); 
            $mt = $pt->getMasterTemplate();
            $ctB = BlockType::getByHandle('content');
            $npB = BlockType::getByHandle('next_previous');
            $mt->addBlock($ctB, 'Main', array('btConfig' => '1', 'content' => 'Your blog post goes here!'));
            $pNConfig = array(
                'linkStyle' => 'page_name',
                'showArrows' => '1',
                'loopSequence' => '1',
                'excludeSystemPages' => '1' 
            );
            $mt->addBlock($npB, 'Previous Next', $pNConfig);
        }
    }
}