package at.htl.Models;

import java.sql.Timestamp;
import java.time.LocalDateTime;

public record entry(Long id, LocalDateTime starttime, int timepassed, String lastname, String projectName, int projectId, int userId) {
}
