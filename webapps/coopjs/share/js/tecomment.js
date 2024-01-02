//切换



function  tesecBoard1(n)
{
for(i=0;i<tesecTable1.cells.length;i++)
tesecTable1.cells[i].className="tesel04";
tesecTable1.cells[n].className="tesel03";
for(i=0;i<temainTable1.tBodies.length;i++)
temainTable1.tBodies[i].style.display="none";
temainTable1.tBodies[n].style.display="block";
}


