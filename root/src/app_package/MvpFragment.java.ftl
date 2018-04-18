package ${packageName}.fragment;

<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>
import ${applicationPackage}.base.NewBaseFragment;
import ${packageName}.contract.${ContractName};
import ${packageName}.presenter.${PresenterName};

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.LayoutInflater;



public class ${FragmentName} extends NewBaseFragment implements ${ContractName}.${IViewName}{

    /** {@link ${PresenterName}} */
    private ${ContractName}.${IPresenterName} mPresenter;
			
	public static ${FragmentName} newInstance() {
		${FragmentName} fragment = new ${FragmentName}();
        Bundle args = new Bundle();
        fragment.setArguments(args);
        return fragment;
    }

    protected View createView(LayoutInflater inflater, ViewGroup container,
                                       Bundle savedInstanceState){
        View view =  inflater.inflate(R.layout.${fragmentName}, container, false);                                
        return view;
    }

    protected void initView(){
        
    }

    protected void initData(){

    }

    @Override
    public void onDestroyView() {
        if(mPresenter!=null){
            mPresenter.destroyView();
        }
        super.onDestroyView();
    } 

    @Override
    public void onDestroy() {
        if(mPresenter!=null){
            mPresenter.destroy();
        }
        super.onDestroy();
    }

	
	 @Override
    public void setPresenter(${ContractName}.${IPresenterName} presenter) {
        mPresenter = presenter;
    }

    @Override
    public boolean isActive() {
        return isAvailable();
    }

		
}
