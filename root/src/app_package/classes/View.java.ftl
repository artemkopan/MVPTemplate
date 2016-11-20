package ${viewPackage};

import com.artemkopan.baseproject.presenter.*;


<#if isGeneratePresenterPublic || structure != 'all_in_one'>public</#if> interface ${className}View extends MvpView {

}
