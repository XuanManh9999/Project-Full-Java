package com.javaweb.entity;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.util.List;

@Entity
@Table(name = "customer")
public class Customer extends BaseEntity {
    private String fullname;
    private String phone;
    private String email;
    private String companyname;
    private String demand;
    private String status;
    private int is_active;

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCompanyname() {
        return companyname;
    }

    public void setCompanyname(String companyname) {
        this.companyname = companyname;
    }

    public String getDemand() {
        return demand;
    }

    public void setDemand(String demand) {
        this.demand = demand;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getIs_active() {
        return is_active;
    }

    public void setIs_active(int is_active) {
        this.is_active = is_active;
    }

    @OneToMany(mappedBy = "customer")
    @Fetch(FetchMode.SUBSELECT)
    private List<AssignMentCustomer> assignments;

    @OneToMany(mappedBy = "customer")
    @Fetch(FetchMode.SUBSELECT)
    private List<Transaction> transactionList;

    public List<AssignMentCustomer> getAssignments() {
        return assignments;
    }

    public void setAssignments(List<AssignMentCustomer> assignments) {
        this.assignments = assignments;
    }

    public List<Transaction> getTransactionList() {
        return transactionList;
    }

    public void setTransactionList(List<Transaction> transactionList) {
        this.transactionList = transactionList;
    }
}
