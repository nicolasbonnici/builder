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
        $this->loadWidgets();
    }

    /**
     * Parse widgets
     */
    private function loadWidgets()
    {
        $aWidgets = Directory::scan(BUNDLES_PATH . self::WIDGETS_TPL_PATH);
        foreach ($aWidgets as $sWidget) {
            $sWidgetName = substr($sWidget, 0, strlen($sWidget) - strlen('.php'));
            $sWidgetClassName = self::WIDGETS_NAMESPACE . $sWidgetName;
            $this->aWidgets[] = new $sWidgetClassName;
        }
    }

    /**
     * Widgets accessor
     * @return array
     */
    public function getWidgets()
    {
        return $this->aWidgets;
    }
}


