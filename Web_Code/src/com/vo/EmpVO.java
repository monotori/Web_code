package com.vo;
/* VO(Value Object)
 * DTO(Data Transfer Object)
 * 사원정보를 관리하는 테이블이 있다. emp
 * emp집합에는 8개의 컬럼이 있다.
 * 8개를 따로 받으려면 변수를 8개 선언해야 된다.
 * 그런데 VO를 사용하면 주소번지 하나에 8개 값을 모두 넘길 수 또는 받을 수 있다.
 * 변수선언은 private으로 하였다.
 * 왜? - 직접 변조를 막기 위해
 * 그러면 값을 어떻게 담고 꺼내오지?
 * 담을 땐 setXXX()메소드로 
 * 꺼낼 땐 getXXX()메소드로 꺼낸다.
 * 그래서 getter와 setter메소드는 접근제한자를 public 으로 하였다.
 * 테이블에 존재하지 않는 컬럼이더라도 개발자가 업무처리에 필요하면 
 * VO에 변수를 추가할 수 있다.
 */
public class EmpVO {
	
	private int    empno    =0; 
	private String ename    ="초기값"; 
	private String job      =null; 
	private int    mgr      =0; 
	private String hiredate =null; 
	private double sal      =0.0; 
	private double comm     =0.0; 
	private int	   deptno   =0;
	//INSERT|SELECT|UPDATE|DELETE
	private String command  =null;
	public int getEmpno() {
		return empno;
	}
	public void setEmpno(int empno) {
		this.empno = empno;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public int getMgr() {
		return mgr;
	}
	public void setMgr(int mgr) {
		this.mgr = mgr;
	}
	public String getHiredate() {
		return hiredate;
	}
	public void setHiredate(String hiredate) {
		this.hiredate = hiredate;
	}
	public double getSal() {
		return sal;
	}
	public void setSal(double sal) {
		this.sal = sal;
	}
	public double getComm() {
		return comm;
	}
	public void setComm(double comm) {
		this.comm = comm;
	}
	public int getDeptno() {
		return deptno;
	}
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	public String getCommand() {
		return command;
	}
	public void setCommand(String command) {
		this.command = command;
	} 
}
