package com.encap;

public class Account {

	private String accountName;
	private long accountNumber;
	private double accountDeposit; //200
	private double accountBalance; //2000 + 200 = 2200
	
	public String getAccountName() {
		return accountName;
	} 
	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}
	public long getAccountNumber() {
		return accountNumber;
	}
	public void setAccountNumber(long accountNumber) {
			
		this.accountNumber = accountNumber;
		
	}
	public double getAccountDeposit() {
		return accountDeposit;
		
	}
	public void setAccountDeposit(double accountDeposit) {
		if(accountDeposit>=50) {
		this.accountDeposit = accountDeposit;
	}
		else
			System.err.println("Invalid amount");
	}
	public double getAccountBalance() {
		return accountBalance;
	}
	public void setAccountBalance(double accountBalance) {
		this.accountBalance = accountBalance;
	}
}
