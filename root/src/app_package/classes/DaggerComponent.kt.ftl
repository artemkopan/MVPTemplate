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

import static java.lang.annotation.RetentionPolicy.RUNTIME;

@${daggerScopeName}
@Subcomponent(modules = ${daggerModuleName})
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

