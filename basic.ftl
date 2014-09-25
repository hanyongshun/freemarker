
//表示xx变量是否存在
<#if xx??>//或者<#if xx?exists>

<#else>

</#if>

//遍历list
<#list xx as lists>
	//列表的index
	${lists_index}

	//列表的大小
	${xx?size}

	<#if lists_index==0>
	</#if>

	<#if lists_index+1==xx?size>
	</#if>

	//列表的属性
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

//double型数据保留小数点后六位
${lists.latitude?string("0.######")}

//去掉long型数据的逗号
${xx?c}

//避免变量出现空值抛出异常
${xx!}
${xx!0}//出现空值时用0代替

//存在的时候进行操作
<#if list.sex?? && list.sex=='1'>男<#else>女</#if>
