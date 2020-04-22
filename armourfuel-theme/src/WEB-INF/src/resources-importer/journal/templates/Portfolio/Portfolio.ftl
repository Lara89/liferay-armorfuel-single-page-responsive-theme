<#assign list = '' />
<div class="plu section secondary-section" id="portfolio">
    <div class="triangle"></div>
    <div class="container">
    
        <div class="title">
            <h1>${Title.getData()}</h1>
            <p>${Description.getData()}</p>
        </div>
        <ul class="nav plu-nav-pills" id="pills-conttainer">
            <li class="filter active control" data-filter="all">
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
                                    <span>Skills</span>${proj.Project_Skills.getData()}
                                </div>
                                <div>
                                    <a href="${proj.Project_URL.getData()}" target="_blank">
                                        <span>Link</span>${proj.Project_URL.getData()}
                                    </a>
                                </div>
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
                    <#assign list = list + '${cur_proj.Project_Skills.getData()}, ' />
                    <li class="col-md-4 mix visible ${cur_proj.Project_Skills.getData()?replace(',','')}">
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
<script>
    $(function(){

        (function(){        
            var list = '${list}';
            list = removeDuplicates(list.split(', '));
            $('#pills-conttainer').append(getHtml(list));
            console.log('hello');
            activeFilterTabs();
        })();

        function getHtml(list) {
            var html = '';
            list.forEach(function(element) {
                html += '<li class="filter" data-filter="' + element + '"><a href="#' + element  + '">' + element  + '</a></li>'
            });
            return html;
        }

        function removeDuplicates(array) {
            return array.filter(function(a, b) {
                if(a.length > 0){
                    return array.indexOf(a) === b
                }
            });
        };

        //Portfolio Tabs Filter
        function activeFilterTabs() {
            var container = $('#portfolio');
            var btn = container.find('.filter');
            btn.click(function () {
                //Get filter value
                var filterValue = $(this).attr('data-filter');

                //Clear all visible elements
                container.find('.mix').removeClass('visible');

                //Clear button active
                btn.removeClass('active');

                //Set button active
                $(this).addClass('active');

                //Add visible to required elements
                if (filterValue === 'all') {
                    container.find('.mix').addClass('visible');
                } else {
                    container.find('.' + filterValue).addClass('visible');
                }

                $('.toggleDiv').hide(500);
            });
        };
    });
</script>