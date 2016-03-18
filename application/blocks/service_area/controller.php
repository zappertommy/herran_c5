<?php  defined('C5_EXECUTE') or die("Access Denied.");

class ServiceAreaBlockController extends BlockController {
    
    protected $btName = 'Service Area';
    protected $btDescription = 'Service area card in columns';
    protected $btTable = 'btDCServiceArea';
    protected $btInterfaceWidth = "700";
    protected $btInterfaceHeight = "450";
    protected $btCacheBlockRecord = true;
    protected $btCacheBlockOutput = true;
    protected $btCacheBlockOutputOnPost = true;
    protected $btCacheBlockOutputForRegisteredUsers = false;
    protected $btCacheBlockOutputLifetime = CACHE_LIFETIME;
    protected $btExportTables = array('btDCServiceArea', 'btServiceAreaColumns', 'btServiceAreaLists');
    protected $defaultCol = array(
                        array('colID' => 0, 'title' => '', 'image_id' => 0, 'button_label' => '', 'button_link' => ''));
    protected $defaultLists = array(
                        array('content' => null));
    
    public function getColumns() {
        $db = Loader::db();
        return $db->getAll('SELECT * FROM btServiceAreaColumns WHERE bID = ' . $this->bID);
    }
    
    public function getListsByColumn($tabID) {
        $db = Loader::db();
        return $db->getAll('SELECT * FROM btServiceAreaLists WHERE bID = ' . $this->bID . ' AND colID = ' . $tabID);
    }
    
    public function add() {
        $html = Loader::helper('html');
        $this->addHeaderItem($html->css('/blocks/service_area/css/form.css'));

        $this->set('cols', $this->defaultCol);
        $this->set('defaultCol', $this->defaultCol);
        $this->set('defaultLists', $this->defaultLists);
    }
    
    public function edit() {
        $html = Loader::helper('html');
        $this->addHeaderItem($html->css('/blocks/service_area/css/form.css'));
        
        $this->set('cols', $this->getColumns());
        $this->set('defaultCol', $this->defaultCol);
        $this->set('defaultLists', $this->defaultLists);
    }
    
    public function save($data) {
        global $c;
        
        $data['cID'] = $c->cID;
        
        $db = Loader::db();
        
        $col = $db->getAll('SELECT colID FROM btServiceAreaColumns ORDER BY colID DESC LIMIT 1');
        
        $db->query('DELETE FROM btServiceAreaColumns WHERE bID = ?', array($this->bID));
        $db->query('DELETE FROM btServiceAreaLists WHERE bID = ?', array($this->bID));
        
        $colID = ($col) ? $col[0]['colID'] : 0;
        
        foreach ($data['col'] as $item) {
            
            $colID++;

            $db->Execute('INSERT INTO btServiceAreaColumns (colID, bID, title, imageID, buttonLabel, buttonLink) VALUES (?, ?, ?, ?, ?, ?)', 
                array($colID, $this->bID, $item['title'], $item['image_id'], $item['button_label'], $item['button_link']));
            
            if (is_array($item['content'])) {
                foreach ($item['content'] as $value) {
                    if ($value !== '') {
                        $db->Execute('INSERT INTO btServiceAreaLists (colID, bID, content) VALUES (?, ?, ?)', array($colID, $this->bID, $value));
                    }
                }
            }
        }
        
        parent::save($data);
    }
    
    public function view() {
        $this->set('cols', $this->getColumns());
    }
    
    public function getImageObject($imageID) {
        return File::getByID($imageID);
    }
    
    public function getImage($imageID) {
        $f = $this->getImageObject($imageID);
        $fullPath = $f->getPath();
        $relPath = $f->getRelativePath();
        $size = @getimagesize($fullPath);

        if (empty($size)) {

            return '';
        }

        $img = '<img src="' . $relPath . '" />';

        return $img;
    }
    
    public function getLinkURL($buttonLink) {

        if (!empty($buttonLink)) {
            $linkToC = Page::getByID($buttonLink);

            return (empty($linkToC) || $linkToC->error) ? '' : Loader::helper('navigation')->getLinkToCollection($linkToC);
        } else {

            return '';
        }
    }
}