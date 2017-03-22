package ${packageName}.injection.component;

import android.content.Context;

import ${packageName}.${appClass};

import javax.inject.Singleton;

import dagger.Component;

import ${packageName}.injection.module.AppModule;

@Singleton
@Component(modules = {AppModule.class})
public interface AppComponent
{
    Context getAppContext();
    ${appClass} getApp();
}