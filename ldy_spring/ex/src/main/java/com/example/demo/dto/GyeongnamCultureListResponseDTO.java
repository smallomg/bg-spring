package com.example.demo.dto;
import lombok.Data;
import java.util.List;
import com.fasterxml.jackson.annotation.JsonProperty;
@Data
public class GyeongnamCultureListResponseDTO {
    private GyeongnamCultureList gyeongnamculturallist;

    @Data
    public static class GyeongnamCultureList {
        private Header header;
        private Body body;
    }

    @Data
    public static class Header {
        private String resultCode;
        private String resultMsg;
    }

    @Data
    public static class Body {
        private Items items;
        private int numOfRows;
        private int pageNo;
        private int totalCount;
    }

    @Data
    public static class Items {
        private List<Item> item;
    }

    @Data
    public static class Item {
        @JsonProperty("DOJIJUNG_NO")
        private String dojiJungNo;

        @JsonProperty("MYONGCHING")
        private String myongching;

        @JsonProperty("MYONGCHING_HANMUN")
        private String myongchingHanmun;

        @JsonProperty("CONTENT")
        private String content;

        @JsonProperty("MYONJUK")
        private String myonjuk;

        @JsonProperty("SOYOUJA_NAME")
        private String soyoujaName;

        @JsonProperty("ADMIN_NAME")
        private String adminName;

        @JsonProperty("SIDAE")
        private String sidae;

        @JsonProperty("JIJUNG_DATE")
        private String jijungDate;

        @JsonProperty("ADDRESS1")
        private String address1;

        @JsonProperty("UTMK_X")
        private String utmkX;

        @JsonProperty("UTMK_Y")
        private String utmkY;

        @JsonProperty("fileurl1")
        private String fileurl1;

        @JsonProperty("fileurl2")
        private String fileurl2;

        @JsonProperty("fileurl3")
        private String fileurl3;
    }
}
