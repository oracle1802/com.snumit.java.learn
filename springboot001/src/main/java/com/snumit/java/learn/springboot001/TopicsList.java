package com.snumit.java.learn.springboot001;

import com.fasterxml.jackson.annotation.JsonFilter;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * Created by Andrey on 23.06.2017.
 */
public class TopicsList {
    private int id;
    private String topicName;
    @JsonFormat(pattern="dd.MM.yyyy HH:mm:ss")
    private Date someDate;

    public TopicsList() {
    }

    public TopicsList(int id, String topicName) {
        this.id = id;
        this.topicName = topicName;

        Calendar cal = Calendar.getInstance();
        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
        this.someDate = cal.getTime();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTopicName() {
        return "";
    }

    public void setTopicName(String topicName) {
        this.topicName = topicName;
    }

    public Date getSomeDate() {
        return someDate;
    }

    public void setSomeDate(Date someDate) {
        this.someDate = someDate;
    }
}
