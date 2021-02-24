package com.ltk.forum.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

import lombok.EqualsAndHashCode;

@Embeddable
@EqualsAndHashCode
public class PostDetailKey implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Column(name = "status_id")
    Integer statusId;

    @Column(name = "post_id")
    Integer postId;
}
