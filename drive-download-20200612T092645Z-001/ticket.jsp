<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>승차권 예매</title>
  <script language="javascript">
  function check(){
  if(document.frm.departure.value==""){
	  alert("출발지를 선택하세요.");
	  document.frm.departure.focus();
	  return;
  }else if(document.frm.arrival.value==""){
	  alert("도착지를 선택하세요.");
	  document.frm.arrival.focus();
	  return;
  }else if(document.frm.departureDate.value==""){
	  alert("출발일을 선택하세요.");
	  document.frm.departureDate.focus();
	  return;
  	  }
  }
  </script>
 </head>
 <body>
 <center><h1>승차권 예매</h1></center>
 <hr></hr>
<form name="frm">
<center><table border="1" style="text-align:left;width:800px;height:300px"></center>
<tr>
<td>열차종류</td>
<td>
<input type="radio" name="train" value="ktx" checked>KTX
<input type="radio" name="train" value="srt">SRT
<input type="radio" name="train" value="sme">새마을
<input type="radio" name="train" value="mgh">무궁화
</td>
</tr>
<tr>
<td>여정경로</td>
<td>
<input type="radio" name="route" value="oneway" checked>편도
<input type="radio" name="route" value="roundtrip">왕복
</td>
</tr>
<tr>
<td>출발지</td>
<td>
<input type="text" name="departure" size="30" required>
<input type="submit" name="departureSearch" value="조회" onclick="check();">
</td>
</tr>
<tr>
<td>도착지</td>
<td>
<input type="text" name="arrival" size="30" required>
<input type="submit" name="arrivalSearch" value="조회" onclick="check();">
</td>
</tr>
<tr>
<td>출발일</td>
<td>
<input type="date" name="departureDate" size="30"></td>
</td>
</tr>
<tr>
<td>인원정보</td>
<td>
<select name="adultPersonnel" style="width:100px;height:25px">
	<option value="adult">어른0명</option>
	<option value="어른1명" selected="selected">어른1명</option>
	<option value="어른2명">어른2명</option>
	<option value="어른3명">어른3명</option>
	<option value="어른4명">어른4명</option>
	<option value="어른5명">어른5명</option>
	<option value="어른6명">어른6명</option>
	<option value="어른7명">어른7명</option>
	<option value="어른8명">어른8명</option>
	<option value="어른9명">어른9명</option>
</select>
<select name="childPersonnel" style="width:100px;height:25px">
	<option value="child">만 6세~12세</option>
	<option value="어린이1명">어린이1명</option>
	<option value="어린이2명">어린이2명</option>
	<option value="어린이3명">어린이3명</option>
	<option value="어린이4명">어린이4명</option>
	<option value="어린이5명">어린이5명</option>
	<option value="어린이6명">어린이6명</option>
	<option value="어린이7명">어린이7명</option>
	<option value="어린이8명">어린이8명</option>
	<option value="어린이9명">어린이9명</option>
</select>
<select name="elderPersonnel" style="width:100px;height:25px">
	<option value="elder">만 65세 이상</option>
	<option value="어르신1명">어르신1명</option>
	<option value="어르신2명">어르신2명</option>
	<option value="어르신3명">어르신3명</option>
	<option value="어르신4명">어르신4명</option>
	<option value="어르신5명">어르신5명</option>
	<option value="어르신6명">어르신6명</option>
	<option value="어르신7명">어르신7명</option>
	<option value="어르신8명">어르신8명</option>
	<option value="어르신9명">어르신9명</option>
</select>
</td>
</tr>
<tr>
<td colspan="2">
<input type="submit" name="submit" value="조회하기" onclick="check();">
</td>
</tr>
</table>
</form>
</body>
</html>