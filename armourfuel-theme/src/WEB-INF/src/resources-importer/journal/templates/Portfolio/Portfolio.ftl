<div class="plu section secondary-section" id="portfolio">
    <div class="triangle"></div>
    <div class="container">
    
        <div class=" title">
            <h1>${Title.getData()}</h1>
            <p>${Description.getData()}</p>
        </div>
        <ul class="nav plu-nav-pills">
            <li class="filter active" data-filter="all">
                <a href="#noAction">All</a>
            </li>
        </ul>
        <div style="clear:both; margin-bottom:30px"></div>
        
        <!-- Start details for portfolio project  -->
        <div id="single-project"> 
            <#assign count = 1 />
            <#list Project.getSiblings() as proj>
                <div id="slidingDiv${count}" class="toggleDiv row single-project">
                    <div class="col-md-6">
                        <img src="${proj.getData()}" alt="project 1" />
                    </div>
                    <div class="col-md-6">
                        <div class="project-description">
                            <div class="project-title clearfix">
                                <h3>${proj.Project_Title.getData()}</h3>
                                <span class="show_hide close">
                                    <i class="icon-remove"></i>
                                </span>
                            </div>
                            <div class="project-info">
                                <div>
                                    <span>Client</span>${proj.Project_Client.getData()}</div>
                                <div>
                                    <span>Date</span>${proj.Project_Date.getData()}</div>
                                <div>
                                    <span>Skills</span>${proj.Project_Skills.getData()}</div>
                                <div>
                                    <span>Link</span>${proj.Project_URL.getData()}</div>
                            </div>
                            <p>${proj.Project_Description.getData()}</p>
                        </div>
                    </div>
                </div>
                <#assign count = count + 1 />
            </#list>
            <!-- End details for portfolio project -->
            <ul id="portfolio-grid" class="thumbnails row">
                <#assign count = 1 />
                <#list Project.getSiblings() as cur_proj>
                    <li class="col-md-4 mix">
                        <div class="thumbnail">
                            <img src="${cur_proj.getData()}" alt="project 1">
                            <a href="#single-project" class="more show_hide" rel="#slidingDiv${count}">
                                <i class="icon-plus"></i>
                            </a>
                            <h3>${cur_proj.Project_Label.getData()}</h3>
                            <p>${cur_proj.Project_Caption.getData()}</p>
                            <div class="mask"></div>
                        </div>
                    </li>
                    <#assign count = count + 1 />
                </#list>
            </ul>
        </div>    
    </div>
</div>