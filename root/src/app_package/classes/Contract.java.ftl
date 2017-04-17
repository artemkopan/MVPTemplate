package ${contractPackage};
import com.artemkopan.base_mvp.presenter.*;


<#if isPublicPresenter>public</#if> interface ${contractName} {

	interface View extends MvpView{
		
	
	}

	interface Presenter extends BasePresenter<View>{
		
	
	}
}
