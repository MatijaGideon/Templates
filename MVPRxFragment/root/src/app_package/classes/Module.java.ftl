package ${packageName}.injection.module;

import android.support.annotation.NonNull;

import ${packageName}.interactor.I${interactorClass};
import ${packageName}.interactor.impl.${interactorClass}Impl;
import ${packageName}.presenter.IPresenterFactory;
import ${packageName}.presenter.I${presenterClass};
import ${packageName}.presenter.impl.${presenterClass}Impl;
import ${packageName}.interactor.rx.IRxRunner;
import ${packageName}.interactor.logger.ILogger;


import dagger.Module;
import dagger.Provides;

@Module
public final class ${moduleClass} 
{
	@Provides
	public I${interactorClass} provideInteractor(ILogger logger, IRxRunner runner)
	{
		return new ${interactorClass}Impl(logger, runner);
	}

	@Provides
	public IPresenterFactory<I${presenterClass}> providePresenterFactory(@NonNull final I${interactorClass} interactor)
	{
		return new IPresenterFactory<I${presenterClass}>()
        {
            @NonNull
            @Override
            public I${presenterClass} create()
            {
                return new ${presenterClass}Impl(interactor);
            }
        };
	}
}