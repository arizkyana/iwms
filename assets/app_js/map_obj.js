var map_obj = {
    marker_list: [],
	mapa : undefined,
	init: function(){
		google.maps.event.addDomListener(window, 'load', map_obj.init);

		var mapOptions1 = {
            zoom: 12,
            center: new google.maps.LatLng(-6.2825729,107.1270065),
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };

        var mapElement1 = document.getElementById('mapa');

        // Create the Google Map using elements
        map_obj.mapa = new google.maps.Map(mapElement1, mapOptions1);
        


        map_obj.f_resize();
	},
    f_addMarker: function(opt){
        var image = {
          url: opt.map_icon,
          size: new google.maps.Size(71, 71),
          origin: new google.maps.Point(0, 0),
          anchor: new google.maps.Point(17, 34),
          scaledSize: new google.maps.Size(25, 25)
        };
        var marker = new google.maps.Marker({ 
            draggable: false,
            size:new google.maps.Size(10, 32),     
             origin: new google.maps.Point(0, 0),
             scaledSize: new google.maps.Size(25, 25),
            icon:  image,
            map: map_obj.mapa,
            position: {lat: opt.lat, lng: opt.lng},
        });

        marker.marker_id=opt.id;
        marker.src_data = opt;
        
        marker.infowindow = new google.maps.InfoWindow({
                content: "<img style='float:left;margin-right:4px' src='" + opt.map_icon + "' />" +  "<div style='float:left'><strong>" + opt.nama_lokasi +  " </strong></div><br/><div >" + opt.alamat + "</div>",
                maxWidth: 300
        });
        
        marker.addListener('click', function() {
            marker.infowindow.open(map_obj.mapa, marker);
        });

        map_obj.marker_list.push(marker);
    },
    f_clearMarkers: function(){
        for(var i in map_obj.marker_list){
            map_obj.marker_list[i].setMap(null);
        }

        //reinitiate markers
        map_obj.marker_list=[];
    },
	f_setMarkerPos: function (location) {
        map_obj.marker.setPosition(location);
    },
    f_getLatLngAddress: function(lat, lng, callback){
    	var url = "http://maps.googleapis.com/maps/api/geocode/json?latlng=" + lat + "," + lng + "&sensor=true";
        $.get(url, function(res){
            if(callback){callback(res)};
        });
    },
    f_resize: function(){
        var mapHeight=$('.page-content').css('min-height');
        var headHeight =$('.portlet-title').height();
        var iMapHeight = mapHeight.replace("px","");
        mapHeight = (parseInt(iMapHeight) - headHeight)+"px";
        $('#mapa').height(mapHeight);
    }
}

$( window ).resize(function() {
  map_obj.f_resize();
});
