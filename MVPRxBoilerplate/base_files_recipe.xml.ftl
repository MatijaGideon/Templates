<recipe>
	<instantiate from="src/app_package/classes/App.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/${appClass}.java" />

    <instantiate from="src/app_package/classes/AppComponent.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/injection/component/AppComponent.java" />

    <instantiate from="src/app_package/classes/AppModule.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/injection/module/AppModule.java" />

    <instantiate from="src/app_package/classes/ActivityScope.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/injection/scope/ActivityScope.java" />

    <instantiate from="src/app_package/classes/FragmentScope.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/injection/scope/FragmentScope.java" />

    <instantiate from="src/app_package/classes/BaseActivity.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/view/impl/BaseActivity.java" />

    <instantiate from="src/app_package/classes/BaseFragment.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/view/impl/BaseFragment.java" />

    <instantiate from="src/app_package/classes/IBasePresenter.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/presenter/IBasePresenter.java" />

    <instantiate from="src/app_package/classes/IBaseInteractor.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/interactor/IBaseInteractor.java" />   
	   
	<instantiate from="src/app_package/classes/BaseInteractorImpl.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/interactor/impl/BaseInteractorImpl.java" />   

    <instantiate from="src/app_package/classes/BasePresenterImpl.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/presenter/impl/BasePresenterImpl.java" />  

    <instantiate from="src/app_package/classes/IPresenterFactory.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/presenter/IPresenterFactory.java" />
	   
	<instantiate from="src/app_package/classes/RxRunner.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/interactor/rx/RxRunner.java" />
	   
	<instantiate from="src/app_package/classes/IRxRunner.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/interactor/rx/IRxRunner.java" />
	
	<instantiate from="src/app_package/classes/RxObserver.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/interactor/rx/RxObserver.java" />	
	   
	<instantiate from="src/app_package/classes/RxModule.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/injection/module/RxModule.java" />   
	   
	<instantiate from="src/app_package/classes/ILogger.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/interactor/logger/ILogger.java" />
	   
	<instantiate from="src/app_package/classes/Logger.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/interactor/logger/Logger.java" />   
	   

</recipe>
