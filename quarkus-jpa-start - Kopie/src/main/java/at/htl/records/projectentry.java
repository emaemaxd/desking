package at.htl.records;

import java.time.LocalDateTime;

public record projectentry(Long id, Long latitude, Long longitude, int timepassed, LocalDateTime starttime, String firstname, String lastname, String email, int role, int projectID, int userID) {
}
