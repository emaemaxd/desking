package at.htl.Models;

import java.sql.Timestamp;

public class ProjectEntryDTO {
    Timestamp starttime;
    long timepassed;
    long latitude;
    long longitude;
    timerecID timerecID;
    String cusfirstname;
    String cuslastname;

    public ProjectEntryDTO(Timestamp starttime, long timepassed, long latitude, long longitude, at.htl.Models.timerecID timerecID, String cusfirstname, String cuslastname) {
        this.starttime = starttime;
        this.timepassed = timepassed;
        this.latitude = latitude;
        this.longitude = longitude;
        this.timerecID = timerecID;
        this.cusfirstname = cusfirstname;
        this.cuslastname = cuslastname;
    }

    public Timestamp getStarttime() {
        return starttime;
    }

    public void setStarttime(Timestamp starttime) {
        this.starttime = starttime;
    }

    public long getTimepassed() {
        return timepassed;
    }

    public void setTimepassed(long timepassed) {
        this.timepassed = timepassed;
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

    public at.htl.Models.timerecID getTimerecID() {
        return timerecID;
    }

    public void setTimerecID(at.htl.Models.timerecID timerecID) {
        this.timerecID = timerecID;
    }

    public String getCusfirstname() {
        return cusfirstname;
    }

    public void setCusfirstname(String cusfirstname) {
        this.cusfirstname = cusfirstname;
    }

    public String getCuslastname() {
        return cuslastname;
    }

    public void setCuslastname(String cuslastname) {
        this.cuslastname = cuslastname;
    }
}
