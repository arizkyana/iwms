<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAkJA4ZGFREZKM8AmN8wSaSRcNooR2H6gI&callback"></script>
 <div class="portlet light bordered">
    <div class="portlet-title">
        <div class="caption">
            <i class="icon-bubble font-green-sharp"></i>
            <span class="caption-subject font-green-sharp bold uppercase">Wilayah</span>
        </div>
    </div>
    <div class="portlet-body">
        <ul class="nav nav-pills">
            <li class="active">
                <a href="#tab_2_1" data-toggle="tab"> Wilayah </a>
            </li>
            <li>
                <a href="#tab_2_2" data-toggle="tab"> From </a>
            </li>   
        </ul>
        <div class="tab-content">
            <div class="tab-pane fade active in" id="tab_2_1">
               <div class="portlet-body">
        <table class="table table-striped table-bordered table-hover dt-responsive" width="100%" id="sample_4">
            <thead>
                <tr>
                    <th >Wilayah</th>
                    <th >Alamat</th>
                    <th >Lat</th>
                    <th >Long</th>
                   
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Bank Mandiri Juanda</td>
                    <td>Jalan IR. Haji Juanda No.155, Bekasi Timur, Bekasi Jaya, Bekasi, Bekasi Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17112</td>
                    <td>-6.244995</td>
                    <td>107.007836</td>
                </tr>
                <tr>
                    <td>Juanda Motor</td>
                    <td>Jl. Ir. H. Juanda, Margahayu, Bekasi Tim., Bekasi, Jawa Barat 17113</td>
                    <td>-6.244963</td>
                    <td>107.007246</td>
                </tr>
                <tr>
                    <td>Bank CIMB Niaga Juanda Bekasi</td>
                    <td>Jalan Ir. Haji Juanda No.137, Bekasi Jaya, Bekasi Timur, Bekasi Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17113</td>
                    <td>-6.244291</td>
                    <td>107.006860</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>

<div class="tab-pane fade" id="tab_2_2" >
                                                





<style type="text/css">
body {font:10pt arial; }
.main { text-align:center; font:12pt Arial; width:100%; height:auto; }
.eventtext {width:100%; margin-top:20px; font:10pt Arial; text-align:left; line-height:25px; background-color:#EDF4F8;
padding:5px; border:1px dashed #C2DAE7;}
#mapa {width:100%; height:340px; border:5px solid #DEEBF2;}
ul {font:10pt arial; margin-left:0px; padding:5px;}
li {margin-left:0px; padding:5px; list-style-type:decimal;}
.code {border:1px dashed #cecece; background-color:#F7F7F7; padding:5px;}
.small {font:9pt arial; color:gray; padding:2px; }
.jimi { margin:0px;}
</style>

</head>

<body>

<div class="main">
    <div style="width:100%; margin:0px auto;">
        <div id="mapa"></div>
            <div class="eventtext">
                <div>Nama Wilayah &ensp;:
                    <input type="text" id="wilayah" style="width:300px; border:1px inset gray;"></span>
                        </div><br/>
                    <div>Alamat &emsp;&emsp;&ensp;&emsp; :
                    <textarea id="address" style="width:300px; border:1px inset gray;"> </textarea> </span>
                        </div><br/>
                    <div>Lat &emsp;&emsp;&emsp;&emsp;&emsp;&ensp;:
                    <input type="text" id="lat" style="width:300px; border:1px inset gray;" readonly></span>
                        </div><br/>
                    <div>Lng&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;:
                    <input type="text" id="lng" style="width:300px; border:1px inset gray;" readonly></span>
                        </div><br/>
                    <div>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                    <button type="button" class="btn blue" onclick="validateForm();" id="btn_submit">Simpan Data</button>
                </div> 
            </div>
        </div>
    </div>


<script type="text/javascript">
  google.maps.event.addDomListener(window, 'load', init);
    var marker, mapa;

    function init() {
    	var mapOptions1 = {
            zoom: 15,
            center: new google.maps.LatLng(-6.0660672,106.6252245),
            draggableCursor: 'url(images/arrow-up-left.png), default'
        };

        var mapElement1 = document.getElementById('mapa');

        // Create the Google Map using elements
        map1 = new google.maps.Map(mapElement1, mapOptions1);
        marker = new google.maps.Marker({                
            map: map1
        });

        google.maps.event.addListener(map1, 'click', function(event) {
           placeMarker(event.latLng);
        });

        $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {		 
		  	google.maps.event.trigger(map1, 'resize');
		});
        
    }

	function placeMarker(location) {
        marker.setPosition(location);
        getGeocode(location);
    }

    function getGeocode(location){            
        var url = "http://maps.googleapis.com/maps/api/geocode/json?latlng=" + location.lat() + "," +
                                location.lng() + "&sensor=true";
        $.get(url, function(res){
        	var address = "";            
            if(res.status=="OK"){
                address = res.results[0].formatted_address;                
                $('#address').val(address);
            }
            $('#lat').val(location.lat());
            $('#lng').val(location.lng());
        });
    }

</script>
<br />
            <div style="width:70%; margin:0 auto;">
        </div>
    </div>
</div>
</div>





