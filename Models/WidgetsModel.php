<?php
namespace bundles\builder\Models;

use Library\Core\Directory;
/**
 *
 * @author info
 */
class WidgetsModel
{
    /**
     * The relative path where the widgets template files are stored
     * @var string
     */
    const WIDGETS_NAMESPACE = '\bundles\builder\Widgets\\';
    const WIDGETS_TPL_PATH  = 'builder/Widgets/';

    /**
     * Parsed widgets
     * @var array
     */
    private $aWidgets = array();

    /**
     * Instance constructor
     */
    public function __construct()
    {
        $this->load();
    }

    /**
     * Parse all available widgets
     */
    private function load()
    {
        foreach (Directory::scan(BUNDLES_PATH . self::WIDGETS_TPL_PATH) as $aWidget) {
            if ($aWidget['type'] === 'file') {
				$this->register($aWidget['name']);
            } else {
            	foreach ($aWidget['items'] as $sItem) {
					$this->register($aWidget['name'], $aWidget['name'] . '\\');
            	}            	
            }
        }
    }
    
    private function register($sWidgetName, $sWidgetType = '')
    {
    	$sWidgetClassName = self::WIDGETS_NAMESPACE . $sWidgetType . $sWidgetName;
    	$this->aWidgets[strtolower($sWidgetName)] = new $sWidgetClassName;
    }

    /**
     * Widgets accessor
     *
     * @param $sWidgetName (optional) The widget name otherwhise this method return all available widgets
     * @return array
     */
    public function get($sWidgetName = null)
    {
        if (! is_null($sWidgetName) && array_key_exists($sWidgetName, $this->aWidgets)) {
            return $this->aWidgets[$sWidgetName];
        }
        return $this->aWidgets;
    }
}


