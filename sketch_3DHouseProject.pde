void setup()
{
  size(800,800, P3D);
  background(255);  
}

class house
{
  float grau=0, e=1, a=1,b=1,c=1,ci=0,s=0;
  int transformation=0;
  house()
  {   
  }
  
  float getGrau(){return grau;}
  void incGrau(){grau+=0.5;}
  void decGrau(){grau-=0.5;}
  
  float getE(){return e;}
  void incE(){e+=0.2;}
  void decE(){e-=0.2;}
 
  void teto()
  {
      fill(139,69,19);
      PVector pair1=newCordenad(-100.0,-100.0,0);
      PVector pair2=newCordenad(40.0,-180.0,0);
      PVector pair3=newCordenad(174.0,-100.0,0);
     
      beginShape();
      vertex(pair1.x, pair1.y, pair1.z);
      vertex(pair2.x, pair2.y, pair2.z);
      vertex(pair3.x, pair3.y, pair3.z);
      endShape(CLOSE);
       
      pair1=newCordenad(-100.0, -100.0,-140.0);
      pair2=newCordenad(40,-180,-140);
      pair3=newCordenad(174, -100,-140);
      
    
      beginShape();
      vertex(pair1.x, pair1.y, pair1.z);
      vertex(pair2.x, pair2.y, pair2.z);
      vertex(pair3.x, pair3.y, pair3.z);
      endShape(CLOSE);
       
      pair1=newCordenad(40, -180,0);
      pair2=newCordenad(40, -180,-140);
      pair3=newCordenad(174, -100,-140);
      PVector pair4=newCordenad(174, -100,0);
      
      beginShape();
      vertex(pair1.x, pair1.y, pair1.z);
      vertex(pair2.x, pair2.y, pair2.z);
      vertex(pair3.x, pair3.y, pair3.z);
      vertex(pair4.x, pair4.y, pair4.z);
      endShape(CLOSE);
       
      pair1=newCordenad(40, -180,-140);
      pair2=newCordenad(40, -180,0);
      pair3=newCordenad(-100, -100,0);
      pair4=newCordenad(-100, -100,-140);   
      
      beginShape();
      vertex(pair1.x, pair1.y, pair1.z);
      vertex(pair2.x, pair2.y, pair2.z);
      vertex(pair3.x, pair3.y, pair3.z);
      vertex(pair4.x, pair4.y, pair4.z);
      endShape(CLOSE);
  }
  
  void estrutura()
  {  
      fill(255,99,71);
      PVector pair1=newCordenad(-100, -100,0);
      PVector pair2=newCordenad(174, -100, 0);
      PVector pair3=newCordenad(174,  100, 0);
      PVector pair4=newCordenad(-100,  100, 0);
      beginShape();
      vertex(pair1.x, pair1.y, pair1.z);
      vertex(pair2.x, pair2.y, pair2.z);
      vertex(pair3.x, pair3.y, pair3.z);
      vertex(pair4.x, pair4.y, pair4.z);
      endShape(CLOSE);
      
      pair1=newCordenad(-100, -100, -140);
      pair2=newCordenad(174, -100, -140);
      pair3=newCordenad(174,  100, -140);
      pair4=newCordenad(-100,  100, -140);
      beginShape();
      vertex(pair1.x, pair1.y, pair1.z);
      vertex(pair2.x, pair2.y, pair2.z);
      vertex(pair3.x, pair3.y, pair3.z);
      vertex(pair4.x, pair4.y, pair4.z);
      endShape(CLOSE);
      
      pair1=newCordenad(-100, -100, 0);
      pair2=newCordenad(-100, -100, -140);
      pair3=newCordenad(174, -100, -140);
      pair4=newCordenad( 174, -100, 0);
      beginShape();
      vertex(pair1.x, pair1.y, pair1.z);
      vertex(pair2.x, pair2.y, pair2.z);
      vertex(pair3.x, pair3.y, pair3.z);
      vertex(pair4.x, pair4.y, pair4.z);
      endShape(CLOSE);
      
      pair1=newCordenad(-100,  100, 0);
      pair2=newCordenad(-100, 100, -140);
      pair3=newCordenad(174, 100, -140);
      pair4=newCordenad( 174,  100, 0);
      beginShape();
      vertex(pair1.x, pair1.y, pair1.z);
      vertex(pair2.x, pair2.y, pair2.z);
      vertex(pair3.x, pair3.y, pair3.z);
      vertex(pair4.x, pair4.y, pair4.z);
      endShape(CLOSE);
      
      pair1=newCordenad(174,  -100, 0);
      pair2=newCordenad(174,  -100, -140);
      pair3=newCordenad(174, 100, -140);
      pair4=newCordenad( 174,  100, 0);
      beginShape();
      vertex(pair1.x, pair1.y, pair1.z);
      vertex(pair2.x, pair2.y, pair2.z);
      vertex(pair3.x, pair3.y, pair3.z);
      vertex(pair4.x, pair4.y, pair4.z);
      endShape(CLOSE);
      
      pair1=newCordenad(-100,  -100, -140);
      pair2=newCordenad(-100,  -100, 0);
      pair3=newCordenad(-100, 100, 0);
      pair4=newCordenad(-100,  100, -140);
      beginShape();
      vertex(pair1.x, pair1.y, pair1.z);
      vertex(pair2.x, pair2.y, pair2.z);
      vertex(pair3.x, pair3.y, pair3.z);
      vertex(pair4.x, pair4.y, pair4.z);
      endShape(CLOSE);
  }
  
  void janela()
  {  
      fill(220,220,220);
      PVector pair1=newCordenad(80, -40,0);
      PVector pair2=newCordenad(130, -40, 0);
      PVector pair3=newCordenad(130,  -10, 0);
      PVector pair4=newCordenad(80,  -10, 0);
      beginShape();
      vertex(pair1.x, pair1.y, pair1.z);
      vertex(pair2.x, pair2.y, pair2.z);
      vertex(pair3.x, pair3.y, pair3.z);
      vertex(pair4.x, pair4.y, pair4.z);
      endShape(CLOSE);
  }
  
  void porta()
  {
      fill(128,128,128);
      PVector pair1=newCordenad(0, 10,0);
      PVector pair2=newCordenad(60, 10, 0);
      PVector pair3=newCordenad(60,  100, 0);
      PVector pair4=newCordenad(0,  100, 0);
      beginShape();
      vertex(pair1.x, pair1.y, pair1.z);
      vertex(pair2.x, pair2.y, pair2.z);
      vertex(pair3.x, pair3.y, pair3.z);
      vertex(pair4.x, pair4.y, pair4.z);
      endShape(CLOSE);
  }
  
  
}
house k=new house();
void draw()
{
      translate(width/2, height/2);
      background(0);
      stroke(0);
      frameRate(30);
      k.teto();
      k.estrutura();
      k.janela();
      k.porta();
}

PVector newCordenad(float x, float y, float z)
{
     if(k.transformation==1)
       return rotation(x,y,z,' ');
     else if(k.transformation==2)
       return escala(x,y,z,' ');
     else if(k.transformation==3)
       return reflexao(x,y,z,' ');
     else if(k.transformation==4)
       return cisalhamento(x,y,z,' ');
       
     PVector saida=new PVector(x,y,z);
     return saida;
}
PVector rotation(float x, float y, float z, char last)
{
     PVector kk;
     if(last!='e')
     {
         kk=escala(x,y,z,'r');
         x=kk.x;
         y=kk.y;
         z=kk.z;
     }else if(last!='f')
     {
         kk=reflexao(x,y,z,'r');
         x=kk.x;
         y=kk.y;
         z=kk.z;
     }else if(last!='s')
     {
         kk=rotation(x,y,z,'r');
         x=kk.x;
         y=kk.y;
         z=kk.z;
     }
     
     float matrix[][];
     matrix=new float[4][4];
     
     for(int i=0;i<4;i++)
     {
         for(int j=0;j<4;j++)
         {
             if(i==j)matrix[i][j]=1;
             else matrix[i][j]=0;
         }
     }
     
     matrix[0][0]=cos(k.getGrau());
     matrix[2][0]=-sin(k.getGrau());
     matrix[0][2]=sin(k.getGrau());
     matrix[2][2]=cos(k.getGrau());
     
     
     float vet[][],vetaux[][];
     vet=new float[4][1];
     vetaux=new float[4][1];
     vet[0][0]=x;
     vet[1][0]=y;
     vet[2][0]=z;
     vet[3][0]=1;
     
     int aux=0;
     for(int i = 0; i < 4; i++) 
     {
          for(int j = 0; j < 1; j++) 
          {    
              vetaux[i][j] = 0;
              for(int h = 0; h < 4; h++) 
              {
                aux +=  matrix[i][h] * vet[h][j];
              }
              vetaux[i][j] = aux;
              aux = 0;
          }
     } 
     float a=vetaux[0][0],b=vetaux[1][0],c=vetaux[2][0]; 
     PVector saida;
     saida=new PVector(a,b,c);
     
     return saida;
}

PVector escala(float x, float y, float z, char last)
{
     PVector kk;
     if(last!='r')
     {
         kk=rotation(x,y,z,'e');
         x=kk.x;
         y=kk.y;
         z=kk.z;
     }
     
     float matrix[][];
     matrix=new float[4][4];
     
     for(int i=0;i<4;i++)
     {
         for(int j=0;j<4;j++)
         {
           if(i==j)matrix[i][j]=1;
           else matrix[i][j]=0;
         }
     }
     
     matrix[0][0]=k.e;
     matrix[1][1]=k.e;
     matrix[2][2]=k.e;
     
     
     float vet[][],vetaux[][];
     vet=new float[4][1];
     vetaux=new float[4][1];
     vet[0][0]=x;
     vet[1][0]=y;
     vet[2][0]=z;
     vet[3][0]=1;
     
     int aux=0;
     for(int i = 0; i < 4; i++) 
     {
          for(int j = 0; j < 1; j++) 
          {    
                vetaux[i][j] = 0;
                for(int h = 0; h < 4; h++) 
                {
                  aux +=  matrix[i][h] * vet[h][j];
                }
                vetaux[i][j] = aux;
                aux = 0;
          }
     } 
     float a=vetaux[0][0],b=vetaux[1][0],c=vetaux[2][0];
     PVector saida;
     saida=new PVector(a,b,c);
     
     return saida;
}

PVector reflexao(float x, float y, float z, char last)
{
     PVector kk;
     if(last!='r')
     {
         kk=rotation(x,y,z,'f');
         x=kk.x;
         y=kk.y;
         z=kk.z;
     }
     
     float matrix[][];
     matrix=new float[4][4];
     
     for(int i=0;i<4;i++)
     {
         for(int j=0;j<4;j++)
         {
             if(i==j)matrix[i][j]=1;
             else matrix[i][j]=0;
         }
     }
     matrix[0][0]=k.a;
     matrix[1][1]=k.b;
     matrix[2][2]=k.c;
     
     float vet[][],vetaux[][];
     vet=new float[4][1];
     vetaux=new float[4][1];
     vet[0][0]=x;
     vet[1][0]=y;
     vet[2][0]=z;
     vet[3][0]=1;
     
     int aux=0;
     for(int i = 0; i < 4; i++) 
     {
          for(int j = 0; j < 1; j++) 
          {    
              vetaux[i][j] = 0;
              for(int h = 0; h < 4; h++) 
              {
                aux +=  matrix[i][h] * vet[h][j];
              }
              vetaux[i][j] = aux;
              aux = 0;
          }
     } 
     float a=vetaux[0][0],b=vetaux[1][0],c=vetaux[2][0];
     PVector saida;
     saida=new PVector(a,b,c);
     
     return saida;
}

PVector cisalhamento(float x, float y, float z, char last)
{
     PVector kk;
     if(last!='r')
     {
         kk=rotation(x,y,z,'s');
         x=kk.x;
         y=kk.y;
         z=kk.z;
     }
     
     float matrix[][];
     matrix=new float[4][4];
     
     for(int i=0;i<4;i++)
     {
         for(int j=0;j<4;j++)
         {
             if(i==j)matrix[i][j]=1;
             else matrix[i][j]=0;
         }
     }
     matrix[0][1]=k.s;
     
     float vet[][], vetaux[][];
     vet=new float[4][1];
     vetaux=new float[4][1];
     vet[0][0]=x;
     vet[1][0]=y;
     vet[2][0]=z;
     vet[3][0]=1;
     
     int aux=0;
     for(int i = 0; i < 4; i++) 
     {
          for(int j = 0; j < 1; j++) 
          {    
              vetaux[i][j] = 0;
              for(int h = 0; h < 4; h++) 
              {
                aux +=  matrix[i][h] * vet[h][j];
              }
              vetaux[i][j] = aux;
              aux = 0;
          }
     } 
     float a=vetaux[0][0],b=vetaux[1][0],c=vetaux[2][0];
     PVector saida;
     saida=new PVector(a,b,c);
     
     return saida;
}

void mousePressed()
{ 
    if(mouseButton==LEFT)
    {
        if(k.transformation==1)k.incGrau();
        else if(k.transformation==2)k.incE();
        else if(k.transformation==3)
        {
            if(k.ci==0)
            {
               k.a=1;
               k.b=1;
               k.c=1;
               k.ci++;
            }else if(k.ci==1)
            {
               k.a=-1;
               k.b=1;
               k.c=1;
               k.ci++;
            }else if(k.ci==2)
            {
               k.a=1;
               k.b=-1;
               k.c=1;
               k.ci++;
            }else if(k.ci==3)
            {
               k.a=1;
               k.b=1;
               k.c=-1;
               k.ci=0;
            }    
        }else if(k.transformation==4)
        {
             k.s+=0.2;
        }
    }
    else if(mouseButton==RIGHT) 
    {
        if(k.transformation==1)k.decGrau();
        else if(k.transformation==2){
          if(k.getE()>=0.4)k.decE();}
        else if(k.transformation==3)
        {
            if(k.ci==0)
            {
               k.a=1;
               k.b=1;
               k.c=1;
               k.ci=3;
            }else if(k.ci==1)
            {
               k.a=-1;
               k.b=1;
               k.c=1;
               k.ci--;
            }else if(k.ci==2)
            {
               k.a=1;
               k.b=-1;
               k.c=1;
               k.ci--;
            }else if(k.ci==3)
            {
               k.a=1;
               k.b=1;
               k.c=-1;
               k.ci--;
            }   
       }else if(k.transformation==4)
       {
            k.s-=0.2;
       }
   }  
}
void keyPressed()
{
    if(key=='1')
      k.transformation=1;
    else if(key=='2')
      k.transformation=2;
    else if(key=='3')
      k.transformation=3;
    else if(key=='4')
      k.transformation=4;
}
