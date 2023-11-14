* Encoding: UTF-8.
FILTER OFF. 
USE 25 thru 198. 
EXECUTE. 
* Chart Builder. 
GGRAPH 
  /GRAPHDATASET NAME="graphdataset" VARIABLES=length_km MISSING=LISTWISE REPORTMISSING=NO 
  /GRAPHSPEC SOURCE=INLINE. 
BEGIN GPL 
  SOURCE: s=userSource(id("graphdataset")) 
  DATA: length_km=col(source(s), name("length_km")) 
  DATA: id=col(source(s), name("$CASENUM"), unit.category()) 
  COORD: rect(dim(1), transpose()) 
  GUIDE: axis(dim(1), label("length_km")) 
  GUIDE: text.title(label("1-D Boxplot of length_km")) 
  ELEMENT: schema(position(bin.quantile.letter(length_km)), label(id)) 
END GPL.


*Calculo de quartiles.
EXAMINE VARIABLES=length_km 
  /PLOT NONE 
  /STATISTICS NONE 
  /PERCENTILES(25,50,75) HAVERAGE.
