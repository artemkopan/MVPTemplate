package ${uiPackage};

import com.artemkopan.baseproject.activity.*;

import ${presenterPackage}.${presenterName};
import ${viewPackage}.${viewName};

import android.os.Bundle;
import android.support.annotation.Nullable;

//TODO Check your activity class extends
<#if isGeneratePresenter>
public class ${activityName} extends BaseActivity<${presenterName}, ${viewName}> implements ${viewName} {
<#else>
public class ${activityName} extends BaseActivity {
</#if>

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        <#if isCreateLayout>
        setContentView(R.layout.${classToResource(layoutName)});
        </#if>
        bindButterKnife();
    }

    @Override
    public void showProgress(@Nullable Object tag) {

    }

    @Override
    public void hideProgress(@Nullable Object tag) {

    }

    @Override
    public void showError(@Nullable Object tag, String error) {

    }

}
