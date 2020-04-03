<div id="contact" class="plu contact">
    <div class="section secondary-section">
        <div class="container">
            <div class="title">
                <h1>${Title.getData()}</h1>
                <p>${Description.getData()}</p>
            </div>
        </div>
        <div class="map-wrapper">
            <div class="map-canvas" id="map-canvas">Loading map...</div>
            <div class="container">
                <div class="row">
                    <div class="col-md-5 contact-form centered">
                        <h3>${Form_Title.getData()}</h3>
                        <div id="successSend" class="alert alert-success invisible">
                            <strong>Well done!</strong>Your message has been sent.
                        </div>
                        <div id="errorSend" class="alert alert-error invisible">There was an error.</div>
                        <form id="contact-form" action="${Form_Action_Url.getData()}">
                            <div class="form-group">
                                <div class="controls">
                                    <input class="form-control col-12" type="text" id="name" name="name" placeholder="Name" />
                                    <div class="error left-align" id="err-name">Please enter name.</div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="controls">
                                    <input class="form-control col-12" type="email" name="email" id="email" placeholder="Email" />
                                    <div class="error left-align" id="err-email">Please enter valid email adress.</div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="controls">
                                    <textarea class="form-control col-12" name="comment" id="comment" placeholder="Add your comment here"></textarea>
                                    <div class="error left-align" id="err-comment">Please enter your comment.</div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="controls">
                                    <button id="send-mail" class="message-btn">Send message</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="col-md-9 center contact-info">
                <p>${Address.getData()}</p>
                <p class="plu-info-mail">${Email.getData()}</p>
                <p>${Phone.getData()}</p>
                <div class="title">
                    <h3>We Are Social</h3>
                </div>
            </div>
            <div class="row centered">
                <ul class="social">
                    <#if Facebook_Link.getData()?has_content>
                    <li>
                        <a href="${Facebook_Link.getData()}" target="_blank">
                            <span class="plu-icon-facebook-circled"></span>
                        </a>
                    </li>
                    </#if>
                    <#if Twitter_Link.getData()?has_content>
                    <li>
                        <a href="${Twitter_Link.getData()}" target="_blank">
                            <span class="plu-icon-twitter-circled"></span>
                        </a>
                    </li>
                    </#if>
                    <#if Linked_in_Link.getData()?has_content>
                    <li>
                        <a href="${Linked_in_Link.getData()}" target="_blank">
                            <span class="plu-icon-linkedin-circled"></span>
                        </a>
                    </li>
                    </#if>
                    <#if Pinterest_Link.getData()?has_content>
                    <li>
                        <a href="${Pinterest_Link.getData()}" target="_blank">
                            <span class="plu-icon-pinterest-circled"></span>
                        </a>
                    </li>
                    </#if>
                    <#if YouTube_Link.getData()?has_content>
                    <li>
                        <a href="${YouTube_Link.getData()}" target="_blank">
                            <span class="icon-youtube"></span>
                        </a>
                    </li>
                    </#if>
                </ul>
            </div>
        </div>
    </div>
</div>
<script> 
function initializeMap(){
    var lat = '${Google_Map_Latitude.getData()}'; //Set your latitude.
    var lon = '${Google_Map_Longitude.getData()}'; //Set your longitude.

    var centerLon = lon - 0.0105;

    var myOptions = {
        scrollwheel: false,
        draggable: false,
        disableDefaultUI: true,
        center: new google.maps.LatLng(lat, centerLon),
        zoom: 15,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };

    //Bind map to elemet with id map-canvas
    var map = new google.maps.Map(document.getElementById('map-canvas'), myOptions);
    var marker = new google.maps.Marker({
        map: map,
        position: new google.maps.LatLng(lat, lon)
    });

    var infowindow = new google.maps.InfoWindow({
        content: "Hi"
    });

    google.maps.event.addListener(marker, 'click', function () {
        infowindow.open(map, marker);
    });

    infowindow.open(map, marker);
}
</script>
<!-- Load google maps api and call initMap function defined in main.js -->
<script src="https://maps.googleapis.com/maps/api/js?key=${Google_API.getData()}&callback=initializeMap" async defer></script>