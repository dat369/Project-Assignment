package model;

import java.util.ArrayList;


public class ManagerList extends ArrayList<Manager> {
    public ManagerList() {
        add(new Manager("admin1", "password1"));
        add(new Manager("admin2", "password2"));
    }
}
