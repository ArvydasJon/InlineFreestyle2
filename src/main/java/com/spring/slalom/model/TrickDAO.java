package com.spring.slalom.model;

import java.util.List;

public interface TrickDAO {

    void insertEntity(Trick trick);

    List<Trick> findEntities();

    void removeEntityById(int id);


    Trick findEntityById(int id);

    void updateEntity(Trick trick);

}
