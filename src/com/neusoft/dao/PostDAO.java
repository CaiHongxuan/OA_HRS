package com.neusoft.dao;
// default package

import java.util.List;

import org.hibernate.LockOptions;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.transaction.annotation.Transactional;

import com.neusoft.model.Dept;
import com.neusoft.model.Post;

/**
 	* A data access object (DAO) providing persistence and search support for Post entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see .Post
  * @author MyEclipse Persistence Tools 
 */
    @Transactional   
public class PostDAO  {
	     private static final Logger log = LoggerFactory.getLogger(PostDAO.class);
		//property constants
	public static final String NAME = "name";
	public static final String TYPE = "type";
	public static final String QUOTA = "quota";



    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory){
       this.sessionFactory = sessionFactory;
    }

    private Session getCurrentSession(){
     return sessionFactory.getCurrentSession(); 
    }
	protected void initDao() {
		//do nothing
	}
    
    public void save(Post transientInstance) {
        log.debug("saving Post instance");
        try {
            getCurrentSession().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }
    
	public void delete(Post persistentInstance) {
        log.debug("deleting Post instance");
        try {
            getCurrentSession().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }
    
    public Post findById( java.lang.Integer id) {
        log.debug("getting Post instance with id: " + id);
        try {
            Post instance = (Post) getCurrentSession()
                    .get("Post", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    
    
    public List findByExample(Post instance) {
        log.debug("finding Post instance by example");
        try {
            List results = getCurrentSession().createCriteria("Post") .add(Example.create(instance)).list();
            log.debug("find by example successful, result size: " + results.size());
            return results;
        } catch (RuntimeException re) {
            log.error("find by example failed", re);
            throw re;
        }
    }    
    
    public List findByProperty(String propertyName, Object value) {
      log.debug("finding Post instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from Post as model where model." 
         						+ propertyName + "= ?";
         Query queryObject = getCurrentSession().createQuery(queryString);
		 queryObject.setParameter(0, value);
		 return queryObject.list();
      } catch (RuntimeException re) {
         log.error("find by property name failed", re);
         throw re;
      }
	}

	public List findByName(Object name
	) {
		return findByProperty(NAME, name
		);
	}
	
	public List findByType(Object type
	) {
		return findByProperty(TYPE, type
		);
	}
	
	public List findByQuota(Object quota
	) {
		return findByProperty(QUOTA, quota
		);
	}
	

	public List findAll() {
		log.debug("finding all Post instances");
		try {
			String queryString = "from Post";
	         Query queryObject = getCurrentSession().createQuery(queryString);
			 return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
    public Post merge(Post detachedInstance) {
        log.debug("merging Post instance");
        try {
            Post result = (Post) getCurrentSession()
                    .merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(Post instance) {
        log.debug("attaching dirty Post instance");
        try {
            getCurrentSession().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
    public void attachClean(Post instance) {
        log.debug("attaching clean Post instance");
        try {
                      	getCurrentSession().buildLockRequest(LockOptions.NONE).lock(instance);
          	            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

	public static PostDAO getFromApplicationContext(ApplicationContext ctx) {
    	return (PostDAO) ctx.getBean("PostDAO");
	}	
	
	/**
	 * 查询某个部门
	 * @param dept_id
	 * @return
	 */
	public Post selectPost(Integer postId) {
		return (Post)sessionFactory.getCurrentSession().get(Post.class, postId);
	}
	
	/**
	 * 删除部门
	 * @param d
	 */
	public void deletePost(Post p){
		sessionFactory.getCurrentSession().delete(p);
	}
}