package at.htl.Models;

import javax.persistence.*;
import java.sql.Time;
import java.time.LocalDateTime;

//id, customer_id, court_id, starttime, endtime, restimestamp
@Entity
public class Timerecording {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private long timerecID;
    @ManyToOne
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

    public Time getTimepassed() {
        return timepassed;
    }

    public void setTimepassed(Time timepassed) {
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
    private Time timepassed;
    private LocalDateTime starttime;

}
