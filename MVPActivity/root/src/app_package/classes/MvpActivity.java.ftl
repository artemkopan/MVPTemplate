package ${packageName}.ui.activity;

import com.artemkopan.baseproject.activity.*;
import ${packageName}.view.*;
import ${packageName}.presenter.*;

import android.os.Bundle;
import android.support.annotation.Nullable;

//TODO Check your activity class extends
public class ${className}Activity extends BaseActivity<${className}Presenter, ${className}View> implements ${className}View {


    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
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
