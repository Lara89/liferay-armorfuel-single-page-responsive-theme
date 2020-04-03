<nav id="navigation" role="navigation">
    <div id="plu-navbar" class="plu-navbar">
            <div class="plu-navbar-inner">
                <div class="container">
                
                    <a class="${logo_css_class}" href="${site_default_url}">
    					<img alt="${logo_description}" height="${site_logo_height}" src="${site_logo}" width="${site_logo_width}" />
    				</a>
                    
                    <!-- Navigation button, visible on small resolution -->
                    <button id="plu-btn-navbar" type="button" class= "btn-navbar" data-toggle="collapse" data-target="#plu-nav-collapse">
                        <i class="icon-reorder"></i>
                    </button>
                    <!-- Main navigation -->
                    <div id="plu-nav-collapse" class="nav-collapse collapse pull-right show">
                        <ul class="nav" id="top-navigation"></a>
                            <#if is_signed_in>
                                <#list nav_items as nav_item>
                                    <#if nav_item.getName()?lower_case == "home">
                                        <#if nav_item.isSelected()>
                                            <li class="active dropdown"><a href="#home" class="dropdown-toggle" data-toogle="dropdown">Home</a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#service">Services</a></li> 
                                                    <li><a href="#portfolio">Portfolio</a></li> 
                                                    <li><a href="#clients">Clients</a></li>                                         
                                                    <li><a href="#about">About</a></li> 
                                                </ul>
                                            </li>
                                        <#else>
                                            <li class="dropdown"><a href="${nav_item.getURL()}" class="dropdown-toggle" data-toogle="dropdown">Home</a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="${nav_item.getURL()}#service">Services</a></li> 
                                                    <li><a href="${nav_item.getURL()}#portfolio">Portfolio</a></li> 
                                                    <li><a href="${nav_item.getURL()}#clients">Clients</a></li>                                         
                                                    <li><a href="${nav_item.getURL()}#about">About</a></li> 
                                                </ul>
                                            </li>
                                        </#if>
                                    <#else>
                                        <#if nav_item.isSelected()>
                                            <li class="active"><a href="${nav_item.getURL()}">${nav_item.getName()}</a></li>
                                        <#else>
                                            <li><a href="${nav_item.getURL()}">${nav_item.getName()}</a></li>
                                        </#if>
                                    </#if>
                                </#list>
                            <#else>
                                <li>
                                    <a data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}" id="sign-in" rel="nofollow">${sign_in_text}</a>
                                </li>
                            </#if> 
                        </ul>
                    </div>
                    <!-- End main navigation -->
                </div>
            </div>
        </div>
</nav>