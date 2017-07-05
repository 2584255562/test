package org.java.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class bbs_article_typeDao extends BaseDao {
	
	public List<Map<String,Object>> findAll(){
		String sql="select bbs_article_type.bbs_article_type_id,BBS_ARTICLE_TYPE_NAME,BBS_ARTICLE_TYPE_AREA,(select count(*) from bbs_topic where bbs_topic_type=1) counts,(select t.bbs_topic_title from (select * from bbs_topic order by bbs_topic_time desc) t where t.bbs_topic_type=bbs_article_type.bbs_article_type_id and rownum=1) title,(select t.bbs_topic_time from (select * from bbs_topic order by bbs_topic_time desc) t where t.bbs_topic_type=bbs_article_type.bbs_article_type_id and rownum=1) times from bbs_article_type";
		try {
			System.out.println(sql);
			con=getConn();
			pst=con.prepareStatement(sql);
			rs=pst.executeQuery();
			List<Map<String, Object>> list=new ArrayList<Map<String,Object>>();
			while(rs.next()){
				Map<String, Object> map=new HashMap<String, Object>();
				map.put("id",rs.getObject(1));
				map.put("name",rs.getObject(2));
				map.put("area",rs.getObject(3));
				map.put("counts",rs.getObject(4));
				map.put("title", rs.getObject(5));
				map.put("times", rs.getObject(6));
				list.add(map);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			close();
		}
		return null;
	}

}
