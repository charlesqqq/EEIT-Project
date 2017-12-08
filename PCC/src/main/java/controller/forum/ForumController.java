package controller.forum;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.support.ByteArrayMultipartFileEditor;

import model.bean.Member;
import model.bean.PostArticle;
import model.bean.ReplyArticle;
import model.service.CollectArticleService;
import model.service.PostArticleService;
import model.service.ReplyArticleService;

@Controller
@SessionAttributes(value = { "bean" })
public class ForumController {

	@Autowired
	PostArticleService postArticleService;
	@Autowired
	ReplyArticleService replyArticleService;
	@Autowired
	CollectArticleService collectArticleService;

	@InitBinder
	public void init(WebDataBinder binder) {
		binder.registerCustomEditor(byte[].class, "photo", new ByteArrayMultipartFileEditor());
	}

	@RequestMapping(path = "/post.forum", method = RequestMethod.POST)
	public String postArticle(@SessionAttribute("member") Member member, PostArticle bean, Model model) {
		bean.setMemberId(member.getMemberId());
		postArticleService.postArticle(bean);
		model.addAttribute("listOfPostArticles", showAllArticles());
		return "showArticles";
	}

	@RequestMapping(path = "/showAll.forum", method = RequestMethod.GET)
	public String showArticles(String category, Model model) {
		List<PostArticle> listOfPostArticles;
		if ("all".equalsIgnoreCase(category)) {
			listOfPostArticles = showAllArticles();
		} else {
			listOfPostArticles = postArticleService.showArticlesByCategory(category);
		}
		model.addAttribute("listOfPostArticles", listOfPostArticles);
		return "showArticles";
	}

	@RequestMapping(path = "/showDetial.forum", method = RequestMethod.GET)
	public String showArticleDetail(int messageId, Model model) {
		model.addAttribute("mainArticle", postArticleService.showArticleDetail(messageId));
		model.addAttribute("replyArticles", showAllReplyArticles(messageId));
		return "articleDetail";
	}

	@RequestMapping(path = "/reply.forum", method = RequestMethod.POST)
	public String replyArticle(@SessionAttribute("member") Member member, ReplyArticle replyArticle, Model model) {
		int messageId = replyArticle.getMessageId();
		replyArticle.setMemberId(member.getMemberId());
		replyArticleService.replyArticle(replyArticle);
		model.addAttribute("mainArticle", postArticleService.showArticleDetail(messageId));
		model.addAttribute("replyArticles", showAllReplyArticles(messageId));
		return "articleDetail";
	}

	@RequestMapping(path = "/collect.forum", method = RequestMethod.GET)
	public String collectArticle(int messageId, String memberId, Model model) throws IOException {
		collectArticleService.collectArticle(messageId, memberId);
		model.addAttribute("listOfPostArticles", showAllArticles());
		return "showArticles";
	}

	@RequestMapping(path = "/search.forum", method = RequestMethod.GET)
	public String searchArticles(String topic, Model model) {
		List<PostArticle> articles = postArticleService.showArticlesByTopic(topic);
		model.addAttribute("listOfPostArticles", articles);
		return "showArticles";
	}

	public String likeArticle(int messageId, String memberId, Model model) {

		return "showArticles";
	}

	public List<PostArticle> showAllArticles() {
		return postArticleService.showAllArticles();
	}

	public List<ReplyArticle> showAllReplyArticles(int messageId) {
		return replyArticleService.showReplies(messageId);
	}
}
