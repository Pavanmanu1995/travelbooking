package TravelbookingMVC.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import TravelbookingMVC.entity.BookTicket;

@Repository
public interface BookTicketRepository extends JpaRepository<BookTicket, Integer>{

}
