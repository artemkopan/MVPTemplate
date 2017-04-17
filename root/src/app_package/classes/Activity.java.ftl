package ${uiPackage};

import com.artemkopan.base_mvp.activity.*;

<#if isGeneratePresenter>
	
	<#if isContract>
		import ${contractPackage}.${contractName};
	<#else>
		import ${viewPackage}.${viewName};
		import ${presenterPackage}.${presenterName};
	</#if>

</#if>

import android.os.Bundle;
import android.support.annotation.Nullable;

//TODO Check your activity class extends
<#if isGeneratePresenter>
public class ${activityName} extends BaseActivity<#if isContract><${contractName}.Presenter, ${contractName}.View> implements ${contractName}.View <#else><${presenterName}, ${viewName}> implements ${viewName} </#if> {
<#else>
public class ${activityName} extends BaseActivity {
</#if>

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

	@Override
    public int onInflateLayout() {
        <#if isCreateLayout>
        return R.layout.${layoutName};
		<#else>
		//FIXME AutoInflate layout wasn't work with id=0 
        return 0;
        </#if>
    }
	
    @Override
    public void showProgress(@Nullable Object tag) {
        super.showProgress(tag);
    }

    @Override
    public void hideProgress(@Nullable Object tag) {
        super.hideProgress(tag);
    }

    @Override
    public void showError(@Nullable Object tag, String error) {
        super.showError(tag, error);
    }

}
