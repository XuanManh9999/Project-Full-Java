package com.javaweb.entity;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "user")
public class UserEntity extends BaseEntity {

    private static final long serialVersionUID = -4988455421375043688L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "username", nullable = false, unique = true)
    private String userName;

    @Column(name = "fullname", nullable = false)
    private String fullName;

    @Column(name = "password", nullable = false)
    private String password;

    @Column(name = "status", nullable = false)
    private Integer status;

    @Column(name = "email", unique = true)
    private String email;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "user_role",
            joinColumns = @JoinColumn(name = "user_id", nullable = false),
            inverseJoinColumns = @JoinColumn(name = "role_id", nullable = false))
    private List<RoleEntity> roles = new ArrayList<>();

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }


    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public List<RoleEntity> getRoles() {
        return roles;
    }

    public void setRoles(List<RoleEntity> roles) {
        this.roles = roles;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public Long getId() {
        return id;
    }

    @Override
    public void setId(Long id) {
        this.id = id;
    }

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "staff")
    @Fetch(FetchMode.SUBSELECT)
    private List<AssignMentCustomer> listAssignMentCustomer;

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "userEntity")
    @Fetch(FetchMode.SUBSELECT)
    private List<Transaction> transactions;

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "userEntity")
    @Fetch(FetchMode.SUBSELECT)
    private List<AssigmmentBuilding> assigmmentBuildings;

    public List<AssignMentCustomer> getListAssignMentCustomer() {
        return listAssignMentCustomer;
    }

    public List<AssigmmentBuilding> getAssigmmentBuildings() {
        return assigmmentBuildings;
    }

    public void setAssigmmentBuildings(List<AssigmmentBuilding> assigmmentBuildings) {
        this.assigmmentBuildings = assigmmentBuildings;
    }

    public void setListAssignMentCustomer(List<AssignMentCustomer> listAssignMentCustomer) {
        this.listAssignMentCustomer = listAssignMentCustomer;
    }

    public List<Transaction> getTransactions() {
        return transactions;
    }

    public void setTransactions(List<Transaction> transactions) {
        this.transactions = transactions;
    }
}
