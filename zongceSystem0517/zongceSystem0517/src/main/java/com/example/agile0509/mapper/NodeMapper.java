package com.example.agile0509.mapper;

import com.example.agile0509.pojo.Node;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface NodeMapper {

    @Select("SELECT n.id, n.type, n.icon, n.index, n.title, n.permiss, n.parent_id,n.component FROM nodes n INNER JOIN role_nodes rn ON n.id = rn.node_id WHERE rn.role_id = #{roleId}")
    List<Node> findNodesByRoleId(int roleId);

}
