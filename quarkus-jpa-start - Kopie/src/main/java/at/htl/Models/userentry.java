package at.htl.Models;

import java.time.LocalDateTime;

public record userentry(Long latitude, Long longitude, int timepassed, LocalDateTime starttime, int projectid) {
}
