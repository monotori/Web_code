<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>구글맵 추가하기</title>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBACDsIfuxeZyaDsJwB9MElZGWeF6h09bQ&callback=initMap"></script>
<script type="text/javascript" src="/js/jquery-1.12.0.js"></script>
<script type="text/javascript">
	var map;
	var myPosition = {
		latitude:37.478710, 
	    longitude:126.878700
	};
	function getMyLocation(){
	//브라우저가 지오로케이션 API를 지원하는지 여부를 검사하는 부분
	//navigator.geolocation객체가 존재하면 지원하는 것이다.
		if(navigator.geolocation){
	//지원하고 있다면 getCurrentPosition메소드를 호출해서 displayLocation이란 핸들러 함수를 호출함
	//navigator.geolocation속성은 지오로케이션 API전체를 포함하는 객체임.
	//이 API의 메인 메소드가 브라우저의 위치를 가져오는 일을 하는 getCurrentPosition임.
			navigator.geolocation.getCurrentPosition(displayLocation);
		}
		else{
			console.log("이런 지오로케이션이 제공되지 않아요.....");
		}
	}
	function displayLocation(position){
		console.log('displayLocation호출 성공');
		var latitude = position.coords.latitude;
		var longitude = position.coords.longitude;
		$("#location").text("당신의 위도 : "+latitude+", 당신의 경도 : "+longitude);
		showMap(position.coords);
	}
	function showMap(coords){
		var latNlong = new google.maps.LatLng(coords.latitude, coords.longitude);
		alert("latNlong : "+latNlong);
		
		var mapOptions = {
		          center: latNlong, // 지도에서 가운데로 위치할 위도와 경도(변수)
		          zoom: 18, // 지도 zoom단계
		          mapTypeId: google.maps.MapTypeId.ROADMAP
		};
		map = new google.maps.Map($("#location")[0], // id: map-canvas, body에 있는 div태그의 id와 같아야 함
	            mapOptions);
		
        var size_x = 60; // 마커로 사용할 이미지의 가로 크기
        var size_y = 60; // 마커로 사용할 이미지의 세로 크기
		
		var image = new google.maps.MarkerImage( 'http://www.larva.re.kr/home/img/boximage3.png',
                new google.maps.Size(size_x, size_y),
                '',
                '',
                new google.maps.Size(size_x, size_y));
		
		var parkIatNlong = new google.maps.LatLng('37.480430','126.879001');
		var marker = new google.maps.Marker({
			position: parkIatNlong,
			map:map,
			title: '좌표에요호홍' 
		})
		
		var content = "<div>";
		content += "<h2>맛있는 메뉴는 떡볶이와 돈까스에요</h2></br>";
		content += "떡볶이는 밀떡을 써서 훨씬 쫄깃하고요 ";
		content += "라면과 쫄면은 불기전에 먹어야해요 그리고 돈까스는 얇고 바삭하죠 볶음밥을 먹을때는 튀김만두와 계란을 남겨서 같이 볶아드셔야 맛이 훨씬 좋아요~^^";
		content += "그리고 3인 이상이면 콜라가 서비스☆";
		content += "</div>";
		
		console.log("map"+map);
		var infowindow = new google.maps.InfoWindow({ content: content});
		google.maps.event.addListener(marker, "click", function() {
            infowindow.open(map,marker);
        });
		
	}
	
</script>
</head>
<body onLoad="getMyLocation()">
<div id="location" style="width:800px;height:600px;">
<!-- 여러분의 위치를 여기에 나타내 봐요... -->
</div>
</body>
</html>



