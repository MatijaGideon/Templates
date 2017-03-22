package ${packageName}.interactor.logger;

import timber.log.Timber;

public class Logger implements ILogger {
  @Override public void d(String message) {
    Timber.d(message);
  }

  @Override public void d(Throwable t) {
    Timber.d(t);
  }

  @Override public void e(String message) {
    Timber.e(message);
  }

  @Override public void e(Throwable t) {
    Timber.e(t);
  }
}