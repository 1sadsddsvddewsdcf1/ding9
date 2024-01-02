// JavaScript Document

// 第一部份
							function DisplayProductBrand(id,idx){
								if (id==1){
									document.all.cmdProductBrand.item(0).style.display="none";
									document.all.cmdProductBrand.item(1).style.display="";
									for (var i=11;i<=idx;i++)
										document.all.ProductBrand.item(i).style.display="";
								}else{
									document.all.cmdProductBrand.item(0).style.display="";
									document.all.cmdProductBrand.item(1).style.display="none";
									for (var i=12;i<=idx;i++)
										document.all.ProductBrand.item(i).style.display="none";

								}
							}
							
							
							
							
// 第二部份							
							
							function DisplayProductBrand1(id,idx){
								if (id==1){
									document.all.cmdProductBrand1.item(0).style.display="none";
									document.all.cmdProductBrand1.item(1).style.display="";
									for (var i=11;i<=idx;i++)
										document.all.ProductBrand1.item(i).style.display="";
								}else{
									document.all.cmdProductBrand1.item(0).style.display="";
									document.all.cmdProductBrand1.item(1).style.display="none";
									for (var i=12;i<=idx;i++)
										document.all.ProductBrand1.item(i).style.display="none";

								}
							}


