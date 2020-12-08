package com.perfree.config;

import cn.hutool.core.io.FileUtil;
import com.jfinal.template.source.FileSource;
import com.jfinal.template.source.ISource;
import com.jfinal.template.source.ISourceFactory;

import java.io.File;

/**
 * TemplateSource Configuration
 *
 * @author Perfree
 */
public class TemplateSourceFactory implements ISourceFactory {
    @Override
    public ISource getSource(String s, String s1, String s2) {
        File file = new File("resources/" + s1);
        if (file.exists()) {
            return new FileSource("resources", s1, s2);
        } else {
            return new FileSource(FileUtil.file("").getAbsolutePath(), s1, s2);
        }
    }
}