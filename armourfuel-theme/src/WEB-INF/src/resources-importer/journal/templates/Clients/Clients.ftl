<div id="clients" class="plu">
    <div class="section primary-section">
        <div class="triangle"></div>
        <div class="container">
            <div class="title">
                <h1>${Title.getData()}</h1>
                <p>${Description.getData()}</p>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="testimonial">
                        <p>${Client1.Description1.getData()}</p>
                        <div class="whopic">
                            <div class="arrow"></div>
                            <img src="${Client1.Image1.getData()}" class="centered" alt="client 1">
                            <strong>${Client1.getData()}
                                <small>${Client1.Company1.getData()}</small>
                            </strong>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="testimonial">
                        <p>${Client2.Description2.getData()}</p>
                        <div class="whopic">
                            <div class="arrow"></div>
                            <img src="${Client2.Image2.getData()}" class="centered" alt="client 2">
                            <strong>${Client2.getData()}
                                <small>${Client2.Company2.getData()}</small>
                            </strong>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="testimonial">
                        <p>${Client3.Description3.getData()}</p>
                        <div class="whopic">
                            <div class="arrow"></div>
                            <img src="${Client3.Image3.getData()}" class="centered" alt="client 3">
                            <strong>${Client3.getData()}
                                <small>${Client3.Company3.getData()}</small>
                            </strong>
                        </div>
                    </div>
                </div>
            </div>
            <p class="testimonial-text">
                ${Quote.getData()}
            </p>
        </div>
    </div>
</div>
<div class="plu section third-section">
    <div class="container centered">
        <div class="sub-section">
            <div class="title clearfix">
                <div class="pull-left">
                    <h3>Our Clients</h3>
                </div>
                <ul class="client-nav pull-right">
                    <li id="client-prev"><a class="prevc" ><span class="plu-icon-angle-left"></span></a></li>
                    <li id="client-next"><a class="nextc"><span class="plu-icon-angle-right"></span></a></li>
                </ul>
            </div>
            
            <div id="owl-demo">
                <#list Companies.getSiblings() as cur_images>
                    <div class="item">
                        <a href="${cur_images.Link.getData()}">
                            <img src="${cur_images.getData()}" alt="${cur_images.Image_Alter.getData()}">
                        </a>
                    </div>
                </#list>
            </div>
            
        </div>
    </div>
</div>