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

    private $oWidgetModel;

    public function __preDispatch()
    {
        $this->oWidgetsModel = new WidgetsModel();
    }

    public function __postDispatch()
    {}

    public function indexAction()
    {
        $this->oView->render($this->aView, 'widget/index.tpl');
    }

    public function listAction()
    {
        foreach ($this->oWidgetsModel->get() as $oWidget) {
            // Set the "menu" render mode for each widget and render them on an array for the view
            $oWidget->setRenderMode('menu');
            $this->aView['aWidgets'][$oWidget->getName()] = $oWidget->render();
        }
        $this->oView->render($this->aView, 'widget/list.tpl');

    }

    public function loadAction()
    {
        if (isset($this->aParams['widget'], $this->aParams['rendermode'])) {
            $oWidget = $this->oWidgetsModel->get($this->aParams['widget']);
            $oWidget->setRenderMode($this->aParams['rendermode']);
            echo $oWidget->render();
        }
    }
}


