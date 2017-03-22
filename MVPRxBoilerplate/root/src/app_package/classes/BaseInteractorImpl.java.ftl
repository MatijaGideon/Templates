package ${packageName}.interactor.impl;

import android.support.annotation.NonNull;
import io.reactivex.Observable;
import io.reactivex.Observer;

import ${packageName}.interactor.IBaseInteractor;
import ${packageName}.interactor.logger.ILogger;
import ${packageName}.interactor.rx.IRxRunner;

public abstract class BaseInteractorImpl<T> implements IBaseInteractor
{
  @NonNull protected ILogger logger;
  @NonNull protected IRxRunner runner;

  public BaseInteractorImpl(@NonNull ILogger logger, @NonNull IRxRunner runner) {
    this.logger = logger;
    this.runner = runner;
  }

  protected Observable<T> addError(Observable<T> observable) {
    return observable.doOnError(error -> logger.e(error));
  }

  protected Observable<T> apply(Observable<T> observable) {
    return observable.doOnError(error -> logger.e(error));
  }

  protected void applyAndExecute(Observable<T> observable, Observer<T> observer) {
    runner.start(addError(observable), observer);
  }

  @Override public void stop() {
    runner.stop();
  }
}