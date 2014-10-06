<?php
namespace bundles\builder\Widgets\Header;

use Library\Core\Widget;

/**
 * Basic bootstrap header widget class
 *
 *
 * @author niko
 *
 */
class Header extends Widget
{
    /**
     * Widget template file relative path
     * @var string
     */
    protected $sTplPath = 'widgets/header/header.tpl';

    /**
     * Widget author name
     * @todo User foreign key
     * @var unknown
     */
    protected $sAuthor = 'Nicolas Bonnici';

    /**
     * Widget version
     * @var string
     */
    protected $sVersion = '1.0';

}