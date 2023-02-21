package com.qcby.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * @author whz
 * @date 2022/7/12
 */
public class ContentInteractionDo implements Serializable {
    private Long id;

    /**
     * 内容id
     */
    private String contentId;

    /**
     * 内容来源
     * 1：圈子内容
     * 2：话题内容
     * 3：社区内容【创作者和普通用户在社区频道发布的内容】
     * 4：内容中心内容【内容中心发布内容，来源再细分为号主、矩阵号、内容源账号发布视频】
     * 5：直播间
     */
    private Integer contentSource;

    /**
     * 内容类型：1-图文 2-视频 3-直播 4-纯文本
     */
    private Integer contentType;

    /**
     * 内容标题
     */
    private String contentTitle;

    /**
     * 内容描述
     */
    private String contentDesc;

    /**
     * 内容封面图url
     */
    private String contentBackgroundImage;

    /**
     * 内容发布时间
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private LocalDateTime contentPublishTime;

    /**
     * 发布者id
     */
    private String publishUserId;

    /**
     * 发布者类型：1-普通用户 2-视频号 3-矩阵号
     */
    private Integer publishUserType;

    /**
     * 内容发布位置code，多个用-隔开，如：省code-市code-区县code
     */
    private String contentLocationCode;

    /**
     * 内容发布位置名称，多个用-隔开，如：安徽省-合肥市-蜀山区
     */
    private String contentLocationName;

    /**
     * 内容审核状态：0-审核中 1-审核通过 2-审核驳回
     */
    private Integer contentCheckStatus;

    /**
     * 内容是否置顶：0-否 1-是
     * 内容置顶是用户纬度的，不同用户该字段值会不同
     */
    private Integer topFlag;

    /**
     * 视频时长(s)
     */
    private Integer videoDuration;

    /**
     * 点赞数
     */
    private Integer likeNum;


    /**
     * 加权赞数
     */
    private Integer weightLikeNum;


    /**
     * 分享数
     */
    private Integer shareNum;

    /**
     * 收藏数
     */
    private Integer collectNum;

    /**
     * 评论数
     */
    private Integer commentNum;

    /**
     * 1:可见，0：不可见；内容权限、账号禁用 时设置，对其他用户不可见，自己可见；
     */
    private Integer visibled;

    /**
     * 点赞开关 1是 0否;
     */
    private Integer likeFlag;

    /**
     * 点赞样式 1红心 2大拇指，开启点赞时必填
     */
    private Integer likeStyle;

    /**
     * 评论开关
     * 0：关闭，所有人都不能评论此内容；
     * 1：打开，可以评论，默认;
     * 【内容所有人设置】 发布者操作
     */
    private Integer commentFlag;

    /**
     * 评论审核开关：0-无需审核；1-需要审核；默认1；
     * 【使用场景可以关闭审核功能，直接发布，发布后也不用审核】
     */
    private Integer commentCheckFlag;

    /**
     * 评论审核策略：0-无，默认；1-先发后审；2-先审后发；
     * 【来源评论策略配置表】
     */
    private Integer commentCheckStrategy;

    /**
     * 删除状态：0-有效，默认； 1-删除
     */
    private Integer delStatus;

    /**
     * 创建时间
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private LocalDateTime createTime;

    /**
     * 更新时间
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private LocalDateTime updateTime;


    /**
     * 横屏竖屏 1-横屏 2-竖屏
     */
    private Integer landscape;


    /**
     * 启播地址
     */
    private String openUrl;


    /**
     * 头像
     */
    private String headPhotoUrl;


    /**
     * 姓名
     */
    private String userName;


    /**
     * 封面图 横图
     */
    private String backgroupImageBucket;


    /**
     * 封面图 竖图
     */
    private String contentBackgroundVimage;


    /**
     * 竖桶
     */
    private String backgroupVimageBucket;


    /**
     * 创作者id
     */
    private String creatorId;


    /**
     * 1130新增评论预显示开关
     * 0关闭，1开启
     */
    private Integer commentCheckShow;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getContentId() {
        return contentId;
    }

    public void setContentId(String contentId) {
        this.contentId = contentId;
    }

    public Integer getContentSource() {
        return contentSource;
    }

    public void setContentSource(Integer contentSource) {
        this.contentSource = contentSource;
    }

    public Integer getContentType() {
        return contentType;
    }

    public void setContentType(Integer contentType) {
        this.contentType = contentType;
    }

    public String getContentTitle() {
        return contentTitle;
    }

    public void setContentTitle(String contentTitle) {
        this.contentTitle = contentTitle;
    }

    public String getContentDesc() {
        return contentDesc;
    }

    public void setContentDesc(String contentDesc) {
        this.contentDesc = contentDesc;
    }

    public String getContentBackgroundImage() {
        return contentBackgroundImage;
    }

    public void setContentBackgroundImage(String contentBackgroundImage) {
        this.contentBackgroundImage = contentBackgroundImage;
    }

    public LocalDateTime getContentPublishTime() {
        return contentPublishTime;
    }

    public void setContentPublishTime(LocalDateTime contentPublishTime) {
        this.contentPublishTime = contentPublishTime;
    }

    public String getPublishUserId() {
        return publishUserId;
    }

    public void setPublishUserId(String publishUserId) {
        this.publishUserId = publishUserId;
    }

    public Integer getPublishUserType() {
        return publishUserType;
    }

    public void setPublishUserType(Integer publishUserType) {
        this.publishUserType = publishUserType;
    }

    public String getContentLocationCode() {
        return contentLocationCode;
    }

    public void setContentLocationCode(String contentLocationCode) {
        this.contentLocationCode = contentLocationCode;
    }

    public String getContentLocationName() {
        return contentLocationName;
    }

    public void setContentLocationName(String contentLocationName) {
        this.contentLocationName = contentLocationName;
    }

    public Integer getContentCheckStatus() {
        return contentCheckStatus;
    }

    public void setContentCheckStatus(Integer contentCheckStatus) {
        this.contentCheckStatus = contentCheckStatus;
    }

    public Integer getTopFlag() {
        return topFlag;
    }

    public void setTopFlag(Integer topFlag) {
        this.topFlag = topFlag;
    }

    public Integer getVideoDuration() {
        return videoDuration;
    }

    public void setVideoDuration(Integer videoDuration) {
        this.videoDuration = videoDuration;
    }

    public Integer getLikeNum() {
        return likeNum;
    }

    public void setLikeNum(Integer likeNum) {
        this.likeNum = likeNum;
    }

    public Integer getWeightLikeNum() {
        return weightLikeNum;
    }

    public void setWeightLikeNum(Integer weightLikeNum) {
        this.weightLikeNum = weightLikeNum;
    }

    public Integer getShareNum() {
        return shareNum;
    }

    public void setShareNum(Integer shareNum) {
        this.shareNum = shareNum;
    }

    public Integer getCollectNum() {
        return collectNum;
    }

    public void setCollectNum(Integer collectNum) {
        this.collectNum = collectNum;
    }

    public Integer getCommentNum() {
        return commentNum;
    }

    public void setCommentNum(Integer commentNum) {
        this.commentNum = commentNum;
    }

    public Integer getVisibled() {
        return visibled;
    }

    public void setVisibled(Integer visibled) {
        this.visibled = visibled;
    }

    public Integer getLikeFlag() {
        return likeFlag;
    }

    public void setLikeFlag(Integer likeFlag) {
        this.likeFlag = likeFlag;
    }

    public Integer getLikeStyle() {
        return likeStyle;
    }

    public void setLikeStyle(Integer likeStyle) {
        this.likeStyle = likeStyle;
    }

    public Integer getCommentFlag() {
        return commentFlag;
    }

    public void setCommentFlag(Integer commentFlag) {
        this.commentFlag = commentFlag;
    }

    public Integer getCommentCheckFlag() {
        return commentCheckFlag;
    }

    public void setCommentCheckFlag(Integer commentCheckFlag) {
        this.commentCheckFlag = commentCheckFlag;
    }

    public Integer getCommentCheckStrategy() {
        return commentCheckStrategy;
    }

    public void setCommentCheckStrategy(Integer commentCheckStrategy) {
        this.commentCheckStrategy = commentCheckStrategy;
    }

    public Integer getDelStatus() {
        return delStatus;
    }

    public void setDelStatus(Integer delStatus) {
        this.delStatus = delStatus;
    }

    public LocalDateTime getCreateTime() {
        return createTime;
    }

    public void setCreateTime(LocalDateTime createTime) {
        this.createTime = createTime;
    }

    public LocalDateTime getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(LocalDateTime updateTime) {
        this.updateTime = updateTime;
    }

    public Integer getLandscape() {
        return landscape;
    }

    public void setLandscape(Integer landscape) {
        this.landscape = landscape;
    }

    public String getOpenUrl() {
        return openUrl;
    }

    public void setOpenUrl(String openUrl) {
        this.openUrl = openUrl;
    }

    public String getHeadPhotoUrl() {
        return headPhotoUrl;
    }

    public void setHeadPhotoUrl(String headPhotoUrl) {
        this.headPhotoUrl = headPhotoUrl;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getBackgroupImageBucket() {
        return backgroupImageBucket;
    }

    public void setBackgroupImageBucket(String backgroupImageBucket) {
        this.backgroupImageBucket = backgroupImageBucket;
    }

    public String getContentBackgroundVimage() {
        return contentBackgroundVimage;
    }

    public void setContentBackgroundVimage(String contentBackgroundVimage) {
        this.contentBackgroundVimage = contentBackgroundVimage;
    }

    public String getBackgroupVimageBucket() {
        return backgroupVimageBucket;
    }

    public void setBackgroupVimageBucket(String backgroupVimageBucket) {
        this.backgroupVimageBucket = backgroupVimageBucket;
    }

    public String getCreatorId() {
        return creatorId;
    }

    public void setCreatorId(String creatorId) {
        this.creatorId = creatorId;
    }

    public Integer getCommentCheckShow() {
        return commentCheckShow;
    }

    public void setCommentCheckShow(Integer commentCheckShow) {
        this.commentCheckShow = commentCheckShow;
    }

    @Override
    public String toString() {
        return "ContentInteractionDo{" +
                "id=" + id +
                ", contentId='" + contentId + '\'' +
                ", contentSource=" + contentSource +
                ", contentType=" + contentType +
                ", contentTitle='" + contentTitle + '\'' +
                ", contentDesc='" + contentDesc + '\'' +
                ", contentBackgroundImage='" + contentBackgroundImage + '\'' +
                ", contentPublishTime=" + contentPublishTime +
                ", publishUserId='" + publishUserId + '\'' +
                ", publishUserType=" + publishUserType +
                ", contentLocationCode='" + contentLocationCode + '\'' +
                ", contentLocationName='" + contentLocationName + '\'' +
                ", contentCheckStatus=" + contentCheckStatus +
                ", topFlag=" + topFlag +
                ", videoDuration=" + videoDuration +
                ", likeNum=" + likeNum +
                ", weightLikeNum=" + weightLikeNum +
                ", shareNum=" + shareNum +
                ", collectNum=" + collectNum +
                ", commentNum=" + commentNum +
                ", visibled=" + visibled +
                ", likeFlag=" + likeFlag +
                ", likeStyle=" + likeStyle +
                ", commentFlag=" + commentFlag +
                ", commentCheckFlag=" + commentCheckFlag +
                ", commentCheckStrategy=" + commentCheckStrategy +
                ", delStatus=" + delStatus +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                ", landscape=" + landscape +
                ", openUrl='" + openUrl + '\'' +
                ", headPhotoUrl='" + headPhotoUrl + '\'' +
                ", userName='" + userName + '\'' +
                ", backgroupImageBucket='" + backgroupImageBucket + '\'' +
                ", contentBackgroundVimage='" + contentBackgroundVimage + '\'' +
                ", backgroupVimageBucket='" + backgroupVimageBucket + '\'' +
                ", creatorId='" + creatorId + '\'' +
                ", commentCheckShow=" + commentCheckShow +
                '}';
    }
}
