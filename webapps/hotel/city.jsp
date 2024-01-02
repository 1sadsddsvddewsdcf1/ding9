<%
  java.util.Random random = new java.util.Random();
  int k = random.nextInt();
  String arr[] = {
      "http://hotel.ding9.com/CS/City/Guangzhou.htm",
      "http://hotel.ding9.com/CS/City/Beijing.htm",
      "http://hotel.ding9.com/CS/City/Shenzhen.htm",
      "http://hotel.ding9.com/CS/City/Shanghai.htm",
      "http://hotel.ding9.com/CS/City/Hangzhou.htm",
      "http://hotel.ding9.com/CS/City/London.htm",
      "http://hotel.ding9.com/CS/City/New_York.htm",
      "http://hotel.ding9.com/CS/City/Paris.htm",
      "http://hotel.ding9.com/CS/City/San_Francisco.htm",
      "http://hotel.ding9.com/CS/City/Toronto.htm",
      "http://hotel.ding9.com/CS/City/Vancouver.htm",
  };
  int j = Math.abs(k % arr.length);

  response.sendRedirect(arr[j]);
%>
