var geocoder;
var area;
var iconlink;
var map;
var contextPath = jQuery("#contextPath").val();

function initialize() {
    var mapDiv = document.getElementById('addressLink');
    google.maps.event.addDomListener(mapDiv, 'click', function () {
        //var currAdd = "NIC Building, Shillong";
        var currAdd = jQuery.trim(jQuery("#placeCurrent").text());
        currAdd=(currAdd==="")?"India":currAdd;
        if (currAdd === "") {
            jQuery("#map-loaction").html("<img id='ma' src='"+contextPath+"/scripts/images/allcontinents.gif'/>");
        } else {
            geocoder = new google.maps.Geocoder();
            codeAddress(currAdd);            
        }
    });    
}

function codeAddress(currAdd) {
//    var data = '{"addresses":[{"placelived":"Agra, Delhi", "iscurrent":"N", "show_details":"P"}]}'//jQuery.trim(jQuery("#5_CS").text());
    var data = jQuery.trim(jQuery("#placelived").text());
    var newJ = jQuery.parseJSON(data);
    geocoder.geocode({'address': currAdd}, function (results, status) {
        if (status === google.maps.GeocoderStatus.OK)
        {
            area = results[0].geometry.location;
            var mapOptions = {
                zoom: 5,
                center: area,
                streetViewControl: false,
                backgroundColor: "#FFF",
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
            iconlink = "" + contextPath + "/scripts/images/google/map_marker_pink.png";
            placeMarker(area, iconlink, currAdd);
        } else {
            alert('Geocode was not successful for the following reason: ' + status);
        }
    });
    //jQuery.each(newJ.addresses, function (i, add) {
    jQuery.each(newJ, function (i, add) {
        geocoder.geocode({'address': add.placelived}, function (results, status) {
            if (status === google.maps.GeocoderStatus.OK)
            {
                if (add.iscurrent === 'N') {
                    area = results[0].geometry.location;
                    //iconlink = "map_marker_green.png";
                    iconlink = "" + contextPath + "/scripts/images/google/map_marker_blue.png";
                    placeMarker(area, iconlink, add.placelived);
                }
            } else {
                // alert('Geocode was not successful for the following reason: ' + status);
            }
        });
    });
}

function placeMarker(location, iconlink, place) {
    var marker = new google.maps.Marker({
        position: location,
        map: map,
        animation: google.maps.Animation.DROP,
        title: place,
        icon: new google.maps.MarkerImage(iconlink,
                new google.maps.Size(32, 32),
                new google.maps.Point(0, 0),
                new google.maps.Point(0, 32)
                )
    });
    var infowindow = new google.maps.InfoWindow({
        content: place
    });
    google.maps.event.addListener(marker, 'click', function () {
        //infowindow.open(map, marker);
        map.setZoom(map.getZoom() + 1);
        map.setCenter(marker.getPosition());
    });
}

function resetMap(){
    var x = map.getZoom();
    var c = map.getCenter();
    google.maps.event.trigger(map, 'resize');
    map.setZoom(x);
    map.setCenter(c);    
}

google.maps.event.addDomListener(window, 'load', initialize);