import java.sql.Timestamp;

public class Sighting {

    private double latitude;
    private double longitude;
    private String date;
    private Timestamp timestamp;

    public Sighting(double latitude, double longitude, String date, Timestamp timestamp) {
        this.latitude = latitude;
        this.longitude = longitude;
        this.date = date;
        this.timestamp = timestamp;
    }

    public double getLatitude() {
        return latitude;
    }

    public double getLongitude() {
        return longitude;
    }

    public String getDate() {
        return date;
    }

    public Timestamp getTimestamp() {
        return timestamp;
    }
}
