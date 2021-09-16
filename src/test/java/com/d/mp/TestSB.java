package com.d.mp;

import static org.junit.Assert.*;

import javax.sql.DataSource;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class TestSB extends TempJUnitTest {

	@Autowired
	private DataSource dataSource;

	@Test
	public void test() throws Exception {
		assertNotNull(dataSource.getConnection());
	}

}
