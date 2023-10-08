# 💡 Análisis de datos de una compañía celular

| **Objetivo**      | ¿Qué tipos de ideas necesitas?                                   |
| ----------------- | ---------------------------------------------------------------- |
| **Participantes** | @mencionar a ti y a otros usuarios                               |
| **Relacionado**   | - Para vincular un documento de Paper, escribe el signo más (+). |

## Inspiración

Agrega imágenes, videos y más con la barra de herramientas que se muestra al presionar "Intro".


## Código Abrir archivo 
    * Encoding: UTF-8.
    
    GET 
      FILE='P:\A Lineal\diplo\cellular.sav'. 
    DATASET NAME DataSet1 WINDOW=FRONT. 
    DATASET ACTIVATE DataSet1.
## Código Clasificación 
    DATASET ACTIVATE DataSet1.
    RECODE puntuacion (Lowest thru 30=1) (30.01 thru 40.09=2) (40.1 thru 55.9=3)   (56 thru 71=4) (71.01 thru Highest=5) INTO abandonoo2.

