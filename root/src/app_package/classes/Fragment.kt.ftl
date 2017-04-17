package ${uiPackage}

<#if uiComponent == 'dialog'>
import com.artemkopan.base_mvp.dialog.*
<#else>
import com.artemkopan.base_mvp.fragment.*
</#if>

import android.os.Bundle;
import android.view.View;

<#if isGeneratePresenter>
	
	<#if isContract>
		import ${contractPackage}.${contractName};
	<#else>
		import ${viewPackage}.${viewName};	
		import ${presenterPackage}.${presenterName};
	</#if>

</#if>

import android.support.annotation.Nullable;

//TODO Check your fragment class extends
class ${fragmentName} : <#if uiComponent == 'dialog'>BaseDialogFragment<#else>BaseFragment</#if><#if isContract><${contractName}.Presenter, ${contractName}.View>(), ${contractName}.View <#else><${presenterName}, ${viewName}>(), ${viewName} </#if> {


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
	}
	
	override fun onInflateLayout(): Int = <#if isCreateLayout>R.layout.${layoutName}<#else>0 //FIXME AutoInflate layout wasn't work with id=0</#if>
	
    override fun showProgress(tag: Any?) {
        super.showProgress(tag)
    }

    override fun hideProgress(tag: Any?) {
        super.hideProgress(tag)
    }
	
	override fun showError(tag: Any?, error: String?) {
        super.showError(tag, error)
    }

}
