package com.perfree.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.perfree.common.Pager;
import com.perfree.mapper.LinkMapper;
import com.perfree.model.Link;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

@Service
@Transactional
public class LinkService {
    @Autowired
    private LinkMapper linkMapper;

    public Pager<Link> list(Pager<Link> pager) {
        PageHelper.startPage(pager.getPageIndex(), pager.getPageSize());
        List<Link> links = linkMapper.getList(pager.getForm());
        PageInfo<Link> pageInfo = new PageInfo<>(links);
        pager.setTotal(pageInfo.getTotal());
        pager.setData(pageInfo.getList());
        pager.setCode(Pager.SUCCESS_CODE);
        return pager;
    }

    public int add(Link link) {
        link.setCreateTime(new Date());
        return linkMapper.add(link);
    }

    public Link getById(String id) {
        return linkMapper.getById(id);
    }

    public int update(Link link) {
        link.setUpdateTime(new Date());
        return linkMapper.update(link);
    }

    public int del(String[] idArr) {
        return linkMapper.del(idArr);
    }
}
