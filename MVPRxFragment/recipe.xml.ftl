<?xml version="1.0"?>
<recipe>
    <#include "fragment_layout_recipe.xml.ftl" />

    <instantiate from="src/app_package/classes/Fragment.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/view/impl/${activityClass}.java" />

    <instantiate from="src/app_package/classes/IView.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/view/I${viewClass}.java" />

    <instantiate from="src/app_package/classes/Component.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/injection/component/${componentClass}.java" />

    <instantiate from="src/app_package/classes/Module.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/injection/${moduleClass}.java" />

    <instantiate from="src/app_package/classes/PresenterImpl.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/presenter/impl/${presenterClass}Impl.java" />

    <instantiate from="src/app_package/classes/IPresenter.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/presenter/I${presenterClass}.java" />

    <instantiate from="src/app_package/classes/InteractorImpl.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/interactor/impl/${interactorClass}Impl.java" />

    <instantiate from="src/app_package/classes/IInteractor.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/interactor/I${interactorClass}.java" />

</recipe>
