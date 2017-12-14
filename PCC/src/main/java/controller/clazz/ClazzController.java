package controller.clazz;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import model.bean.Clazz;
import model.service.ClazzService;

@Controller
public class ClazzController {

	@Autowired
	private ServletContext application;
	@Autowired
	private ClazzService clazzService;

	@RequestMapping(path = "/startClass.clazz", method = RequestMethod.POST, produces = { "text/plain;charset=UTF-8" })
	public @ResponseBody String addClass(Clazz clazz, MultipartFile photo) {
		int classId = clazzService.addClass(clazz);
		String name = photo.getOriginalFilename();
		String mimeType = application.getMimeType(name);
		String expandedName = "";
		if (mimeType.equals("image/jpeg")) {
			expandedName = ".jpg";
		} else if (mimeType.equals("image/png")) {
			expandedName = ".png";
		} else if (mimeType.equals("image/gif")) {
			expandedName = ".gif";
		} else if (mimeType.equals("image/bmp")) {
			expandedName = ".bmp";
		}
		name = classId + expandedName;
		byte[] photoByte = new byte[(int) photo.getSize()];
		try {
			InputStream is = photo.getInputStream();
			is.read(photoByte);
			OutputStream os = new FileOutputStream(
					new File("C:\\Maven\\git\\PCC\\src\\main\\webapp\\images\\clazz", name));
			os.write(photoByte);
			os.close();
			photo.transferTo(new File(application.getRealPath("/images/clazz"), name));
		} catch (IOException e) {
			e.printStackTrace();
			return "新增失敗";
		}
		return "新增成功";
	}
}
