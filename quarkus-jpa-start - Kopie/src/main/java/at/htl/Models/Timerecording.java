package at.htl.Models;

import javax.persistence.*;
import java.sql.Time;
import java.time.LocalDateTime;

/**
 * One recorded timeentry with location and time stored.
 *
 */
//id, customer_id, court_id, starttime, endtime, restimestamp
@Entity
public class Timerecording {
    @Id
    private long timerecID;
    @ManyToOne
    @JoinColumn(name="user_id")
    private User user;


    public Long getLatitude() {
        return latitude;
    }

    public void setLatitude(Long latitude) {
        this.latitude = latitude;
    }

    public Long getLongitude() {
        return longitude;
    }

    public void setLongitude(Long longitude) {
        this.longitude = longitude;
    }

    public int getTimepassed() {
        return timepassed;
    }

    public void setTimepassed(int timepassed) {
        this.timepassed = timepassed;
    }

    public LocalDateTime getStarttime() {
        return starttime;
    }

    public void setStarttime(LocalDateTime starttime) {
        this.starttime = starttime;
    }

    private Long latitude;
    private Long longitude;
    private int timepassed;
    private LocalDateTime starttime;

    @ManyToOne
    private Projects projectid;

}
