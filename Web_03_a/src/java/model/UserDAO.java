
import java.util.ArrayList;
import model.UserDTO;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author se193234_TranGiaBao
 */
public class UserDAO {

    public ArrayList<UserDTO> list = new ArrayList<>();

    public UserDAO() {
        list = new ArrayList<>();
        list.add(new UserDTO("admin", "admin", "Nguyen Van A"));
        list.add(new UserDTO("user1", "user1", "Nguyen Van B"));
    }

    public UserDTO seachById(String username) {
        for (UserDTO userDTO : list) {
            if (userDTO.getUsername().equalsIgnoreCase(username)) {
                return userDTO;
            }
        }
        return null;
    }

    public UserDTO login(String username, String password) {
        UserDTO u = seachById(username);
        if (u != null && u.getPassword().equals(password)) {
            return u;
        }
        return null;

    }

}
