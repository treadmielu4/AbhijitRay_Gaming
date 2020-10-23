package com.abhijit.gamingportal.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.abhijit.gamingportal.entities.User;

public interface UserRepository extends CrudRepository<User, Long> {

	User findByEmail(String email);
	
	@Transactional
	@Modifying(flushAutomatically=true,clearAutomatically = true)
	@Query(value = "update User u set u.balance=u.balance+:balance where u.user_id=:userId",nativeQuery = true)
	public void updatebalance(@Param("balance") double balance,@Param("userId") long userId);
	
	
	
	
	
}
