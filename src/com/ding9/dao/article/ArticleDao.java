package com.ding9.dao.article;

import java.util.List;

public abstract interface ArticleDao
{
  public abstract List query(int paramInt1, int paramInt2);
  public abstract List queryLast(int paramInt2);
}
