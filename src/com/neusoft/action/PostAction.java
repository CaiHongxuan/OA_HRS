package com.neusoft.action;

import java.util.List;

import com.neusoft.model.Post;
import com.neusoft.service.PostService;
import com.opensymphony.xwork2.ActionSupport;

public class PostAction extends ActionSupport {

	private Integer postId;
	private Post post;
	private List<Post> posts;
	public Integer getPostId() {
		return postId;
	}
	public void setPostId(Integer postId) {
		this.postId = postId;
	}
	public Post getPost() {
		return post;
	}
	public void setPost(Post post) {
		this.post = post;
	}
	public List<Post> getPosts() {
		return posts;
	}
	public void setPosts(List<Post> posts) {
		this.posts = posts;
	}
	
	private PostService postService;
	public PostService getPostService() {
		return postService;
	}
	public void setPostService(PostService postService) {
		this.postService = postService;
	}
	
	/**
	 * 查询岗位信息
	 * @param postId
	 * @return
	 */
	public String showPostInfo(Integer postId){
		post = postService.queryPost(postId);
		return "showPostInfo";
	}
	
	/**
	 * 查询岗位列表
	 * @return
	 */
	public String showPostList(){
		posts = postService.queryPosts();
		return "showPostList";
	}
	
	/**
	 * 保存岗位
	 * @return
	 */
	public String savePost(){
		postService.savePost(post);
		return "success";
	}
	
	/**
	 * 删除岗位
	 * @return
	 */
	public String delPost(){
		try{
			postService.removePost(postId);
		}catch(Exception e){
			e.printStackTrace();
		}
		return showPostList();
	}

}
