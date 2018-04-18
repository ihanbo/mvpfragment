package ${packageName}.contract;

import ${applicationPackage}.base.presenter.BasePresenter;
import ${applicationPackage}.base.presenter.BaseView;



public interface ${ContractName} {

    interface ${IPresenterName} extends BasePresenter {
    	void destroy();
    	void destroyView();

    }

    interface ${IViewName} extends BaseView<Presenter> {

    }
}