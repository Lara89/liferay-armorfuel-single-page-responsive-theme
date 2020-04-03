<div class="plu section primary-section" id="about">
    <div class="triangle"></div>
    <div class="container">
        <div class="title">
            <h1>${Title.getData()}</h1>
            <p>${Description.getData()}</p>
        </div>
        <div class="row team">
            <div class="col-md-4" id="first-person">
                <div class="thumbnail">
                    <img src="${Team1.Image1.getData()}" alt="team 1">
                    <h3>${Team1.getData()}</h3>
                    <ul class="social">
                        <#if Team1.Show_Facebook_Link1.getData()?has_content>
                        <li>
                            <a href="">
                                <span class="plu-icon-facebook-circled"></span>
                            </a>
                        </li>
                        </#if>
                        <#if Team1.Show_Twitter_Link1.getData()?has_content>
                        <li>
                            <a href="">
                                <span class="plu-icon-twitter-circled"></span>
                            </a>
                        </li>
                        </#if>
                        <#if Team1.Show_Linkedin_Link1.getData()?has_content>
                        <li>
                            <a href="">
                                <span class="plu-icon-linkedin-circled"></span>
                            </a>
                        </li>
                        </#if>
                    </ul>
                    <div class="mask">
                        <h2>${Team1.Job_Title1.getData()}</h2>
                        <p>${Team1.Job_Description1.getData()}</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4" id="second-person">
                <div class="thumbnail">
                    <img src="${Team2.Image2.getData()}" alt="team 1">
                    <h3>${Team2.getData()}</h3>
                    <ul class="social">
                        <#if Team2.Show_Facebook_Link2.getData()?has_content>
                        <li>
                            <a href="">
                                <span class="plu-icon-facebook-circled"></span>
                            </a>
                        </li>
                        </#if>
                        <#if Team2.Show_Twitter_Link2.getData()?has_content>
                        <li>
                            <a href="">
                                <span class="plu-icon-twitter-circled"></span>
                            </a>
                        </li>
                        </#if>
                        <#if Team2.Show_Linkedin_Link2.getData()?has_content>
                        <li>
                            <a href="">
                                <span class="plu-icon-linkedin-circled"></span>
                            </a>
                        </li>
                        </#if>
                    </ul>
                    <div class="mask">
                        <h2>${Team2.Job_Title2.getData()}</h2>
                        <p>${Team2.Job_Description2.getData()}</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4" id="third-person">
                <div class="thumbnail">
                    <img src="${Team3.Image3.getData()}" alt="team 1">
                    <h3>${Team3.getData()}</h3>
                    <ul class="social">
                        <#if Team3.Show_Facebook_Link3.getData()?has_content>
                        <li>
                            <a href="">
                                <span class="plu-icon-facebook-circled"></span>
                            </a>
                        </li>
                        </#if>
                        <#if Team3.Show_Twitter_Link3.getData()?has_content>
                        <li>
                            <a href="">
                                <span class="plu-icon-twitter-circled"></span>
                            </a>
                        </li>
                        </#if>
                        <#if Team3.Show_Linkedin_Link3.getData()?has_content>
                        <li>
                            <a href="">
                                <span class="plu-icon-linkedin-circled"></span>
                            </a>
                        </li>
                        </#if>
                    </ul>
                    <div class="mask">
                        <h2>${Team3.Job_Title3.getData()}</h2>
                        <p>${Team3.Job_Description3.getData()}</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="about-text centered">
            <h3>About Us</h3>
            <p>${About_Us.getData()}</p>
        </div>
    </div>
</div>
<div class="plu section secondary-section">
    <div class="triangle"></div>
    <div class="container centered">
        <div class="highlighted-box center">
            <h1>${Hiring.getData()}</h1>
            <p>${Hiring.Hiring_Description.getData()}</p>
            <button class="button button-sp">Join Us</button>
        </div>
    </div>
</div>