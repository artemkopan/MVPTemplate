package ${daggerPackage}

import dagger.Module
import dagger.Provides
import dagger.Subcomponent
import javax.inject.Scope


<#if isContract>
import ${contractPackage}.${contractName}
</#if>
import ${presenterPackage}.${presenterName}

@${daggerComponentName}.${daggerScopeName}
@Subcomponent(modules = arrayOf(${daggerComponentName}.${daggerModuleName}::class))
interface ${daggerComponentName}{

    @Subcomponent.Builder
    interface Builder {
        fun module(module: ${daggerModuleName}): Builder
        fun build(): ${daggerComponentName}
    }


    @Module
    class ${daggerModuleName} {


        @${daggerScopeName}
        @Provides
        fun providePresenter() : <#if isContract>${contractName}.Presenter<#else>${presenterName}</#if> = ${presenterName}()

    }

    @Scope
    annotation class ${daggerScopeName}

}

