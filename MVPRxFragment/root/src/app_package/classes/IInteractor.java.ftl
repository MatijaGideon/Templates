package ${packageName}.interactor;

public interface I${interactorClass}
{
  void start(Observer<Integer> observer);
  Observable<Integer> getObservable();
}