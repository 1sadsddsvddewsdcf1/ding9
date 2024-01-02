


///获取XMLHTTP对象
function GetXmlHttp(url)
{
    var agt = navigator.userAgent.toLowerCase();
    var is_opera = (agt.indexOf("opera") != -1);
    var is_ie = (agt.indexOf("msie") != -1) && document.all && !is_opera;
    var is_ie5 = (agt.indexOf("msie 5") != -1) && document.all;
    var xmlhttp;

  if (is_ie) {
    var control = (is_ie5) ? "Microsoft.XMLHTTP" : "Msxml2.XMLHTTP";
    try {
      xmlhttp = new ActiveXObject(control);
    } catch(e) {
      listener.innerHTML = "<font color='green'>1";
      return false;
      //alert("You need to enable active scripting and activeX controls");
      //DumpException(e);
    }
  } else {
    xmlhttp = new XMLHttpRequest();
  }

  //xmlhttp.onreadystatechange = processRequestChange;
  try
  {
    alert(url);
     xmlhttp.open("GET", url, false);
alert('aaa');

     xmlhttp.send(null);
     alert('bbb');
  }
  catch(e)
  {
    alert('异常');
     return false;
  }

if (xmlhttp.readyState == 4)
  {
    if (xmlhttp.status == 200)
    {
       return xmlhttp.responseText;
    }
    else
    {
        return false;
    }
  }
  else
  {
     return false;
  }



}




function GetXmlHttp2(url)
{

    var agt = navigator.userAgent.toLowerCase();
    var is_opera = (agt.indexOf("opera") != -1);
    var is_ie = (agt.indexOf("msie") != -1) && document.all && !is_opera;
    var is_ie5 = (agt.indexOf("msie 5") != -1) && document.all;
    var xmlhttp;

  if (is_ie) {
    var control = (is_ie5) ? "Microsoft.XMLHTTP" : "Msxml2.XMLHTTP";
    try {
      xmlhttp = new ActiveXObject(control);
    } catch(e) {
      listener.innerHTML = "<font color='green'>1";
      return false;
      //alert("You need to enable active scripting and activeX controls");
      //DumpException(e);
    }
  } else {
    xmlhttp = new XMLHttpRequest();
  }

  //xmlhttp.onreadystatechange = processRequestChange;
  try
  {
     xmlhttp.open("GET", url, false);

     xmlhttp.send(null);
  }
  catch(e)
  {
     return false;
  }


if (xmlhttp.readyState == 4)
  {
    if (xmlhttp.status == 200)
    {
       return xmlhttp.responseXML;
    }
    else
    {
        return false;
    }
  }
  else
  {
     return false;
  }



}

function test1234(){
    var url="/logon.do?username=gogogo&password=123456&rememberMe=true";
     var Status=GetXmlHttp(url);
     var flag=Status.getElementsByTagName("flag")[0].firstChild.data;
     alert(flag);

}


function LoginHtml(){
return "&nbsp;&nbsp;&nbsp;<span id=loading3>用户&nbsp;<input name='username' id='user' type='text' size='10' maxlength='20' class='flatinput' \/>&nbsp;密码&nbsp;<input name='password' id='psw' type='password' size='10' class='flatinput'/>&nbsp;<input name='' type='image' src='/images/login_btn.gif' onclick='Login();' align='absmiddle'/>&nbsp;<a href=''>注册</a>&nbsp;<a href=''>忘记密码</a></span>";
}

function LoginedHtml(user){
return "<img src='/images/log01.gif'>&nbsp;您好," + user + " <A class='teH1' href='#' onClick='logout();' >[退出]</a> <img height='13' width='13' src='/images/house.gif'> <a class='teH1' target='_blank' href='http://user.ding9.com'>我的顶九</a>";
}

function LoginedHtml2(user){
return "<img src='/images/log01.gif'>&nbsp;您好," + user + " <A class='teH1' target='_blank' href='http://user.ding9.com'>[请登录]</a>";
}

function LoginedHtml3(){
return "<img src='/images/log01.gif'>&nbsp;您好,欢迎来顶九！ <A class='teH11' target='_blank' href='http://user.ding9.com' >[请登录]</a> <A target='_blank' class='teH11' href='http://user.ding9.com/register/register.html' >[用户注册]</a>";
}



function Start(){
var cookieValue = Cookies.Get("SSOUserId");
var cookies_id=0;
if(cookieValue!=null){
cookies_id = cookieValue.split(":")[0];
}


      if( cookies_id!=0 && cookieValue!=null)
      {
        var usernameWithBase64 = cookieValue.split(":")[1];
        var username=decode64(usernameWithBase64);
         document.all.login3.innerHTML=this.LoginedHtml(username);

      }

      if( cookies_id==0 && cookieValue!=null){
         var usernameWithBase64 = cookieValue.split(":")[1];
         var username=decode64(usernameWithBase64);
         document.all.login3.innerHTML=this.LoginedHtml2(username);
      }

      if(cookies_id==0 && cookieValue==null)
      {
         document.all.login3.innerHTML=this.LoginedHtml3();
      }
}

function Login(){
     var username=document.all.username.value;
     var password=document.all.password.value;

      if( username =="")
       {
          alert("请输入用户名！");
        document.all.username.focus();
        return ;
       }


       if( password =="")
       {
          alert("请输入密码！");
        document.all.password.focus();
        return ;
       }
       document.all.username.disabled=true;
       document.all.password.disabled=true;

       document.all.loading3.innerHTML="&nbsp;&nbsp;<img src=/images/info_wait.gif  align='top'>  登录中…"



      var url="/logon.do?username="+ username +"&password="+ password +"&rememberMe=true";
      var Status=GetXmlHttp2(url);

      var flag=Status.getElementsByTagName("flag")[0].firstChild.data;
            //登陆成功成功
       if(flag==1){
      document.all.login3.innerHTML=this.LoginedHtml(username);
       }else{
       document.all.login3.innerHTML=this.LoginHtml();
       alert('密码输入错误！');
       }
}

function logout(){

  var url='/logout.do';
  var Status=GetXmlHttp2(url);
  var flag=Status.getElementsByTagName("flag")[0].firstChild.data;

  if(flag==1){
    document.all.login3.innerHTML=this.LoginedHtml3();
  }
}

var Cookies={
   Decode:function(str)
   {
　     var strArr;
　     var strRtn="";
       if( str != null && str.indexOf("a")>1)
       {
　           strArr=str.split("a");

　           for (var i=strArr.length-1;i>=0;i--)
             {
　               strRtn+=String.fromCharCode(eval(strArr[i]));
             }
　            return strRtn;
        }
        return null;
    } ,
  Code:function(str)
    {
　      var strRtn="";
　      for (var i=str.length-1;i>=0;i--)
　      {
　　         strRtn+=str.charCodeAt(i);
　　         if (i) strRtn+="a";
　      }
　      return strRtn;
     } ,
  Get:function(name)
    {
        var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");
        if(arr=document.cookie.match(reg))
        {
            return unescape(arr[2]);
        }
        else
        {
          return null;
      }
     },
    Set:function(name, value, expires, path, domain)
  {
        var   exp     =   new   Date();
        exp.setTime(exp.getTime() + expires*24*60*60*1000);
    document.cookie = name + "=" + escape (value) +
        ((expires) ? "; expires=" + exp.toGMTString() : "") +
        ((path) ? "; path=" + path : "") +
        ((domain) ? "; domain=" + domain : "");
    },
    Del:function(cookiesname)
    {
     var exp = new Date();
         exp.setTime(exp.getTime() - 1);
     var cval=this.Get(cookiesname);
         if(cval!=null) document.cookie=cookiesname +"="+cval+";expires="+exp.toGMTString();
    }
}

/*
var Users2={
   isLogind:false
   ,
   LoginHtml:function()
   {
        return "&nbsp;&nbsp;&nbsp;<span id=loading3>用户&nbsp;<input name='username' id='user' type='text' size='10' maxlength='20' class='flatinput' \/>&nbsp;密码&nbsp;<input name='password' id='psw' type='password' size='10' class='flatinput'/>&nbsp;<input name='' type='image' src='/images/login_btn.gif' onclick='Users2.Login();' align='absmiddle'/>&nbsp;<a href=''>注册</a>&nbsp;<a href=''>忘记密码</a></span>";
   }
   ,
   LoginedHtml:function(user)
   {
        return "&nbsp;&nbsp;欢迎您 【" + user + " 】| <A href='#' onClick='Users2.Logout();' >安全退出</a>";
   }
   ,
   Start:function()
   {
      if(Cookies.Get("SSOUserId") != "" && Cookies.Get("SSOUserId") != null )
      {
         document.all.login3.innerHTML=this.LoginedHtml(document.all.user.value);

      }
      else
      {
         document.all.login3.innerHTML=this.LoginHtml();
      }
   }
   ,//页头登陆
     Login:function()
  {
     //iResraechUser=document.all.user.value;
     //var password=document.all.psw.value;

     var username=document.all.username.value;
     var password=document.all.password.value;

      if( username =="")
       {
          alert("请输入用户名！");
        document.all.username.focus();
        return ;
       }


       if( password =="")
       {
          alert("请输入密码！");
        document.all.password.focus();
        return ;
       }
       document.all.username.disabled=true;
       document.all.password.disabled=true;

       document.all.loading3.innerHTML="&nbsp;&nbsp;<img src=/images/info_wait.gif  align='top'>  登陆中…"



      var url="/logon.do?username="+ username +"&password="+ password +"&rememberMe=true";
      var Status=GetXmlHttp2(url);

      var flag=Status.getElementsByTagName("flag")[0].firstChild.data;
            //登陆成功成功
       if(flag==1){
      document.all.login3.innerHTML=this.LoginedHtml(username);
       }else{
       document.all.login3.innerHTML=this.LoginHtml();
       alert('密码输入错误！');
       }

  }

,Logout:function(){
  var url='/logout.do';
  var Status=GetXmlHttp2(url);
  var flag=Status.getElementsByTagName("flag")[0].firstChild.data;

  if(flag==1){
    document.all.login3.innerHTML=this.LoginHtml();
  }


}


 }



*/







