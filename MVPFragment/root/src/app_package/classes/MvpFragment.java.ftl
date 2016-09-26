<#if isDialog>
package ${packageName}.ui.dialog;

import com.artemkopan.baseproject.dialog.*;
<#else>
package ${packageName}.ui.fragment;

import com.artemkopan.baseproject.fragment.*;
</#if>

import ${packageName}.view.*;
import ${packageName}.presenter.*;
import android.support.annotation.Nullable;

//TODO Check your fragment class extends
public class <#if isDialog>${className}Dialog<#else>${className}Fragment</#if> extends <#if isDialog>BaseDialogFragment<#else>BaseFragment</#if><${className}Presenter, ${className}View> implements ${className}View {

    @Override
    public int onCreateInflateView() {
        return 0;
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
