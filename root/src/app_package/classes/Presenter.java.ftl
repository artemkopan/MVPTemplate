package ${presenterPackage};

import com.artemkopan.baseproject.presenter.*;

<#if isContract>
import ${contractPackage}.${contractName};
<#else>
import ${viewPackage}.${viewName};
</#if> 

<#if isPublicPresenter>public</#if> class ${presenterName} extends BasePresenterImpl<#if isContract><${contractName}.View> implements ${contractName}.Presenter<#else><${viewName}></#if> {


}
