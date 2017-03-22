package ${packageName}.presenter.impl;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

import ${packageName}.presenter.IBasePresenter;

/**
 * Abstract presenter implementation that contains base implementation for other presenters.
 * Subclasses must call super for all {@link IBasePresenter} method overriding.
 */
public abstract class BasePresenterImpl<V> implements IBasePresenter<V>
{
    /**
     * The view
     */
    @Nullable
    protected V mView;

    @Override
    public void onViewAttached(@NonNull V view)
    {
        mView = view;
    }


    @Override
    public void onStart(boolean firstStart)
    {

    }

    @Override
    public void onStop()
    {

    }


    @Override
    public void onViewDetached()
    {
        mView = null;
    }

    @Override
    public void onPresenterDestroyed()
    {
        
    }
}
