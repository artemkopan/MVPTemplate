package ${contractPackage};
import com.artemkopan.baseproject.presenter.*;


<#if isPublicPresenter>public</#if> interface ${contractName} {

	interface View extends MvpView{
		
	
	}

	interface Presenter extends BasePresenter<View>{
		
	
	}
}
