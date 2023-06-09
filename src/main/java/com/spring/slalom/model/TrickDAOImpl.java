package com.spring.slalom.model;

import com.spring.slalom.config.JPAUtil;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import java.util.List;


public class TrickDAOImpl implements TrickDAO {

    /** Išsaugo įrašą db
     *
     * @param trick
     */
    @Override
    public void insertEntity(Trick trick) {
        EntityManager entityManager = JPAUtil.getEntityManagerFactory().createEntityManager();
        EntityTransaction entityTransaction = entityManager.getTransaction();
        entityTransaction.begin();
        entityManager.persist(trick);//išsaugo objektą DB(ojektas = įrašas lentelėje) - ORM
        entityManager.getTransaction().commit();
        entityManager.close();
    }

    /** paima visus įrašus iš db
     *
     * @return
     */
    @Override
    public List<Trick> findEntities() {
        EntityManager entityManager = JPAUtil.getEntityManagerFactory().createEntityManager();

        EntityTransaction entityTransaction = entityManager.getTransaction();
        entityTransaction.begin();

        List<Trick> tricks = entityManager
                .createQuery("SELECT n FROM Trick n")
                .getResultList();

        entityManager.getTransaction().commit();
        entityManager.close();

        return tricks;
    }

    /** Ištriną įrašą iš db
     *
     * @param id
     */

    @Override
    public void removeEntityById(int id) {
        EntityManager entityManager= JPAUtil.getEntityManagerFactory().createEntityManager();
        EntityTransaction entityTransaction = entityManager.getTransaction();
        entityTransaction.begin();

        Trick trickDB= entityManager.find(Trick.class, id);
        entityManager.remove(trickDB);

        entityManager.getTransaction().commit();
        entityManager.close();
    }

    /** suranda db įrašą su tam tikru id
     *
     * @param id
     * @return
     */
    @Override
    public Trick findEntityById(int id) {
        EntityManager entityManager = JPAUtil.getEntityManagerFactory().createEntityManager();

        EntityTransaction entityTransaction = entityManager.getTransaction();
        entityTransaction.begin();

        List<Trick> tricks = entityManager
                .createQuery("SELECT n FROM Trick n WHERE n.id = :id")
                .setParameter("id", id)
                .getResultList();

        entityManager.getTransaction().commit();
        entityManager.close();

        return tricks.get(0);
    }

    /** Pakeičia norimą įrašą
     *
     * @param trick
     */
    @Override
    public void updateEntity(Trick trick) {
        EntityManager entityManager= JPAUtil.getEntityManagerFactory().createEntityManager();
        EntityTransaction entityTransaction = entityManager.getTransaction();
        entityTransaction.begin();

        //Kad atnaujinti įrašą reikia jį surasti DB
        Trick trickDB= entityManager.find(Trick.class, trick.getId());

        trickDB.setTrick_name(trick.getTrick_name());
        trickDB.setTrick_type(trick.getTrick_type());
        trickDB.setTrick_level(trick.getTrick_level());
        trickDB.setTrick_score(trick.getTrick_score());
        trickDB.setOfficial_score(trick.isOfficial_score());
        trickDB.setTrick_level(trick.getTrick_level());
        trickDB.setTrick_name2(trick.getTrick_name2());
        trickDB.setLink(trick.getLink());

        entityManager.getTransaction().commit();
        entityManager.close();
    }
}
