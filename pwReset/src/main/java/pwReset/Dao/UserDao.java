package pwReset.Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ldap.query.LdapQuery;
import org.springframework.ldap.query.LdapQueryBuilder;
import org.springframework.stereotype.Service;

import pwReset.pojo.User;
import pwReset.pojo.UserRepository;

@Service
public class UserDao {
	
	@Autowired
	private UserRepository userRepository;
	
	
	public User getUser(String uid) {
		
		LdapQuery ldapQuery1 = LdapQueryBuilder.query()
				.base("ou=jzg,ou=People").where("uid").is(uid);
		LdapQuery ldapQuery2 = LdapQueryBuilder.query()
				.base("ou=bzks,ou=People").where("uid").is(uid);
		LdapQuery ldapQuery3 = LdapQueryBuilder.query()
				.base("ou=yjs,ou=People").where("uid").is(uid);
		
		
		User user = userRepository.findOne(ldapQuery1);
		if(user==null) {
				user=userRepository.findOne(ldapQuery2);	
		}
		if(user==null) {
			user=userRepository.findOne(ldapQuery3);
		}
		
		return user;
	}


	public boolean update(User user) {
		// TODO Auto-generated method stub
		
		try {
			User user1 = userRepository.save(user);
			return true;
		} catch (Exception e) {
			return false;
		}
		
	}
			
			
	
	

}
