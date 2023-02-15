package com.edubridge.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.edubridge.Main.UsersDetailsMain;
import com.edubridge.Model.UsersDetails;

@Controller
public class UserController 
{
	@RequestMapping("/")
	public String m1()
	{
		return "index";
	}
	
	@RequestMapping("/users/login")
	public String m2()
	{
		return "login";
	}
	
	@RequestMapping("/users/register")
	public String m3(ModelMap map)
	{
		map.addAttribute("usersdata",new UsersDetails());
		return "register";
	}
	@RequestMapping("/users/add")
	public String m4(@ModelAttribute("usersdata") UsersDetails ud)
	{
		UsersDetailsMain um=new UsersDetailsMain();
		ud.setStatus("InActive");
		um.addUsersDetails(ud);
		return "login";
	}
	
	
}

