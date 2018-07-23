<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBACDsIfuxeZyaDsJwB9MElZGWeF6h09bQ&callback=initMap"></script>
<script type="text/javascript" src="../js/jquery-1.12.0.js"></script>
<title>Insert title here</title>

<script type="text/javascript">
      function initialize() {

    	
        var mapLocation = new google.maps.LatLng('37.482287', '126.877423'); // �������� ����� ��ġ�� ������ �浵
        var markLocation = new google.maps.LatLng('37.482287', '126.877423'); // ��Ŀ�� ��ġ�� ������ �浵
         
        var mapOptions = {
          center: mapLocation, // �������� ����� ��ġ�� ������ �浵(����)
          zoom: 18, // ���� zoom�ܰ�
          mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var map = new google.maps.Map(document.getElementById("map-canvas"), // id: map-canvas, body�� �ִ� div�±��� id�� ���ƾ� ��
            mapOptions);
         
        var size_x = 60; // ��Ŀ�� ����� �̹����� ���� ũ��
        var size_y = 60; // ��Ŀ�� ����� �̹����� ���� ũ��
         
        // ��Ŀ�� ����� �̹��� �ּ�
        var image = new google.maps.MarkerImage( 'http://www.larva.re.kr/home/img/boximage3.png',
                            new google.maps.Size(size_x, size_y),
                            '',
                            '',
                            new google.maps.Size(size_x, size_y));
         
        var marker;
        marker = new google.maps.Marker({
               position: markLocation, // ��Ŀ�� ��ġ�� ������ �浵(����)
               map: map,
               icon: image, // ��Ŀ�� ����� �̹���(����)
//             info: '��ǳ�� �ȿ� �� ����',
               title: '��ǥ����ȣȫ' // ��Ŀ�� ���콺 ����Ʈ�� ���ٴ��� �� �ߴ� Ÿ��Ʋ
        });
        
        var content = "�̰��� �������װŸ����̴�! <br/> ����ö Ÿ�� ����~"; // ��ǳ�� �ȿ� �� ����
         
        // ��Ŀ�� Ŭ������ ���� �̺�Ʈ. ��ǳ�� ��~
        var infowindow = new google.maps.InfoWindow({ content: content});
 
        google.maps.event.addListener(marker, "click", function() {
            infowindow.open(map,marker);
        });
         
        map.addListener('rightclick', function(e) {
            marker.setPosition(e.latLng);
            infowindow.setContent("Latitude: " + e.latLng.lat() +
              "<br>" + "Longitude: " + e.latLng.lng());
            infowindow.open(map, marker);
          });
         
      }
      google.maps.event.addDomListener(window, 'load', initialize);
      

      
</script>

</head>
<body>


<div id="map-canvas" style="width: 100%; height: 950px"></div>

</body>
</html>