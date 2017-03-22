package ${packageName}.interactor.rx;

import io.reactivex.observers.DisposableObserver;

public abstract class RxObserver<T> extends DisposableObserver<T> {
  @Override public void onNext(T value) {

  }

  @Override public void onError(Throwable e) {

  }

  @Override public void onComplete() {

  }
 
}