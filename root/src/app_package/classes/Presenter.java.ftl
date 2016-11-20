package ${presenterPackage};

import com.artemkopan.baseproject.presenter.*;
import ${viewPackage}.${viewName};


<#if isGeneratePresenterPublic || structure != 'all_in_one'>public</#if> class ${presenterName} extends BasePresenter<${viewName}> {


}
