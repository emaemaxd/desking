package at.htl.Models;

import java.time.LocalDateTime;

public record userentry(Long id, Long latitude, Long longitude, int timepassed, LocalDateTime starttime, int projectId, String projectName, int userId) {
}
