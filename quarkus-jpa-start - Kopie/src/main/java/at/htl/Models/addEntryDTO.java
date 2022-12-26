package at.htl.Models;

import java.time.LocalDateTime;

public class addEntryDTO {
    public int getEntryID() {
        return entryID;
    }

    public void setEntryID(int entryID) {
        this.entryID = entryID;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public int getProjectID() {
        return projectID;
    }

    public void setProjectID(int projectID) {
        this.projectID = projectID;
    }

    public long getLatitude() {
        return latitude;
    }

    public void setLatitude(long latitude) {
        this.latitude = latitude;
    }

    public long getLongitude() {
        return longitude;
    }

    public void setLongitude(long longitude) {
        this.longitude = longitude;
    }

    public long getTimepassed() {
        return timepassed;
    }

    public void setTimepassed(long timepassed) {
        this.timepassed = timepassed;
    }

    public LocalDateTime getStarttime() {
        return starttime;
    }

    public void setStarttime(LocalDateTime starttime) {
        this.starttime = starttime;
    }

    int entryID;
    int userID;
    int projectID;
    long latitude;
    long longitude;

    public addEntryDTO(int entryID, int userID, int projectID, long latitude, long longitude, long timepassed, LocalDateTime starttime) {
        this.entryID = entryID;
        this.userID = userID;
        this.projectID = projectID;
        this.latitude = latitude;
        this.longitude = longitude;
        this.timepassed = timepassed;
        this.starttime = starttime;
    }

    long timepassed;
    LocalDateTime starttime;
}
