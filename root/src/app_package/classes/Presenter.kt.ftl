package ${presenterPackage}

import com.artemkopan.mvp.presenter.BasePresenterImpl

<#if isContract>
import ${contractPackage}.${contractName}
<#else>
import ${viewPackage}.${viewName}
</#if> 

class ${presenterName} : BasePresenterImpl<#if isContract><${contractName}.View>(), ${contractName}.Presenter<#else><${viewName}>()</#if> 
