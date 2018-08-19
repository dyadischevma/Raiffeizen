package model;

import com.google.gson.annotations.SerializedName;

import java.util.*;

public class FixerResponseDataClass {
    @SerializedName("success")
    public Boolean success;
    @SerializedName("timestamp")
    public String timestamp;
    @SerializedName("base")
    public String base;
    @SerializedName("date")
    public Date date;
    @SerializedName("rates")
    public Map<String, String> rates;
    @SerializedName("error")
    public FixerError error;

    class FixerError {
        @SerializedName("code")
        int code;
        @SerializedName("type")
        String type;
        @SerializedName("info")
        String info;

        @Override
        public boolean equals(Object o) {
            if (this == o) return true;
            if (o == null || getClass() != o.getClass()) return false;
            FixerError that = (FixerError) o;
            return code == that.code &&
                    Objects.equals(type, that.type) &&
                    Objects.equals(info, that.info);
        }

        @Override
        public int hashCode() {

            return Objects.hash(code, type, info);
        }

        @Override
        public String toString() {
            return "FixerError{" +
                    "code=" + code +
                    ", type='" + type + '\'' +
                    ", info='" + info + '\'' +
                    '}';
        }
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        FixerResponseDataClass that = (FixerResponseDataClass) o;
        return Objects.equals(success, that.success) &&
                Objects.equals(timestamp, that.timestamp) &&
                Objects.equals(base, that.base) &&
                Objects.equals(date, that.date) &&
                Objects.equals(rates, that.rates) &&
                Objects.equals(error, that.error);
    }

    @Override
    public int hashCode() {

        return Objects.hash(success, timestamp, base, date, rates, error);
    }

    @Override
    public String toString() {
        return "FixerResponseDataClass{" +
                "success=" + success +
                ", timestamp='" + timestamp + '\'' +
                ", base='" + base + '\'' +
                ", date=" + date +
                ", rates=" + rates +
                ", error=" + error +
                '}';
    }
}
