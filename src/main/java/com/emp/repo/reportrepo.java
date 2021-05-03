package com.emp.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.emp.pojo.reportbean;

@Repository
public interface reportrepo extends JpaRepository<reportbean,Integer> {
	@Query("select rep from reportbean rep where rep.reportid=?1")
	List<reportbean> getreport(int reportid);
}
