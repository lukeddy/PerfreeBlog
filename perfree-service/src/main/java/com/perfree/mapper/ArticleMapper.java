package com.perfree.mapper;

import com.perfree.model.Article;
import com.perfree.model.ArticleTag;
import com.perfree.model.Tag;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface ArticleMapper {
    /**
     * 添加文章
     * @param article article
     * @return int
     */
    int add(Article article);

    /**
     * 关联文章和标签
     * @param articleTags articleTags
     */
    void addArticleTag(List<ArticleTag> articleTags);

    /**
     * 文章列表数据
     * @param article article
     * @return   List<Article>
     */
    List<Article> getList(Article article);

    /**
     * 根据文章id获取标签
     * @param id id
     * @return List<Tag>
     */
    List<Tag> getArticleTagById(String id);

}