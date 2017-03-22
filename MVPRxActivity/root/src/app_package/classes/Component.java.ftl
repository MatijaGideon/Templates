package ${packageName}.injection.component;

import ${packageName}.view.impl.${activityClass};
import ${packageName}.injection.module.${moduleClass};
import ${packageName}.injection.module.RxModule;
import ${packageName}.injection.scope.ActivityScope;
import dagger.Component;

@ActivityScope
@Component(dependencies = AppComponent.class, modules = {RxModule.class, ${moduleClass}.class})
public interface ${componentClass} 
{
    void inject(${activityClass} activity);
}