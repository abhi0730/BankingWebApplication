package dbOperations;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AccountTranscations {

	int accountNo;
	StorageDB sdb;
	Connection conn;
	PreparedStatement pst;

	public AccountTranscations(int accountNo) {
		this.accountNo = accountNo;
		sdb = new StorageDB();
		conn = sdb.getConnection();
	}

	public double getBalance() {
		double balance = 0;
		try {
			pst = conn.prepareStatement("select * from accounts where ACCNT_ID=?");
			pst.setInt(1, accountNo);
			ResultSet rs = pst.executeQuery();
			if(rs.next())
			{
				balance = rs.getDouble("balance");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return balance;
	}

	public void creditMoney(double amountCredit) {
		double totalAnmount = getBalance() + amountCredit;
		try {
			pst = conn.prepareStatement("update accounts SET balance = ? where ACCNT_ID=?");
			pst.setDouble(1, totalAnmount);
			pst.setInt(2, accountNo);
			pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public int debitMoney(double amountDebit) {
		if ((getBalance() - amountDebit) < 500) {
			return -1;
		} else {
			double totalAnmount = getBalance() - amountDebit;
			try {
				pst = conn.prepareStatement("update accounts SET balance = ? where ACCNT_ID=?");
				pst.setDouble(1, totalAnmount);
				pst.setInt(2, accountNo);
				pst.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return 1;
		}
	}
}
