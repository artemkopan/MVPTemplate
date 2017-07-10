package ${daggerPackage};

import java.lang.annotation.Retention;
import javax.inject.Scope;

import dagger.Subcomponent;
import dagger.Module;
import dagger.Provides;

<#if isContract>
import ${contractPackage}.${contractName};
</#if>
import ${presenterPackage}.${presenterName};

import ${daggerPackage}.${daggerComponentName}.${daggerScopeName};
import ${daggerPackage}.${daggerComponentName}.${daggerModuleName};

import static java.lang.annotation.RetentionPolicy.RUNTIME;

@${daggerScopeName}
@Subcomponent(modules = ${daggerModuleName}.class)
interface ${daggerComponentName}{


    @Module
    class ${daggerModuleName} {


        @${daggerScopeName}
        @Provides
        public <#if isContract>${contractName}.Presenter<#else>${presenterName}</#if> providePresenter() {
            return new ${presenterName}();
        }

    }

    @Scope
    @Retention(RUNTIME)
    @interface ${daggerScopeName} { }

}

