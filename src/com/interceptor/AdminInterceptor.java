package com.interceptor;

import java.util.Map;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class AdminInterceptor extends AbstractInterceptor {

	@SuppressWarnings("unchecked")
	@Override
	public String intercept(ActionInvocation ar) throws Exception {
		
			Map map = ar.getInvocationContext().getSession();
			System.out.println("现在此用户正在访问="+map.get("adminInfo"));
			
			if(null==map.get("adminInfo")){
				
				return Action.ERROR;
			}
			
			return ar.invoke();
		
		
		}

}
