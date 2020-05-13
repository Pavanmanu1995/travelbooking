package TravelbookingMVC.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import TravelbookingMVC.entity.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer>{

}
