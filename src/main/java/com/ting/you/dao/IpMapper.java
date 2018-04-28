package com.ting.you.dao;


import com.ting.you.pojo.Ip;
import org.apache.ibatis.annotations.*;

import java.util.Date;
import java.util.List;


@Mapper
public interface IpMapper {

    @Select("SELECT * FROM ip WHERE id=#{id}")
    Ip selectById(@Param("id") int id);

    @Select("SELECT * FROM ip ")
    List<Ip> selectAll();

    @Insert("INSERT INTO ip(ip,time) VALUES(#{ip},#{time})")
    Boolean insert(@Param("ip") String ip, @Param("time") Date time);

    @Delete("delete FROM ip WHERE id = #{id}")
    Boolean deletebyId(@Param("id") int id);

}
