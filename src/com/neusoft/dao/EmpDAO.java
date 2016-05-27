package com.neusoft.dao;
// default package

import java.util.Date;
import java.util.List;
import java.util.Set;

import org.hibernate.LockOptions;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.transaction.annotation.Transactional;

import com.neusoft.model.Emp;

/**
 	* A data access object (DAO) providing persistence and search support for Emp entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see .Emp
  * @author MyEclipse Persistence Tools 
 */
    @Transactional   
public class EmpDAO  {
	     private static final Logger log = LoggerFactory.getLogger(EmpDAO.class);
		//property constants
	public static final String NAME = "name";
	public static final String SEX = "sex";
	public static final String ID_NO = "idNo";
	public static final String DEPT_ID = "deptId";
	public static final String POST_ID = "postId";
	public static final String STATUS = "status";
	public static final String ORIGINATE = "originate";
	public static final String POLITICAL_STATUS = "politicalStatus";
	public static final String NATIONS = "nations";
	public static final String NATIVE_PLACE = "nativePlace";
	public static final String TEL = "tel";
	public static final String EMAIL = "email";
	public static final String HEIGHT = "height";
	public static final String BLOOD_TYPE = "bloodType";
	public static final String MARRIAGE = "marriage";
	public static final String HOMEPLACE = "homeplace";
	public static final String ACCOUNT_PLACE = "accountPlace";
	public static final String TOP_DEGREE = "topDegree";
	public static final String TOP_ACADEMIC = "topAcademic";
	public static final String GRA_SCHOOL = "graSchool";
	public static final String MAJOR = "major";



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
    
    public void save(Emp transientInstance) {
        log.debug("saving Emp instance");
        try {
            getCurrentSession().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }
    
	public void delete(Emp persistentInstance) {
        log.debug("deleting Emp instance");
        try {
            getCurrentSession().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }
    
    public Emp findById( java.lang.Integer id) {
        log.debug("getting Emp instance with id: " + id);
        try {
            Emp instance = (Emp) getCurrentSession()
                    .get("Emp", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    
    
    public List findByExample(Emp instance) {
        log.debug("finding Emp instance by example");
        try {
            List results = getCurrentSession().createCriteria("Emp") .add(Example.create(instance)).list();
            log.debug("find by example successful, result size: " + results.size());
            return results;
        } catch (RuntimeException re) {
            log.error("find by example failed", re);
            throw re;
        }
    }    
    
    public List findByProperty(String propertyName, Object value) {
      log.debug("finding Emp instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from Emp as model where model." 
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
	
	public List findBySex(Object sex
	) {
		return findByProperty(SEX, sex
		);
	}
	
	public List findByIdNo(Object idNo
	) {
		return findByProperty(ID_NO, idNo
		);
	}
	
	public List findByDeptId(Object deptId
	) {
		return findByProperty(DEPT_ID, deptId
		);
	}
	
	public List findByPostId(Object postId
	) {
		return findByProperty(POST_ID, postId
		);
	}
	
	public List findByStatus(Object status
	) {
		return findByProperty(STATUS, status
		);
	}
	
	public List findByOriginate(Object originate
	) {
		return findByProperty(ORIGINATE, originate
		);
	}
	
	public List findByPoliticalStatus(Object politicalStatus
	) {
		return findByProperty(POLITICAL_STATUS, politicalStatus
		);
	}
	
	public List findByNations(Object nations
	) {
		return findByProperty(NATIONS, nations
		);
	}
	
	public List findByNativePlace(Object nativePlace
	) {
		return findByProperty(NATIVE_PLACE, nativePlace
		);
	}
	
	public List findByTel(Object tel
	) {
		return findByProperty(TEL, tel
		);
	}
	
	public List findByEmail(Object email
	) {
		return findByProperty(EMAIL, email
		);
	}
	
	public List findByHeight(Object height
	) {
		return findByProperty(HEIGHT, height
		);
	}
	
	public List findByBloodType(Object bloodType
	) {
		return findByProperty(BLOOD_TYPE, bloodType
		);
	}
	
	public List findByMarriage(Object marriage
	) {
		return findByProperty(MARRIAGE, marriage
		);
	}
	
	public List findByHomeplace(Object homeplace
	) {
		return findByProperty(HOMEPLACE, homeplace
		);
	}
	
	public List findByAccountPlace(Object accountPlace
	) {
		return findByProperty(ACCOUNT_PLACE, accountPlace
		);
	}
	
	public List findByTopDegree(Object topDegree
	) {
		return findByProperty(TOP_DEGREE, topDegree
		);
	}
	
	public List findByTopAcademic(Object topAcademic
	) {
		return findByProperty(TOP_ACADEMIC, topAcademic
		);
	}
	
	public List findByGraSchool(Object graSchool
	) {
		return findByProperty(GRA_SCHOOL, graSchool
		);
	}
	
	public List findByMajor(Object major
	) {
		return findByProperty(MAJOR, major
		);
	}
	

	public List findAll() {
		log.debug("finding all Emp instances");
		try {
			String queryString = "from Emp";
	         Query queryObject = getCurrentSession().createQuery(queryString);
			 return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
    public Emp merge(Emp detachedInstance) {
        log.debug("merging Emp instance");
        try {
            Emp result = (Emp) getCurrentSession()
                    .merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(Emp instance) {
        log.debug("attaching dirty Emp instance");
        try {
            getCurrentSession().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
    public void attachClean(Emp instance) {
        log.debug("attaching clean Emp instance");
        try {
                      	getCurrentSession().buildLockRequest(LockOptions.NONE).lock(instance);
          	            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

	public static EmpDAO getFromApplicationContext(ApplicationContext ctx) {
    	return (EmpDAO) ctx.getBean("EmpDAO");
	}
}