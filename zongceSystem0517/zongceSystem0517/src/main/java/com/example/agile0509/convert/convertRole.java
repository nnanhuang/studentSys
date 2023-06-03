package com.example.agile0509.convert;

/**
 * @author YuanYue
 * @ClassName convertRole
 * 进行role的vo和pojo的相互转换
 */

public class convertRole {
    public static String convert(int role) {
        switch (role) {
            case 1:
                return "学生";
            case 2:
                return "评委";
            case 3:
                return "学工";
            default:
                return "";
        }
    }

    public static int convertToValue(String roleName) {
        switch (roleName) {
            case "学生":
                return 1;
            case "评委":
                return 2;
            case "学工":
                return 3;
            default:
                return 0;
        }
    }
}

