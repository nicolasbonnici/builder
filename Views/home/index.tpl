{% extends 'layout.tpl' %}
{% block meta_title %}Sample bundle{% endblock meta_title %} 

{% block meta_description %}

{% endblock meta_description %} 

{% block js %}{% endblock %} 

{% block css %}{% endblock %} 

{% block modal %}
<div class="modal fade" id="modal-sample" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content" id="modal-sample-content">
            <p>&nbsp;</p>
        </div>
    </div>
</div>
{% endblock %} 

{% block main %}
<div class="container-fluid">
    <div class="row clearfix">
        <div class="col-md-2 column">
            <img src="/lib/bundles/{{sBundle}}/img/icon.png" alt="App icon" />
        </div>
        <div class="col-md-10 column">
            <h1 class="showOnHover">
                {{sBundle}} <small class="targetToShow">1.0</small>
            </h1>
            <br />
            <ul class="nav nav-pills transparentBlackBg rounded">
                <li class="active"><a href="#" class="ui-sendxhr" data-url="/backend/blog/dashboard/" data-selector="#dashboard" role="button"> 
                    <span class="glyphicon glyphicon-home"></span> <strong>Sample item</strong></a>
                </li>

                <li class="dropdown pull-right">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
                        <span class="glyphicon glyphicon-cog"></span> <strong>{{tr['bundle_settings']}} </strong> <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#" type="button" class="ui-sendxhr" data-url="/backend/lifestream/createFeed/" data-selector="#modal-lifestream-content" role="button" data-toggle="modal"> 
                                <span class="glyphicon glyphicon-wrench"></span> {{tr['general_settings']}}
                            </a>
                        </li>
                        <li>
                            <a href="#" type="button" class="ui-sendxhr" data-url="/backend/lifestream/posts/"
                                data-selector="#dashboard" role="button"> <span class="glyphicon glyphicon-eye-open"></span>
                                    {{tr['privacy_settings']}}
                            </a>
                        </li>
                        <li>
                            <a href="#" type="button" class="ui-sendxhr" data-url="/backend/lifestream/posts/"
                                data-selector="#dashboard" role="button"> <span class="glyphicon glyphicon-question-sign"></span>
                                    {{tr['support_center']}}
                            </a>
                        </li>
                        <li>
                            <a href="#" type="button" class="ui-sendxhr" data-url="/backend/lifestream/posts/" data-selector="#dashboard" role="button"> 
                                <span class="glyphicon glyphicon-info-sign"></span> {{tr['about_this_bundle']}}
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>

        <div class="col-md-12 column ui-noSelect" data-snap-ignore="true">
            <div class="row">
                <div class="col-md-2 column ui-noSelect">
                    <ul id="widgets" class="list-unstyled col-md-12">
                    
                        <li class="ui-draggable widget-item well rounded">
                            <h3>{{oWidget.name}} <small>v{{oWidget.version}}</small></h3>
                            <p>{{oWidget.description}}</p>
                            <div class="widget-markup">
                                {{oWidget.markup}}
                            </div>
                        </li>
                        
                    </ul>
        
                    <ul id="modules" class="list-unstyled col-md-12">
                        <li class="module-item well rounded">
                            <p>Test</p>
                        </li>
                    </ul>
                </div>
                
                <div id="website-viewport" class="col-md-10">
                    <div id="website-viewport-content" class="container">
                        
                    </div>
                </div>
                
            </div>
        </div>
    </div>
</div>
{% endblock %}
