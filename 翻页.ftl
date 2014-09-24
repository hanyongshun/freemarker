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
