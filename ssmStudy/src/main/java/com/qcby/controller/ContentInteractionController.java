//package com.qcby.controller;
//
//
//import com.qcby.model.ContentInteractionDo;
//import com.qcby.model.Emp;
//import com.qcby.service.ContentInteractionService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.dao.DataIntegrityViolationException;
//import org.springframework.dao.DuplicateKeyException;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RestController;
//
//import java.sql.SQLIntegrityConstraintViolationException;
//import java.time.LocalDateTime;
//import java.util.List;
//
//@RestController
//@RequestMapping("/content")
//public class ContentInteractionController {
//
//    @Autowired
//    private ContentInteractionService contentInteractionService;
//
//    /**
//     * 处理超链接发送出来的请求
//     * @param model
//     * @return
//     */
//    @RequestMapping(path = "/findAll")
//    public List<ContentInteractionDo> sayHello(Model model) {
//        List<ContentInteractionDo> all = contentInteractionService.findAll();
//        for (ContentInteractionDo contentInteractionDo : all) {
//            System.out.println("======" + contentInteractionDo.toString());
//        }
//        return all;
//    }
//
//
//    @RequestMapping(path = "/saveContent")
//    public Integer sayHello() {
//        ContentInteractionDo content = new ContentInteractionDo();
//        content.setBackgroupImageBucket("rmrb-video-photo-prod");
////        content.setBackgroupVimageBucket("");
////        content.setContentDesc();
////        content.setContentLocationCode();
////        content.setContentCheckStatus()
////        content.setLikeNum();
////        content.setWeightLikeNum();
////        content.setShareNum();
////        content.setCollectNum();
////        content.setCommentNum();
////        content.setCommentCheckFlag();
//        content.setCommentCheckShow(1);
//        content.setCommentFlag(1);
//        content.setContentBackgroundImage("4476/image/content/20230130/e5457e2339.jpg");
//        content.setContentBackgroundVimage("");
//        content.setContentId("257975");
//        content.setContentLocationName("null-null-null");
//        content.setContentPublishTime(LocalDateTime.now());
//        content.setContentSource(4);
//        content.setContentTitle("你想看烟花表演吗？打铁花了解一下～");
//        content.setContentType(2);
//        content.setCreatorId("2022834");
//        content.setDelStatus(0);
//        content.setHeadPhotoUrl("image/creator/rmh/20221031/621c6e1c65.jpeg");
//        content.setLandscape(1);
//        content.setLikeFlag(1);
//        content.setLikeStyle(1);
//        content.setOpenUrl("rmrb-creator-output-prod:573b/vod/content/20230130/2f2119b27d.mp4");
//        content.setPublishUserId("214771015622789");
//        content.setPublishUserType(2);
//        content.setTopFlag(0);
//        content.setUpdateTime(LocalDateTime.now());
//        content.setUserName("神兽腓腓");
//        content.setVideoDuration(50);
//        content.setVisibled(1);
//        int count=-1;
//        try {
//            count= contentInteractionService.saveContent(content);
//            System.out.println("成功");
//        }catch (Exception e){
//            if(e instanceof DuplicateKeyException || e.getCause() instanceof SQLIntegrityConstraintViolationException){
//                System.out.println("getCause失败DuplicateKeyException"+e.getCause());
//                System.out.println("getMessage失败DuplicateKeyException"+e.getMessage());
//                System.out.println("getStackTrace失败DuplicateKeyException"+e.getStackTrace());
//            }
//                System.out.println("失败"+e);
//        }
//        return count;
//    }
//}
