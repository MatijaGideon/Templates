package ${packageName}.presenter;

import android.support.annotation.NonNull;

import ${packageName}.presenter.IBasePresenter;

/**
 * Factory to implement to create a presenter
 */
public interface PresenterFactory<T extends IBasePresenter>
{
    @NonNull
    T create();
}
