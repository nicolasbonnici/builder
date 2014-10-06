<?php
namespace bundles\builder\Widgets\Paragraphe;

use Library\Core\Widget;

/**
 * Basic bootstrap paragraphe widget class
 *
 *
 * @author niko
 *
 */
class Paragraphe extends Widget
{
    /**
     * Widget template file relative path
     * @var string
     */
    protected $sTplPath = 'widgets/paragraphe/paragraphe.tpl';

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