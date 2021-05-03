package com.emp.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.emp.pojo.filterresultbean;

@Repository
public interface emprepo extends JpaRepository<filterresultbean,Integer> {
	@Query("select sr from filterresultbean sr where sr.category=?1 and sr.availability=?2 and sr.price<=?3")
	List<filterresultbean> getresult(String category,String availability,int price);

}
