
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