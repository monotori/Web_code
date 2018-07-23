<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���۸� �߰��ϱ�</title>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBACDsIfuxeZyaDsJwB9MElZGWeF6h09bQ&callback=initMap"></script>
<script type="text/javascript" src="/js/jquery-1.12.0.js"></script>
<script type="text/javascript">
	var map;
	var myPosition = {
		latitude:37.478710, 
	    longitude:126.878700
	};
	function getMyLocation(){
	//�������� ���������̼� API�� �����ϴ��� ���θ� �˻��ϴ� �κ�
	//navigator.geolocation��ü�� �����ϸ� �����ϴ� ���̴�.
		if(navigator.geolocation){
	//�����ϰ� �ִٸ� getCurrentPosition�޼ҵ带 ȣ���ؼ� displayLocation�̶� �ڵ鷯 �Լ��� ȣ����
	//navigator.geolocation�Ӽ��� ���������̼� API��ü�� �����ϴ� ��ü��.
	//�� API�� ���� �޼ҵ尡 �������� ��ġ�� �������� ���� �ϴ� getCurrentPosition��.
			navigator.geolocation.getCurrentPosition(displayLocation);
		}
		else{
			console.log("�̷� ���������̼��� �������� �ʾƿ�.....");
		}
	}
	function displayLocation(position){
		console.log('displayLocationȣ�� ����');
		var latitude = position.coords.latitude;
		var longitude = position.coords.longitude;
		$("#location").text("����� ���� : "+latitude+", ����� �浵 : "+longitude);
		showMap(position.coords);
	}
	function showMap(coords){
		var latNlong = new google.maps.LatLng(coords.latitude, coords.longitude);
		alert("latNlong : "+latNlong);
		
		var mapOptions = {
		          center: latNlong, // �������� ����� ��ġ�� ������ �浵(����)
		          zoom: 18, // ���� zoom�ܰ�
		          mapTypeId: google.maps.MapTypeId.ROADMAP
		};
		map = new google.maps.Map($("#location")[0], // id: map-canvas, body�� �ִ� div�±��� id�� ���ƾ� ��
	            mapOptions);
		
        var size_x = 60; // ��Ŀ�� ����� �̹����� ���� ũ��
        var size_y = 60; // ��Ŀ�� ����� �̹����� ���� ũ��
		
		var image = new google.maps.MarkerImage( 'http://www.larva.re.kr/home/img/boximage3.png',
                new google.maps.Size(size_x, size_y),
                '',
                '',
                new google.maps.Size(size_x, size_y));
		
		var parkIatNlong = new google.maps.LatLng('37.480430','126.879001');
		var marker = new google.maps.Marker({
			position: parkIatNlong,
			map:map,
			title: '��ǥ����ȣȫ' 
		})
		
		var content = "<div>";
		content += "<h2>���ִ� �޴��� �����̿� �������</h2></br>";
		content += "�����̴� �ж��� �Ἥ �ξ� �̱��ϰ�� ";
		content += "���� �̸��� �ұ����� �Ծ���ؿ� �׸��� ����� ��� �ٻ����� �������� �������� Ƣ�踸�ο� ����� ���ܼ� ���� ���Ƶ�ž� ���� �ξ� ���ƿ�~^^";
		content += "�׸��� 3�� �̻��̸� �ݶ� ���񽺡�";
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
<!-- �������� ��ġ�� ���⿡ ��Ÿ�� ����... -->
</div>
</body>
</html>



