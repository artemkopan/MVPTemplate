<#if isDialog>
package ${packageName}.ui.dialog;
import com.artemkopan.baseproject.dialog.*;
<#else>
package ${packageName}.ui.fragment;
import com.artemkopan.baseproject.fragment.*;
</#if>

import android.os.Bundle;
import android.view.View;
import ${packageName}.R;
import ${packageName}.view.*;
import ${packageName}.presenter.*;
import android.support.annotation.Nullable;

//TODO Check your fragment class extends
<#if isGeneratePresenter>
public class <#if isDialog>${className}Dialog<#else>${className}Fragment</#if> extends <#if isDialog>BaseDialogFragment<#else>BaseFragment</#if><${className}Presenter, ${className}View> implements ${className}View {
<#else>
public class <#if isDialog>${className}Dialog<#else>${className}Fragment</#if> extends <#if isDialog>BaseDialogFragment<#else>BaseFragment</#if>{
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
