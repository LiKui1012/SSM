//package com.qcby.service.impl;
//
//import com.qcby.dao.ContentInteractionDao;
//import com.qcby.model.ContentInteractionDo;
//import com.qcby.service.ContentInteractionService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import javax.annotation.Resource;
//import java.util.List;
//
//@Service
//public class ContentInteractionServiceImp implements ContentInteractionService {
//    @Resource
//    private ContentInteractionDao contentInteractionDao;
//
//    @Override
//    public List<ContentInteractionDo> findAll() {
//        System.out.println("业务层：查询所有内容");
//        return this.contentInteractionDao.findAll();
//    }
//
//
//    @Override
//    public int saveContent(ContentInteractionDo contentInteractionDo) {
//        System.out.println("业务层：保存内容");
//        return this.contentInteractionDao.saveContent(contentInteractionDo);
//    }
//
//}
