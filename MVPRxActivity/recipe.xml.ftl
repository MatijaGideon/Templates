<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />

    <#include "activity_layout_recipe.xml.ftl" />

    <instantiate from="src/app_package/classes/Activity.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/view/impl/${activityClass}.java" />

    <instantiate from="src/app_package/classes/IView.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/view/I${viewClass}.java" />

    <instantiate from="src/app_package/classes/Component.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/injection/component/${componentClass}.java" />

    <instantiate from="src/app_package/classes/Module.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/injection/module/${moduleClass}.java" />

    <instantiate from="src/app_package/classes/PresenterImpl.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/presenter/impl/${presenterClass}Impl.java" />

    <instantiate from="src/app_package/classes/IPresenter.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/presenter/I${presenterClass}.java" />

    <instantiate from="src/app_package/classes/InteractorImpl.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/interactor/impl/${interactorClass}Impl.java" />

    <instantiate from="src/app_package/classes/IInteractor.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/interactor/I${interactorClass}.java" />

</recipe>
