package com.web.board.model.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder

public class BoardComment {

	private int boardCommentNo;
	private int level;
	private String boardCommentWriter;
	private String boardCommentContent;
	private Date boardCommentDate;
	private int boardcommentRef;
	private int boardRef;
}
