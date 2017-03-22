package ${packageName}.view.impl;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;

import ${packageName}.${appClass};
import ${packageName}.presenter.IPresenterFactory;
import ${packageName}.injection.component.AppComponent;
import ${packageName}.presenter.IBasePresenter;

public abstract class BaseFragment<P extends IBasePresenter<V>, V> extends Fragment
{
    private final static String RECREATION_SAVED_STATE = "recreation_state";

    /**
     * The presenter for this view
     */
    @Nullable
    protected P mPresenter;
    /**
     * Is this the first start of the fragment (after onCreate)
     */
    private boolean mFirstStart;

    @Override
    public void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);

        mFirstStart = savedInstanceState == null || savedInstanceState.getBoolean(RECREATION_SAVED_STATE);

        injectDependencies();
    }

    @Override
    public void onActivityCreated(@Nullable Bundle savedInstanceState)
    {
        super.onActivityCreated(savedInstanceState);
    }

    private void injectDependencies()
    {
        setupComponent(((${appClass}) getActivity().getApplication()).getAppComponent());
    }

    @Override
    public void onStart()
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
    public void onStop()
    {
        if( mPresenter != null )
        {
            mPresenter.onStop();

            mPresenter.onViewDetached();
        }

        super.onStop();
    }

    @Override
    public void onSaveInstanceState(Bundle outState)
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
