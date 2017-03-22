package ${packageName}.injection.component;

import ${packageName}.injection.component.AppComponent;
import ${packageName}.view.impl.${activityClass};
import ${packageName}.injection.module.${moduleClass};
import ${packageName}.injection.module.RxModule;
import ${packageName}.injection.scope.FragmentScope;
import dagger.Component;

@FragmentScope
@Component(dependencies = AppComponent.class, modules = {RxModule.class, ${moduleClass}.class})
public interface ${componentClass} 
{
    void inject(${activityClass} fragment);
}