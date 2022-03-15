package config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import env.로그인확인자;


@Import(value={MyBatisConfig.class})
@Configuration
@EnableWebMvc
@ComponentScan(basePackages="com.stone")
public class MvcConfig implements WebMvcConfigurer {

	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		registry.jsp("/WEB-INF/views/",".jsp");
	}
	
	@Override
	public void addResourceHandlers(final ResourceHandlerRegistry registry) {
	    registry.addResourceHandler("/img/**").addResourceLocations("/img/");
	}

		   
//	@Override
//	public void addInterceptors(InterceptorRegistry registry) {
//	registry.addInterceptor(new 로그인확인자())
//	        .addPathPatterns("/**")
//	        .excludePathPatterns("/img/**")
//	        .excludePathPatterns("/logout")
//	        .excludePathPatterns("/prepare/*")
//	        .excludePathPatterns("/prepare")
//	        .excludePathPatterns("/main2")
//	        .excludePathPatterns("/main2/*")
//	        .excludePathPatterns("/local/*")
//	        .excludePathPatterns("/local")
//	        .excludePathPatterns("/main3")
//	        .excludePathPatterns("/main3/*")
//  	    .excludePathPatterns("/sub_taste")
//	        .excludePathPatterns("/id")	
//	        .excludePathPatterns("/tourboards/*")	
//	        .excludePathPatterns("/tourboards")	
//	        .excludePathPatterns("/boards/*")	
//	        .excludePathPatterns("/board")	
//	        .excludePathPatterns("/board/*")	
//	        .excludePathPatterns("/login")	
//	        .excludePathPatterns("/member")	
//	        .excludePathPatterns("/styles")	
//	        .excludePathPatterns("/findpw")	
//	        .excludePathPatterns("/findpw/*")	
//	        .excludePathPatterns("/findid")	
//	        .excludePathPatterns("/findid_success")	
//	        .excludePathPatterns("/findpw_new")	
//	        .excludePathPatterns("/checklist")	
//	        .excludePathPatterns("/checklistsave")	
//	        .excludePathPatterns("/id")	
//	        .excludePathPatterns("/id/*")	
//	        .excludePathPatterns("/resources/*")
//	        .excludePathPatterns("/notices")		
//	        .excludePathPatterns("/notices/*")		
//	        .excludePathPatterns("/missions")		
//			.excludePathPatterns("/cal");		
//	}
	

	
}
