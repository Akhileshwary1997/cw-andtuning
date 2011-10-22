package com.commonsware.android.tuning.mat;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;

public class NonConfigWidgetActivity extends Activity {
	View button;
	
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main);
		
		button=findViewById(R.id.non_config);
		
		View old=(View)getLastNonConfigurationInstance();
		
		if (old!=null) {
			button.setEnabled(old.isEnabled());
			
Log.w("NCWA", String.valueOf(button.getContext()==this));			
		}
	}
	
	@Override
	public Object onRetainNonConfigurationInstance() {
		return(button);
	}
	
	public void btnClick(View v) {
		button.setEnabled(false);
	}
}