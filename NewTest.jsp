<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>New Test</title>
<link rel="stylesheet" href="Bootstrap/css/bootstrap.min.css">
<script src="JQuery/jquery-3.3.1.min.js"></script>
<script src="Bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<script language="javascript">
		function getCurDate() {
			var d = new Date();
			var week;
			switch (d.getDay()) {
			case 1:
				week = "星期一";
				break;
			case 2:
				week = "星期二";
				break;
			case 3:
				week = "星期三";
				break;
			case 4:
				week = "星期四";
				break;
			case 5:
				week = "星期五";
				break;
			case 6:
				week = "星期六";
				break;
			default:
				week = "星期天";
			}
			var years = d.getFullYear();
			var month = add_zero(d.getMonth() + 1);
			var days = add_zero(d.getDate());
			var hours = add_zero(d.getHours());
			var minutes = add_zero(d.getMinutes());
			var seconds = add_zero(d.getSeconds());
			var ndate = years + "年" + month + "月" + days + "日 " + hours + ":"
					+ minutes + ":" + seconds + " " + week;
			var divT = document.getElementById("logInfo");
			divT.innerHTML = ndate;
		}
		function add_zero(temp) {
			if (temp < 10)
				return "0" + temp;
			else
				return temp;
		}
		setInterval("getCurDate()", 100);
	</script>

	<h3 id="logInfo" class="text-center"></h3>
</body>
</html>
