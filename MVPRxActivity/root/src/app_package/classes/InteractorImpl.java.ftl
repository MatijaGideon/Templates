package ${packageName}.interactor.impl;

import android.support.annotation.NonNull;

import io.reactivex.Observable;
import io.reactivex.Observer;
import ${packageName}.interactor.logger.ILogger;
import ${packageName}.interactor.rx.IRxRunner;

import ${packageName}.interactor.I${interactorClass};

public final class ${interactorClass}Impl extends BaseInteractorImpl<T> implements I${interactorClass}
{ 
	public ${interactorClass}Impl(@NonNull ILogger logger, @NonNull IRxRunner runner)
	{
		super(logger, runner);
	}
	
	@Override public void start(Observer<T> observer) {
		applyAndExecute(getObservable(), observer);
	}
	
	@Override public Observable<T> getObservable() {
	
	}
}