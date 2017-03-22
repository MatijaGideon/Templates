package ${packageName}.injection.module;

import dagger.Module;
import dagger.Provides;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.schedulers.Schedulers;
import javax.inject.Singleton;

import ${packageName}.interactor.rx.IRxRunner;
import ${packageName}.interactor.rx.RxRunner;

import ${packageName}.interactor.logger.Logger;
import ${packageName}.interactor.logger.ILogger;

@Module
public final class RxModule
{
  @Provides public IRxRunner provideRunner() {
    return new RxRunner(Schedulers.io(), AndroidSchedulers.mainThread());
  }

  @Provides public ILogger provideLogger() {
    return new Logger();
  }
}
