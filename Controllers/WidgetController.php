<?php
namespace bundles\builder\Controllers;

use Library\Core\Auth;
use Library\Core\Files;
use bundles\builder\Models\WidgetsModel;
/**
 *
 * @author info
 */
class WidgetController extends Auth
{

    public function __preDispatch()
    {
    }

    public function __postDispatch()
    {}

    public function indexAction()
    {
        $this->oView->render($this->aView, 'widget/index.tpl');
    }

    public function listAction()
    {
        $oWidgetsModel = new WidgetsModel();
        $aWidgets = $oWidgetsModel->getWidgets();
        foreach ($aWidgets as $oWidget) {
            // Set the "menu" render mode for each widget and render them on an array for the view
            $oWidget->setRenderMode('menu');
            $this->aView['aWidgets'][$oWidget->getName()] = $oWidget->render();
        }
        $this->oView->render($this->aView, 'widget/list.tpl');

    }
}


