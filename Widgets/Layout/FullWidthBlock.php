<?php
namespace bundles\builder\Widgets\Layout;

use Library\Core\Widget;

/**
 * Basic full width block header widget class
 *
 *
 * @author niko
 *
 */
class FullWidthBlock extends Widget
{
    /**
     * Widget template file relative path
     * @var string
     */
    protected $sTplPath = 'widgets/layout/FullWidthBlock.tpl';

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