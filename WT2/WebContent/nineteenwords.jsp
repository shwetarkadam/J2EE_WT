<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:import url="header.jsp"></c:import>
<h1 class="parents-title">Nineteen Words My Son Can Say</h1>

    <div class="body node-content prose">
      <p class="padding2"><em>This is a post by Kimberlee Rutan McCafferty,&nbsp;</em><em>mother to two sons on the autism spectrum and an Autism Family Partner at the Children&rsquo;s Hospital of Philadelphia (CHOP). Kim is also the author of a blog about her two children with autism, at&nbsp;<a href="http://autismmommytherapist.wordpress.com/">autismmommytherapist.wordpress.com</a>. Kim&#39;s book&nbsp;<strong>Raising Autism: Surviving the Early Years</strong>&nbsp;is on sale on&nbsp;<a href="http://www.amazon.com/Raising-Autism-Surviving-Early-Years/dp/1484912616/ref=sr_1_10?ie=UTF8&amp;qid=1383177178&amp;sr=8-10&amp;keywords=raising+autism">Amazon here.</a></em></p>
<p class="padding2">&ldquo;Come here Justin,&rdquo; I say quietly. And as always, my towel-clad boy obeys, happily sliding into my lap for his post-bath cuddle.&nbsp; We have a routine for our bed-time ritual that we adhere to religiously, and I can tell my son enjoys the familiarity, smiling at each step in our path to bed.&nbsp; Tonight however I&rsquo;ve decided to deviate just slightly from our norm, as I want to try something different within our usual arsenal of me saying the coveted nineteen words he&rsquo;s so recently acquired, then waiting eagerly for his response.</p>
<p class="padding2">Tonight I simply hold up the word list, and wait.</p>
<p class="padding2">He looks at my mouth curiously, waiting for those hard-won words to spill forth, but for once I just point at the list. Justin regards my outstretched finger for a good thirty seconds, then I swear I see a slight grin slide across his face as I listen in amazement.</p>
<p><img alt="" src="/home/shweta/Desktop/Dimple/Images/justin.jpg" style="width: 350px; height: 508px; margin: 5px; float: right;" 
/><pclass="padding2">&ldquo;Mama&rdquo;</p>
<p class="padding2">&ldquo;Dada&rdquo;</p>
<p class="padding2">&ldquo;Hop&rdquo;</p>
<p class="padding2">&ldquo;Pop&rdquo;</p>
<p class="padding2">&ldquo;Mop&rdquo;</p>
<p class="padding2">&ldquo;Top&rdquo;</p>
<p class="padding2">&ldquo;Zach&rdquo;</p>
<p class="padding2">Ten years ago we were told if he didn&rsquo;t speak by the age of seven he probably never would.&nbsp;</p>
<p class="padding2">We heard his first coherent utterances at ten.</p>
<p class="padding2">He takes a deep breath and shifts slightly on my lap, then forges on.</p>
<p class="padding2">&ldquo;Help&rdquo;</p>
<p class="padding2">&ldquo;Ball&rdquo;</p>
<p class="padding2">&ldquo;Apple&rdquo;</p>
<p class="padding2">&ldquo;Bubble&rdquo;</p>
<p class="padding2">&ldquo;Eat&rdquo;</p>
<p class="padding2">&ldquo;Door&rdquo;</p>
<p class="padding2">Ten years ago we were told there was a good chance he&rsquo;d never read.</p>
<p class="padding2">We watched him master his first sight words at three.</p>
<p class="padding2">Justin seems to gear himself up for his finale, not the slightest bit daunted by the fact he&rsquo;s facing new words he&rsquo;s just learned this week.</p>
<p class="padding2">&ldquo;Bed&rdquo; (a favorite)</p>
<p class="padding2">&ldquo;Boat&rdquo;</p>
<p class="padding2">&ldquo;Bus&rdquo;</p>
<p class="padding2">&ldquo;Boot&rdquo;</p>
<p class="padding2">&ldquo;Bat&rdquo;</p>
<p class="padding2">&ldquo;Bee&rdquo;</p>
<p class="padding2">I can feel his focus shift as his eyes slide away from the paper I&rsquo;m clutching. As I balance my boy I sense the display of his newfound skill is over, and I see him eyeing his toothbrush as he scoots off my lap.&nbsp; It&rsquo;s a momentous moment this, one I want to savor as I think of all the &ldquo;can&rsquo;ts&rdquo; and &ldquo;nevers&rdquo; I was told or read about a decade ago, many that sent me hurtling toward despair.&nbsp; Justin may never have conversational language, may never even use a technological device to solicit more than his basic wants and needs.</p>
<p class="padding2">But no matter what, he has this.&nbsp; He can read to his mama out loud.</p>
<p class="padding2">And I have a reminder to always push him to be his best self.</p>
<p>Nineteen words.</p>

    </div>
    
    
    
    
    
    
    
    
    
     
<script>  
var request;  
function postComment(){  
var comment=document.commentform.comment.value;  
var email=document.commentform.email.value;  
  
var url="comment.jsp?comment="+comment+"&email="+email;  
  
if(window.XMLHttpRequest){  
request=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
  
try{  
request.onreadystatechange=function(){  
if(request.readyState==4){  
var val=request.responseText;  
document.getElementById('mylocation').innerHTML=val;  
}  
}//end of function  
request.open("GET",url,true);  
request.send();  
}catch(e){alert("Unable to connect to server");}  
}  
</script>  
</head>  
<body>  
<h1>Post Your Comments Here !!!!</h1>  
<form name="commentform">  
Enter Comment:<br/>  
<textarea name="comment" style="width:300px;height:100px" required>  
</textarea><br/>  
Enter Email:<br/>  
<input type="text" name="email" required/><br/><br/>  
  
<input type="button" value="Post Comment" onclick="postComment()">  
</form>  
  
<span id="mylocation"></span>  
    
    
    
    
    
    
    <c:import url="footer.jsp"></c:import>
</body>
</html>