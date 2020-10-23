package com.abhijit.gamingportal.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.abhijit.gamingportal.entities.Admin;
import com.abhijit.gamingportal.entities.User;
@Repository
public interface AdminRepository extends CrudRepository<Admin, Long> {

	Admin findByEmail(String email);

}
