package com.apress.prospring4.ch7;

import java.util.List;

/**
 * Created by Andrey Lyudvinskij on 28.03.2017.
 */
public interface ContactDao {
    List<Contact> findAll();
    List<Contact> findAllWithDetail();
    Contact findById(Long id);
    Contact save(Contact contact);
    void delete(Contact contact);
}
