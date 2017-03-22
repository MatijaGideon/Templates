package ${packageName}.view.impl;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;

import ${packageName}.${appClass};
import ${packageName}.presenter.IPresenterFactory;
import ${packageName}.injection.component.AppComponent;
import ${packageName}.presenter.IBasePresenter;

public abstract class BaseActivity<P extends IBasePresenter<V>, V> extends AppCompatActivity
{
    private final static String RECREATION_SAVED_STATE = "recreation_state";
	
    /**
     * Is this the first start of the activity (after onCreate)
     */
    private boolean mFirstStart;
	
    /**
     * The presenter for this view
     */
    @Nullable 
    protected P mPresenter;

    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);

        mFirstStart = savedInstanceState == null || savedInstanceState.getBoolean(RECREATION_SAVED_STATE);

        injectDependencies();
    }

    private void injectDependencies()
    {
        setupComponent(((${appClass}) getApplication()).getAppComponent());
    }

    @Override
    protected void onStart()
    {
        super.onStart();

        doStart();
    }

    /**
     * Call the presenter callbacks for onStart
     */
    @SuppressWarnings("unchecked")
    private void doStart()
    {
        assert mPresenter != null;
        
        mPresenter.onViewAttached((V) this);

        mPresenter.onStart(mFirstStart);

        mFirstStart = false;
    }

    @Override
    protected void onStop()
    {
        if( mPresenter != null )
        {
            mPresenter.onStop();

            mPresenter.onViewDetached();
        }

        super.onStop();
    }

    @Override
    protected void onSaveInstanceState(Bundle outState)
    {
        super.onSaveInstanceState(outState);

        outState.putBoolean(RECREATION_SAVED_STATE, mFirstStart);
    }

    /**
     * Get the presenter factory implementation for this view
     *
     * @return the presenter factory
     */
    @NonNull 
    protected abstract IPresenterFactory<P> getPresenterFactory();

    /**
     * Setup the injection component for this view
     *
     * @param appComponent the app component
     */
    protected abstract void setupComponent(@NonNull AppComponent appComponent);
}
