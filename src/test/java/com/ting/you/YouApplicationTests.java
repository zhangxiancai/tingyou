package com.ting.you;

import com.ting.you.dao.UaCommentMapper;
import com.ting.you.pojo.UaComment;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Date;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class YouApplicationTests {
	@Autowired
	UaCommentMapper uaCommentMapper;

	@Test
	public void contextLoads() {
		List<UaComment> uaComment1s = uaCommentMapper.selectBypreCommentId(6);

		int a = getChildCountByComment(uaComment1s);
		System.out.println(a);
	}
	private  int getChildCountByComment(List<UaComment> uaComment1s){
		int count =0;
		for (UaComment uaComment1 : uaComment1s) {
			List<UaComment> uaComment2s = uaCommentMapper.selectBypreCommentId(uaComment1.getId());
			if (uaComment2s.size() == 0) {
				count=count+1;
			} else {
				count = count+1+getChildCountByComment(uaComment2s);
			}
		}
		return count;
	}
}
