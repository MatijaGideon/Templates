package ${packageName}.interactor.rx;

import android.support.annotation.NonNull;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.Scheduler;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;

import ${packageName}.interactor.rx.IRxRunner;

public class RxRunner implements IRxRunner {
  @NonNull private Scheduler workScheduler;
  @NonNull private Scheduler resultScheduler;
  @NonNull private CompositeDisposable disposables;

  public RxRunner(@NonNull Scheduler workScheduler, @NonNull Scheduler resultScheduler) {
    this.workScheduler = workScheduler;
    this.resultScheduler = resultScheduler;
    disposables = new CompositeDisposable();
  }

  public <T> void start(Observable<T> observable, Observer<T> observer) {
    Observer result = observable.observeOn(resultScheduler).subscribeOn(workScheduler).subscribeWith(observer);
    if (result instanceof Disposable) {
      disposables.add((Disposable) result);
    }
  }

  public void stop() {
    disposables.clear();
  }
}