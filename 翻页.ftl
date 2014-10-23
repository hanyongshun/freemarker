
//需要当前页码和总页码
<a href="?pageIndex=1">首页</a>    
<#if result.pageIndex-1==0>  
        <a href="?pageIndex=1">上一页</a>   
        <#else>  
         <a href="?pageIndex=${result.pageIndex-1}">上一页</a>  
</#if>   
<#if result.pageIndex == result.pageCount>  
        <a href="?pageIndex=${result.pageCount}">下一页</a>  
        <#else>  
         <a href="?pageIndex=${result.pageIndex+1}">下一页</a>  
</#if>  
<a href="?pageIndex=${result.pageCount}">尾页</a> 





//需要总个数
var totalSize=${total};
var page=Math.ceil(totalSize/10);
//var pageSize=parseInt(util.getQueryString("pageSize"));
var currentPage=parseInt(util.getQueryString("currentPage"));
//$("#page").append("<li><a href='#'>&laquo;</a></li>");
for(var i=1;i<=page;i++){
	if (isNaN(currentPage)) {currentPage=1};
	var url=util.replaceQueryString('currentPage',i);
	if(currentPage==i)
		$("#page").append("<li><a class='currentPage' href='"+url+"'>"+i+"</a></li>");
	else 
		$("#page").append("<li><a href='"+url+"'>"+i+"</a></li>");
}
//$("#page").append("<li><a href='#'>&raquo;</a></li>");



//需要当前页码和当前请求每页个数
//纯js
var size=$("#contentTable").children("tbody").children("tr").length-1;
var querySize=parseInt(util.getQueryString("pageSize"));
var page=parseInt(util.getQueryString("currentPage"));

var lastPage=true;
var nextPage=false;
if(querySize==size)
	nextPage=true;
if(page==1)
	lastPage=false;

var url1=util.replaceQueryString('currentPage',page-1);
var url2=util.replaceQueryString('currentPage',page+1);
if(lastPage==true)
	$("#page").append("<li><a href='"+url1+"'>上一页</a></li>");

if(page>5){
	for(var i=page-5;i<page;i++){
		var _url=util.replaceQueryString('currentPage',i);
		$("#page").append("<li><a href='"+_url+"'>"+i+"</a></li>");
	}
}

$("#page").append("<li><a class='currentPage' href='"+location.href+"'>"+page+"</a></li>");
if(nextPage==true)
	$("#page").append("<li><a href='"+url2+"'>下一页</a></li>");