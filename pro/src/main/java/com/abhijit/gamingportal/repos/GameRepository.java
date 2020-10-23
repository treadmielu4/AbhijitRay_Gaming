package com.abhijit.gamingportal.repos;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.abhijit.gamingportal.entities.Game;
import com.abhijit.gamingportal.entities.User;

public interface GameRepository extends CrudRepository<Game, Long> {

	@Transactional
	@Modifying(flushAutomatically=true,clearAutomatically = true)
	@Query(value = "update User u set u.balance=u.balance-:gameAmount where u.user_id=:userId",nativeQuery = true)
	public void balaftergame(@Param("gameAmount") double gameAmount,@Param("userId") long userId);

	

}
