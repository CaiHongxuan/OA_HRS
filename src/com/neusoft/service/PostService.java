package com.neusoft.service;

import java.util.List;

import com.neusoft.dao.PostDAO;
import com.neusoft.model.Post;

public class PostService {
	
	private PostDAO postDao;
	public PostDAO getPostDao() {
		return postDao;
	}
	public void setPostDao(PostDAO postDao) {
		this.postDao = postDao;
	}
	
	/**
	 * 查询某个岗位信息
	 * @param postId
	 * @return
	 */
	public Post queryPost(Integer postId){
		return postDao.findById(postId);
	}
	
	/**
	 * 查询岗位列表
	 * @return
	 */
	public List<Post> queryPosts(){
		return postDao.findAll();
	}
	
	/**
	 * 保存岗位
	 * @param post
	 */
	public void savePost(Post post){
		postDao.save(post);
	}
	
	/**
	 * 删除岗位
	 * @param postId
	 */
	public void removePost(Integer postId){
		//Post post = (Post)postDao.findById(postId);
		//postDao.delete(post);
		Post post = postDao.selectPost(postId);
		postDao.deletePost(post);
	}

}
