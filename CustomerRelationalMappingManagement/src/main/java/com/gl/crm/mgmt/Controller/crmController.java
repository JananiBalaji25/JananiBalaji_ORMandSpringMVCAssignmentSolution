package com.gl.crm.mgmt.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gl.crm.mgmt.model.Crm;

@Controller
@RequestMapping("crm")
public class crmController {
	@Autowired
	com.gl.crm.mgmt.Dao.crmDao crmDao;
	
	@GetMapping("list")
	public String getCrm(Model model) {
		List<Crm> crm = crmDao.showAll();
		model.addAttribute("crm",crm);
		return "crm-list";
	}
	
	@GetMapping("showForm")
	public String getForm(Model model) {
		Crm crm = new Crm();
		model.addAttribute("crm",crm);
		return "crm-form";
	}
	
	@PostMapping("save")
	public String saveProfile(Model model, @ModelAttribute("crm") Crm crm) {
		crmDao.SaveOrUpdate(crm);
		return "redirect:/crm/list";
	}
	
	@GetMapping("update")
	public String updateProfile(Model model, @RequestParam("id") int id) {
		Crm crm = crmDao.getByid(id);
		model.addAttribute("crm",crm);
		return "crm-form";
	}
	
	@GetMapping("delete")
	public String deleteProfile(Model model, @RequestParam("id") int id) {
		Crm crm = crmDao.getByid(id);
		crmDao.delete(id);
		return "redirect:/crm/list";
	}
	

}
