<?php
namespace bundles\builder\Controllers;

use Library\Core\Auth;

/**
 *
 * @author info
 */
class HomeController extends Auth
{

    public function __preDispatch()
    {
        $this->oView->registerClientComponent('dragndrop');
    }

    public function __postDispatch()
    {}

    public function indexAction()
    {
        $this->oView->render($this->aView, 'home/index.tpl');
    }
}


