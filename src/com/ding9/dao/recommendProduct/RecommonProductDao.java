package com.ding9.dao.recommendProduct;

import java.util.List;

public abstract interface RecommonProductDao
{
  public abstract List query(int paramInt1, int paramInt2);
  
  public abstract List query2();
  
  public abstract List query3(int paramInt1, int paramInt2);
}
