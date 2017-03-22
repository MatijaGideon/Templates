package ${packageName}.interactor.logger;

public interface ILogger {
  void d(String message);
  void d(Throwable t);
  void e(String message);
  void e(Throwable t);
}
