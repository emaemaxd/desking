package at.htl.records;

import java.time.LocalDateTime;

public record userentry(Long timerecID, Long latitude, Long longitude, int timepassed, LocalDateTime starttime, int projectid, int userID) {
}
