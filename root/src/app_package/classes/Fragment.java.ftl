package ${uiPackage};

<#if uiComponent == 'dialog'>
import com.artemkopan.baseproject.dialog.*;
<#else>
import com.artemkopan.baseproject.fragment.*;
</#if>

import android.os.Bundle;
import android.view.View;
import ${presenterPackage}.${presenterName};
import ${viewPackage}.${viewName};
import android.support.annotation.Nullable;

//TODO Check your fragment class extends
<#if isGeneratePresenter>
public class ${fragmentName} extends <#if uiComponent == 'dialog'>BaseDialogFragment<#else>BaseFragment</#if><${presenterName}, ${viewName}> implements ${viewName} {
<#else>
public class ${fragmentName} extends <#if uiComponent == 'dialog'>BaseDialogFragment<#else>BaseFragment</#if>{
</#if>


    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override
    public int onCreateInflateView() {
        <#if isCreateLayout>
        return R.layout.${layoutName};
        <#else>
        return 0;
        </#if>
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
       super.onViewCreated(view, savedInstanceState);
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
