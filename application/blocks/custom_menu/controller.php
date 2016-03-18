<?php

namespace Application\Block\CustomMenu;

use Core;
use Page;
use File;
use Loader;

use Concrete\Core\Block\BlockController;

class Controller extends BlockController {
    
    protected $btTable = 'btCustomMenu';
    protected $btDefaultSet = 'herran_blocks';
    protected $btInterfaceWidth = 400;
    protected $btInterfaceHeight = 550;
    protected $btCacheBlockRecord = true;
    protected $btCacheBlockOutput = false; //true
    protected $btCacheBlockOutputOnPost = true;
    protected $btCacheBlockOutputForRegisteredUsers = true;
    protected $btWrapperClass = 'ccm-ui';
    protected $btExportTables = array('btCustomMenu', 'btCustomSubMenu');
    
    public function getBlockTypeName() {
        return t('Herran Menu');
    }

    public function getBlockTypeDescription() {
        return t('This custom menu is for Herran Theme.');
    }
    
    public function getFileID() {
        return $this->fID;
    }
    
    public function getFileObject() {
        return File::getByID($this->fID);
    }
    
    public function getSubMenus() {
        $db = Loader::db();
        return $db->getAll('SELECT * FROM btCustomSubMenu WHERE bID = ' . $this->bID);
    }
    
    public function view() {
        $menuImg = File::getByID($this->fID);
        if (!is_object($menuImg) || !$menuImg->getFileID()) {
            return false;
        }

        $this->set('menuImg', $menuImg);
        $this->set('menuLink', $this->getLinkURL());
        $this->set('subMenus', $this->getSubMenus());
    }
    
    public function getLinkURL() {
        if (!empty($this->menuLinkCID)) {
            $linkToC = Page::getByID($this->menuLinkCID);

            return (empty($linkToC) || $linkToC->error) ? '' : Core::make('helper/navigation')->getLinkToCollection($linkToC);
        } else {
            return '';
        }
    }
    
    public function getSubMenuLinkURL($menuLink) {
        if (!empty($menuLink)) {
            $subMenu = Page::getByID($menuLink);
            
            return (empty($subMenu) || $subMenu->error) ? '' : array('name' => $subMenu->getCollectionName(), 'link' => $subMenu->getCollectionLink());
        } else {
            return '';
        }
    }
    
    public function add() {
        $html = Loader::helper('html');
        $this->addHeaderItem($html->css('/application/blocks/custom_menu/css/form.css'));
    }
    
    public function edit() {
        $html = Loader::helper('html');
        $this->addHeaderItem($html->css('/application/blocks/custom_menu/css/form.css'));
        
        $this->set('subMenus', $this->getSubMenus());
    }
    
    public function save($data) {
        $db = Loader::db();
        
        $db->query('DELETE FROM btCustomSubMenu WHERE bID = ?', [$this->bID]);
        
        if ($data['hasSubMenu'] == 1) {
            foreach ($data['subMenuLinkCID'] as $item) {
                $db->Execute('INSERT INTO btCustomSubMenu (bID, menuLinkCID) VALUES (?, ?)', [$this->bID, $item]);
            }
        }
        
        parent::save($data);
    }
}