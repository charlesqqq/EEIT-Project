package spring;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.Resource;
import org.springframework.web.context.support.ServletContextResource;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;
import org.springframework.web.servlet.view.XmlViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = { "controller.room" })
public class SpringMvcConfigRoom extends AbstractAnnotationConfigDispatcherServletInitializer
		implements WebMvcConfigurer {

	@Autowired
	private ServletContext application;

	//為了上傳圖片加的
	@Bean
	public CommonsMultipartResolver multipartResolver() {
		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
		multipartResolver.setDefaultEncoding("UTF-8");
		return multipartResolver;
	}

	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		XmlViewResolver XmlViewResolver = new XmlViewResolver();
		Resource resource = new ServletContextResource(application, "/WEB-INF/roomViews.xml");
		XmlViewResolver.setLocation(resource);
		registry.viewResolver(XmlViewResolver);
	}

	@Override
	protected Class<?>[] getRootConfigClasses() {
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class[] { SpringMvcConfigRoom.class };
	}

	@Override
	protected String[] getServletMappings() {
		return new String[] { "*.room" };
	}

	@Override
	protected String getServletName() {
		return "springMvcConfigRoom";
	}

}
