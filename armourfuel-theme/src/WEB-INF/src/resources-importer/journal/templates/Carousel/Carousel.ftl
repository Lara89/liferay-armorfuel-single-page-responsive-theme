<!-- Start home section -->
<div id="home" class="plu">
    <!-- Start cSlider -->
    <div id="da-slider" class="da-slider">
        <div class="triangle"></div>
        <!-- mask elemet use for masking background image -->
        <div class="mask"></div>
        <!-- All slides centred in container element -->
        <div class="container">
            <!-- Start slide -->
            <#list Slides.getSiblings() as slide>
            <div class="da-slide">
                <h2 class="fittext2">${slide.Title.getData()}</h2>
                <h4>${slide.Subtitle.getData()}</h4>
                <p>${slide.Description.getData()}</p>
                <a href="${slide.Link.getData()}" class="da-link button">Read more</a>
                <div class="da-img">
                    <img src="${slide.Img.getData()}" alt="image01" width="320">
                </div>
            </div>
            </#list>
            <!-- End slide -->
            <!-- Start cSlide navigation arrows -->
            <div class="da-arrows">
                <span class="da-arrows-prev"></span>
                <span class="da-arrows-next"></span>
            </div>
            <!-- End cSlide navigation arrows -->
        </div>
    </div>
</div>
<!-- End home section -->