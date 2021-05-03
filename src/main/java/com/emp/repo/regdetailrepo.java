package com.emp.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.emp.pojo.regbean;

@Repository
public interface regdetailrepo extends JpaRepository<regbean,String> {

}
