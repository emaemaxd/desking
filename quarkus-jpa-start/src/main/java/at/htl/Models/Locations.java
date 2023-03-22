package at.htl.Models;

import javax.persistence.*;

@Entity
public class Locations {

    @Id
  //  @SequenceGenerator(name = "idSeq", sequenceName = "id_Seq_Gen", allocationSize = 1, initialValue = 1)
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
    private String name;
    private Float latitude;
    private Float longitude;
    private String info;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(Float latitude) {
        this.latitude = latitude;
    }

    public double getLongitude() {
        return longitude;
    }

    public void setLongitude(Float longitude) {
        this.longitude = longitude;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }
}
