void setup() 
{  
  size(1000,1000);
}
class AnimacaoOlhos
{
    float x1, x2, y,
          beginX1,beginX2, beginY, endX1, endX2, endY,    
          xSobram, ySobram,
          distX, distY, step,
          pct,pctS, begX1Atual, begX2Atual, begYAtual,
          beginXSombran, beginYSombran,
          endXSombran, endYSombran,
          distXSombran, distYSombran, 
                   
          x1Ant=-1,x2Ant=-1, yAnt=-1, x1Att=0,x2Att, yAtt=0, cont=1;
                   
    int g , h;
    PVector  yAnco, yCor1Sobr, yCor2Sobr;
    boolean direcao, ok;
     
    AnimacaoOlhos(float xSob, float ySob)
    {
        x1 =  262; 
        x2 =  x1+400;  
        y =   398;
        
        beginX1 = x1; 
        beginX2 = x2 ;
        beginY = y; 
        
        begX1Atual=beginX1; 
        begX2Atual=beginX2; 
        begYAtual = beginY;
       
        endX1 =  313; 
        endX2 =  endX1 + 400;
        endY =  415; 
       
        xSobram=xSob;
        ySobram=ySob;
        distX = 0;        
        distY = 0;
        step = 0.01;   
        direcao=true;
        ok=false;
        
        g=0;
        h=0;       
    }
    
    void setAnimacao()
    {             
          distX = endX1 - beginX1;        
          distY = endY - beginY;
          
          PVector coord1,coord2;    
                 
          celha();   
          contornoOlho();   
          coord1 = calculateMovementLeftEye();
          coord2 = calculateMovementRightEye(); 
          irisOlho(coord1.x, coord2.x);
          pupila(coord1.x,coord2.x, coord1.y);        
          alteredCourseLeft(); 
          alteredCourseRight();              
          piscarOlho();               
    }
    void contornoOlho()
    {
       fill(255); 
       stroke(255,228,196);
       ellipseMode(CENTER);
       
       float value=100;
       if(x1>270)
       {
           float init=100;
           float fin= 70;
           value=lerp(init, fin, g / 80.0);
           if(begX1Atual<300)ok=true;
       }
                
       ellipse(width/2-200,height/2-100,190,value);    
       ellipse(width/2+200,height/2-100,190,value);  
       if(direcao)h++;  
         else h--;
    }
    void irisOlho(float xLeft, float xRight)
    {
        float x11 ,  x22;
       
        x11 = constrain (xLeft, 267, 335); 
        x22 = constrain (xRight, 267+400, 335+400);
        
        fill(xLeft,0,xRight);
        strokeWeight(6);
        stroke(0);
        ellipseMode(CENTER);
        ellipse(x11,400,70,70);
        ellipse(x22,400,70,70);               
    }
     void pupila(float xLeft, float xRight, float yy)
    {
          x1 = constrain (xLeft, 253, 346);   
          x2 = constrain (xRight, 253+400, 346+400);
          y = constrain (yy, 378, 420);
          
          fill(0);
          stroke(0);
          
          ellipseMode(CENTER);
          ellipse(x1,y,20,20);   
          ellipse(x2,y,20,20);   
    }  
    PVector calculateMovementLeftEye()
    {    
         PVector saida;
         saida=new PVector(x1,y); 
         pct += step;
         if (pct < 1.0) 
         {          
            x1 = beginX1 + (pct * distX);
            y =  beginY + (pow(pct, 4) * distY);   
            saida=new PVector(x1,y);
         }      
         return saida;     
    }
    PVector calculateMovementRightEye()
    {    
         PVector saida;
         saida=new PVector(x2,y); 
         pct += step;
         if (pct < 1.0) 
         {          
            x2 = beginX2 + (pct * distX);
            y =  beginY + (pow(pct, 4) * distY);   
            saida=new PVector(x2,y);
         }      
         return saida;     
    }
    
    void alteredCourseLeft() 
    {
      if(cont>1)
      {
        x1Ant=x1Att;
        yAnt=yAtt; 
        x1Att=x1;
        yAtt=y;
      }else 
      {
          x1Att=x1;
          yAtt=y;
      }
      cont = cont+1;
      if(cont>100)cont=2;
      if(x1Att == x1Ant && yAtt == yAnt)
      {
            pct = 0.0;
                  
            if(begX1Atual < 300)
            {             
               beginX1 =  begX1Atual = x1;
               beginY = begYAtual  = y;
               endX1 = 262;             
               endY = 398;
               direcao=false;
               ok=false;
        
            }else 
            {
               beginX1 =  begX1Atual = x1;
               beginY = begYAtual  = y;
               endX1 = 313;          
               endY = 415;
               direcao=true;             
            }  
            frameRate(0.5);
      }
    }
      void alteredCourseRight() 
      {     
        if(cont>1)
        {
          x2Ant=x2Att;
          yAnt=yAtt; 
          x2Att=x2;
          yAtt=y;
        }else 
        {
            x2Att=x2;
            yAtt=y;
        }
        cont = cont+1;
        if(cont>100)cont=2;
        if(x2Att == x2Ant && yAtt == yAnt)
        {
              pct = 0.0;                        
              if((begX2Atual <700))
              {                
                 beginX2=  begX2Atual = x2;
                 beginY = begYAtual  = y;         
                 endX2 = 262+400;
                 endY = 398;
          
              }else 
              {
                 beginX2 =  begX2Atual = x2;
                 beginY = begYAtual  = y;              
                 endX2 = 313+400;
                 endY = 415;
              }  
              frameRate(0.5);
        }
    }

    void piscarOlho()
    { 
      float valorRandonX=random(267, 335);    
      float valorRandonY=random(378, 420);
      if(abs(x1-valorRandonX) <=2 && abs(y-valorRandonY) <=2)
      {    
        frameRate(8);
        fill(250,235,215);
        noStroke();
        rectMode(CENTER);
        rect(width/2-200,375,200,45);
        rect(width/2+200,375,200,45);
        fill(250,235,215);
        noStroke();
        rectMode(CENTER);
        rect(width/2-200,430,200,45);
        rect(width/2+200,430,200,45);
      }
    } 
    
    void celha()
    {     
      noStroke();
      fill(0);
      frameRate(50);
      animacaoSobrancelha();       
      bezier(590, yAnco.x, 654, yCor1Sobr.x, 725,yCor2Sobr.x, 810,356);
      bezier(590, yAnco.y, 654, yCor1Sobr.y, 725,yCor2Sobr.y, 810,356); 
      
      bezier(420, yAnco.x, 353, yCor1Sobr.x, 270,yCor2Sobr.x, 178,356);
      bezier(420, yAnco.y, 353, yCor1Sobr.y, 270,yCor2Sobr.y, 178,356);           
    }
  
    void animacaoSobrancelha()
    {       
         PVector yIn = new PVector(328, 315);      
         PVector yFn = new PVector(290, 282);
         PVector yC1In = new PVector(295,282);
         PVector yC1Fn = new PVector(263,257);
         PVector yC2In = new PVector(325, 323);
         PVector yC2Fn = new PVector(299, 290);
         
                                     
         if(g>100)g=0;      
         yAnco = new PVector(lerp(yIn.x, yFn.x, g / 80.0),lerp(yIn.y, yFn.y, g / 80.0));
         yCor1Sobr= new PVector(lerp(yC1In.x, yC1Fn.x, g / 80.0),lerp(yC1In.y, yC1Fn.y, g / 80.0));
         yCor2Sobr= new PVector(lerp(yC2In.x, yC2Fn.x, g / 80.0),lerp(yC2In.y, yC2Fn.y, g / 80.0));                     
         if(direcao)g++;  
         else g--;
    }
};

class Boca
{
    PVector  xAnco1, yAnco1, yCord1, yCord2,  xAnco2, yAnco2;
    int interp;
  
    Boca()
    {
        interp=0;  
    }
      
    void animacaoBoca()
    {
        PVector xx1 = new PVector(444,444);
        PVector yy1 = new PVector(683,683);
        PVector xx2 = new PVector(459,455);
        PVector yy2 = new PVector(663,693);
        PVector xx3 = new PVector(522,518);
        PVector yy3 = new PVector(664,694);
        PVector xx4 = new PVector(533,533);
        PVector yy4 = new PVector(684,684);
        
        PVector xx1FN = new PVector(416,416);
        PVector yy1FN = new PVector(683,683);
        PVector xx2FN = new PVector(451,424);
        PVector yy2FN = new PVector(673,669);
        PVector xx3FN = new PVector(570,578);
        PVector yy3FN = new PVector(644,672);
        PVector xx4FN = new PVector(578,578);
        PVector yy4FN = new PVector(686,686);
        
        stroke(255,182,193);
        fill(255);
        bezier(lerp(xx1.x, xx1FN.x, interp / 80.0),lerp(yy1.x, yy1FN.x, interp / 80.0), lerp(xx2.x, xx2FN.x, interp / 80.0), lerp(yy2.x, yy2FN.x, interp / 80.0), lerp(xx3.x, xx3FN.x, interp / 80.0), lerp(yy3.x,yy3FN.x, interp / 80.0), lerp(xx4.x, xx4FN.x, interp / 80.0), lerp(yy4.x, yy4FN.x, interp / 80.0));
        bezier(lerp(xx1.y,xx1FN.y, interp / 80.0),lerp(yy1.y,  yy1FN.y, interp / 80.0), lerp(xx2.y, xx2FN.y, interp / 80.0), lerp(yy2.y, yy2FN.y, interp / 80.0), lerp(xx3.y, xx3FN.y, interp / 80.0), lerp(yy3.y,yy3FN.y, interp / 80.0), lerp(xx4.y, xx4FN.y, interp / 80.0), lerp(yy4.y, yy4FN.y, interp / 80.0));
        fill(250,235,215);
        stroke(255,192,203);
        bezier(448, 722, 460, 732, 528,732, 536, 722);  
    }
};

class Rosto
{
    AnimacaoOlhos olhos;
    Boca boca;
    float interp;
     
    Rosto()
    {
       olhos = new AnimacaoOlhos(295,330);
       boca = new Boca();
       interp = 10;
    }
    
    void setAnimation()
    {  
        face();
        nariz();
        olhos.setAnimacao();
        corado();
        if(olhos.direcao)boca.interp++;
        else boca.interp--;
        boca.animacaoBoca();
    }       
    void face()
    {
      fill(250,235,215);
      noStroke();
      ellipse(width/2, height/2-50, 700, 700);    
    }
    void nariz()
    {
       fill(255,228,196);
       bezier(432.6,520, 346.37117, 604.57186, 654.03279, 610.09871, 572.6, 520);
       bezier(432.6,520, 437.98943, 495.87704, 555.89568, 492.19247, 572.6, 520);
       stroke(255,222,173);
       bezier(432.6,520, 346.37117, 604.57186, 654.03279, 610.09871, 572.6, 520);          
    }
    
    void corado()
    {
       if(olhos.ok)
       {    
          interp+=1.1;
          fill(255,182,193, interp);
          noStroke();
          bezier(227,501, 225, 478, 374, 481, 370, 501);
          bezier(227,501, 225, 524, 370, 519, 370, 501);
                             
          bezier(227+400,501, 225+400, 478, 374+400, 481, 370+400, 501);
          bezier(227+400,501, 225+400, 524, 370+400, 519, 370+400, 501);
                    
       }else if(olhos.x1>=270)
       {   
          interp-=1; 
          fill(255,182,193, interp);
          noStroke();
          bezier(227,501, 225, 478, 374, 481, 370, 501);
          bezier(227,501, 225, 524, 370, 519, 370, 501);
                   
          bezier(227+400,501, 225+400, 478, 374+400, 481, 370+400, 501);
          bezier(227+400,501, 225+400, 524, 370+400, 519, 370+400, 501);
       }     
    }    
};

Rosto obj= new Rosto();
void draw() 
{  
  background(0,206,209);
  frameRate(170); 
  obj.setAnimation();
} 
