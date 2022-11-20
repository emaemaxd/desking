package at.htl.Models;

import java.sql.Timestamp;
import java.time.LocalDateTime;

public record entry(LocalDateTime starttime, int timepassed, String lastname, String customer) {
}
