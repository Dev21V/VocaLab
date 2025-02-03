package com.dev.vocalab.users;

import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;

@Entity
@Table(name = "Users")
@Data
@ToString(exclude = {"boards", "files"})
@EqualsAndHashCode(exclude = {"boards", "files"})
@AllArgsConstructor
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Builder
public class UsersEntity {

    @Id
    @Column(name = "userNo")
    private String userNo;

    @Column(name = "userId", nullable = false, length = 100)
    private String userId;

    @Column(name = "userName", nullable = false, length = 100)
    private String userName;

    @Column(name = "userPassword", nullable = false, length = 255)
    private String userPassword;

    @Column(name = "userNickname", nullable = false, length = 100, unique = true)
    private String userNickname;

    @Column(name = "userEmail", nullable = false, length = 100, unique = true)
    private String userEmail;

    @Enumerated(EnumType.STRING)
    @Column(name = "userSocial", nullable = false, columnDefinition = "ENUM('NONE', 'GOOGLE', 'NAVER') DEFAULT 'NONE'")
    private UserSocial userSocial;

    @Enumerated(EnumType.STRING)
    @Column(name = "userRole", nullable = false, columnDefinition = "ENUM('USER', 'ADMIN') DEFAULT 'USER'")
    private UserRole userRole;

    @Enumerated(EnumType.STRING)
    @Column(name = "userStatus", nullable = false, columnDefinition = "ENUM('NORMAL', 'BANNED') DEFAULT 'NORMAL'")
    private UserStatus userStatus;

    @Column(name = "birthDate", nullable = false, length = 10)
    private String birthDate;

    @Column(name = "gender", nullable = false)
    private Integer gender;

    @Column(name = "createdAt", nullable = false, columnDefinition = "DATETIME DEFAULT CURRENT_TIMESTAMP")
    private LocalDateTime createdAt;

    @Column(name = "updatedAt", nullable = false, columnDefinition = "DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP")
    private LocalDateTime updatedAt;

    public enum UserSocial {
        NONE, GOOGLE, NAVER
    }

    public enum UserRole {
        USER, ADMIN
    }

    public enum UserStatus {
        NORMAL, BANNED
    }

}