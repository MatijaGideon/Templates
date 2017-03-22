package ${packageName}.view.impl;

import android.os.Bundle;
import android.support.annotation.NonNull;

import ${packageName}.R;
import ${packageName}.view.I${viewClass};
import ${packageName}.presenter.IPresenterFactory;
import ${packageName}.presenter.I${presenterClass};
import ${packageName}.injection.component.AppComponent;
import ${packageName}.injection.module.${moduleClass};
import ${packageName}.injection.component.Dagger${componentClass};

import javax.inject.Inject;


public final class ${activityClass} extends BaseActivity<I${presenterClass}, I${viewClass}> implements I${viewClass}
{
    @Inject
    IPresenterFactory<I${presenterClass}> mPresenterFactory;

    // Your presenter is available using the mPresenter variable

    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});

        // Your code here
        // Do not call mPresenter from here, it will be null! Wait for onStart or onPostCreate.
    }

    @Override
    protected void setupComponent(@NonNull AppComponent parentComponent) 
    {
        Dagger${componentClass}.builder()
            .appComponent(parentComponent)
            .${moduleClass?uncap_first}(new ${moduleClass}())
            .build()
            .inject(this);
    }

    @NonNull
    @Override
    protected IPresenterFactory<I${presenterClass}> getPresenterFactory()
    {
        return mPresenterFactory;
    }
}
