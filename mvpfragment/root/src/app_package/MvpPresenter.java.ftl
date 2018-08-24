package ${packageName}.presenter;


import ${packageName}.contract.${ContractName};
import ${packageName}.fragment.${FragmentName};


public class ${PresenterName} implements ${ContractName}.${IPresenterName} {


 	/** {@link ${FragmentName}} */
    private ${ContractName}.${IViewName} mView;

    public ${PresenterName}(${ContractName}.${IViewName} view) {
       mView = view;
       mView.setPresenter(this);
    }

    @Override
    public void start() {

    }

    @Override
    public void destroyView() {

    }

    @Override
    public void destroy() {

    }

}
