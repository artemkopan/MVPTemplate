package ${packageName}.ui.activity;

import com.artemkopan.baseproject.activity.*;
import ${packageName}.R;
import ${packageName}.view.*;
import ${packageName}.presenter.*;

import android.os.Bundle;
import android.support.annotation.Nullable;

//TODO Check your activity class extends
<#if isGeneratePresenter>
public class ${className}Activity extends BaseActivity<${className}Presenter, ${className}View> implements ${className}View {
<#else>
public class ${className}Activity extends BaseActivity {
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
