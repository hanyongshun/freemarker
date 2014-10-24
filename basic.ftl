
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

//if判断条件
<#if condition>
  ...
<#elseif condition2>
  ...
<#elseif condition3>
  ...
...
<#else>
  ...
</#if>


//long转date
${1305575275540?number_to_datetime} May 16, 2011 3:47:55 PM
${1305575275540?number_to_date}     May 16, 2011
${1305575275540?number_to_time}     3:47:55 PM

-----------------------------------------------------------------------------------------------
| 能用freemarker渲染就用freemarker，不要使用js，后期维护代价大                                       |
| freemarker表现更直接，易于阅读，但是会增加服务器负担，js是在客户端渲染，减轻服务器负担                   |
-----------------------------------------------------------------------------------------------


//检查变量类型
//Returns true if the value is a ...
is_string:    string
is_number:    number
is_boolean:   boolean
is_date:      date (all types: date-only, time-only and date-time)
is_method:    method
is_transform: transform
is_macro:     macro
is_hash:      hash
is_hash_ex:   extended hash (i.e. supports ?keys and ?values)
is_sequence:  sequence
is_collection:collection
is_enumerable:sequence or collection
is_indexable: sequence
is_directive: macro or transform
is_node:      node

//获取url中的参数
<#if RequestParameters.bing?exists >
    <#assign useServer = "http://www.bing.com">
<#else>


