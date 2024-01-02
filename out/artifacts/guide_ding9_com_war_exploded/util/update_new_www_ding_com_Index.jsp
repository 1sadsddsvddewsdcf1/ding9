<%@ page import="java.io.InputStream"%>
<%@ page import="java.io.InputStreamReader"%>
<%@ page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String command = "sh /home/ding9/update_new_ding9_index";
	try {
		Runtime r = Runtime.getRuntime();
		Process proc = r.exec(command);
		InputStream stderr = proc.getErrorStream();
		InputStreamReader isr = new InputStreamReader(stderr);
		BufferedReader br = new BufferedReader(isr);
		String line = null;
		//System.out.println("<ERROR>");
		while ((line = br.readLine()) != null)
			System.out.println(line);
		//System.out.println("</ERROR>");
		int exitVal = proc.waitFor();
		out.println("Process exitValue: " + exitVal);
		if (exitVal == 0)
			out.println("执行成功");
		else
			out.println("执行失败");
		
	} catch (Throwable t) {
		t.printStackTrace();
	}
%>

