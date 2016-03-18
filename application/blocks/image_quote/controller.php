<?php  defined('C5_EXECUTE') or die("Access Denied.");

class ImageQuoteBlockController extends BlockController {
	
    protected $btName = 'Image and Quote Block';
    protected $btDescription = 'Renders image and quote slider';
    protected $btTable = 'btDCImageQuote';
    protected $btInterfaceWidth = "700";
    protected $btInterfaceHeight = "450";
    protected $btCacheBlockRecord = true;
    protected $btCacheBlockOutput = true;
    protected $btCacheBlockOutputOnPost = true;
    protected $btCacheBlockOutputForRegisteredUsers = false;
    protected $btCacheBlockOutputLifetime = CACHE_LIFETIME;
    protected $btExportTables = array('btDCImageQuote', 'btImageQuoteItems');
    protected $defaultItem = array(
                        array('itemID' => 0, 'imageID' => 0, 'logoID' => 0, 'content' => null, 'buttonLabel' => '', 'buttonLink' => ''));

    public function getItems() {
        $db = Loader::db();
        return $db->getAll('SELECT * FROM btImageQuoteItems WHERE bID = ' . $this->bID);
    }

    public function add() {
        $html = Loader::helper('html');
        $this->addHeaderItem($html->css('/blocks/image_quote/css/form.css'));
        
        $this->set('items', $this->defaultItem);
        $this->set('defaultItem', $this->defaultItem);
    }

    public function edit() {
        $html = Loader::helper('html');
        $this->addHeaderItem($html->css('/blocks/image_quote/css/form.css'));
        
        $this->set('items', $this->getItems());
        $this->set('defaultItem', $this->defaultItem);
    }

    public function save($data) {
        global $c;
        
        $data['cID'] = $c->cID;
        
        $db = Loader::db();
        
        $item = $db->getAll('SELECT itemID FROM btImageQuoteItems ORDER BY itemID DESC LIMIT 1');
        
        $db->query('DELETE FROM btImageQuoteItems WHERE bID = ?', array($this->bID));
        
        $itemID = ($item) ? $item[0]['itemID'] : 0;
        
        foreach ($data['item'] as $prop) {
            
            $itemID++;

            $db->Execute('INSERT INTO btImageQuoteItems (itemID, bID, imageID, logoID, content, buttonLabel, buttonLink) VALUES (?, ?, ?, ?, ?, ?, ?)', 
                array($itemID, $this->bID, $prop['imageID'], $prop['logoID'], $prop['content'], $prop['buttonLabel'], $prop['buttonLink']));
        }
        
        parent::save($data);
    }
    
    public function view() {
        $this->set('items', $this->getItems());
    }
    
    public function getContentEditMode($content) {
        return Loader::helper('content')->translateFromEditMode($content);
    }
    
    public function getContent($content) {
        return Loader::helper('content')->translateFrom($content);
    }
    
    public function getImageObject($imageID) {
        return File::getByID($imageID);
    }
    
    public function getImage($imageID, $class = 'ccm-image-block', $align = false, $style = false, $id = null) {
        
        if ($imageID == 0) {
            return '';
        }
        
        $f = $this->getImageObject($imageID);
        $fullPath = $f->getPath();
        $relPath = $f->getRelativePath();
        $size = @getimagesize($fullPath);

        if (empty($size)) {
            return '';
        }

        $img = "<img border=\"0\" class=\"{$class}\" src=\"{$relPath}\" {$sizeStr} ";
        $img .= ($align) ? "align=\"{$align}\" " : '';
        $img .= ($style) ? "style=\"{$style}\" " : '';
        $img .= ($id) ? "id=\"{$id}\" " : "";
        $img .= "/>";

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
