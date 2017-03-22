package ${packageName}.interactor.rx;

import io.reactivex.Observable;
import io.reactivex.Observer;

public interface IRxRunner {
  <T> void start(Observable<T> observable, Observer<T> observer);

  void stop();
}
