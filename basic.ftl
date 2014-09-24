
//表示xx变量是否存在
<#if xx??>//或者<#if xx?exists>

<#else>

</#if>

//遍历list
<#list xx as lists>
	
	${lists.a}
	${lists.b}
	${lists.c}

</#list>

//遍历map
<#if xx??>
	<#list xx?keys as key> 
	   <tr>
           <td>${key}</td>
           <td>${xx.get(key)}</td>
	   </tr>
	</#list>
</#if>