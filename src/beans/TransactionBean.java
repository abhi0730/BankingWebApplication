package beans;

import java.text.ParseException;
import java.util.List;

import dbOperations.StorageDB;
import supportClasses.Transaction;

public class TransactionBean {
	
	List<Transaction> transList;

	public List<Transaction> getTransList(int accountNo) {
		StorageDB sdb = new StorageDB();
		try {
			transList =  sdb.txListC(accountNo);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return transList;
	}

	public void setTransList(List<Transaction> transList) {
		this.transList = transList;
	}
	
	

}
