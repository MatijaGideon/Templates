package ${packageName}.interactor;

import io.reactivex.Observable;
import io.reactivex.Observer;

public interface I${interactorClass} 
{
	void start(Observer<T> observer);
	Observable<T> getObservable();
}