package at.htl.Models;

import java.time.LocalDateTime;

public record projectentry(Long latitude, Long longitude, int timepassed, LocalDateTime starttime, String firstname, String lastname, String email, int role) {
}