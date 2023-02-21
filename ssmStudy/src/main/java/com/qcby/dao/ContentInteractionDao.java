package com.qcby.dao;

import com.qcby.model.ContentInteractionDo;
import com.qcby.model.Emp;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface ContentInteractionDao {
     List<ContentInteractionDo> findAll();

     int saveContent(ContentInteractionDo contentInteractionDo);
}


