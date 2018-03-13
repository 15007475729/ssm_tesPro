package com.lad.controller;

import com.lad.base.BaseController;
import com.lad.dao.StudentMapper;
import com.lad.entity.Fuzzy;
import com.lad.entity.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("student")
public class StudentController extends BaseController<Student> {
    @Autowired
    StudentMapper studentMapper;

    @RequestMapping("queryAll")
    public void queryAll(HttpServletResponse response, Fuzzy fuzzy) throws IOException {
        fuzzy.setPage((fuzzy.getPage() - 1) * fuzzy.getPage());
        List<Student> students = studentMapper.queryAll(fuzzy);
        write(response, students);
    }

    @RequestMapping("addStudent")
    public String addStudent(HttpServletResponse response, Student student) throws IOException {
        int maxGid = studentMapper.getMaxGid(student.getCid());
        student.setGid(maxGid + 1 + "");
        int x = studentMapper.insertSelective(student);
        if (x == 1) {
            write(response, "添加成功");
        }
        return "add";
    }

    @RequestMapping("delStudent")
    public void delStudent(HttpServletResponse response,int id) throws IOException {
        int x = studentMapper.deleteByPrimaryKey(id);
        System.out.println("x="+x);
        if (x == 1) {
            write(response, "添加成功");
        }
    }

    @RequestMapping("updateStudent")
    public void updateStudent(HttpServletResponse response,Student student) throws IOException {
        int i = studentMapper.updateByPrimaryKeySelective(student);
        if(i>0){
            write(response,"修改成功");
        }
    }

    @RequestMapping("queryOne")
    public void queryOne(HttpServletResponse response , int id) throws IOException {
        Student student = studentMapper.selectByPrimaryKey(id);
        if(student!=null){
            write(response,student);
        }
    }

    @RequestMapping("getCount")
    public void getCount(HttpServletResponse response) throws IOException {
        int count = studentMapper.getCount();
        write(response,count);
    }


}
