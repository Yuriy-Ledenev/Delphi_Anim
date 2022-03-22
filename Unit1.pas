unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
   i:integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Timer1.Enabled:=true;
Button1.Visible:=false;
Label1.Visible:=true;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
i:=i+1;
case i of               //—амый просто вариант растровой анимации с изменением
1: begin                //спрайта, 3 компонента Image измен€ют свойство
Image3.Visible:=true;   //видимости (Visible) по таймеру.
Image2.Visible:=false;  //“ики таймера измен€ют фазу анимации (видимый Image),
Image1.Visible:=false;  //‘аза фиксируетс€ с помощью Case of дл€ удобства, но
end;                    //можно и нагородить несколько if else и без сброса
2: begin                //счЄтчика i, если очень хочетс€, нужно только провер€ть
Image3.Visible:=false;  // i на делимость различным значени€м (1,2,3,4) с
Image2.Visible:=true;   //помощью (n mod {число}=0)
Image1.Visible:=false;
end;
3: begin
Image3.Visible:=false;
Image2.Visible:=false;
Image1.Visible:=true;
end;
4: begin
Image3.Visible:=false;
Image2.Visible:=true;
Image1.Visible:=false;
i:=0;
end;
end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
i:=0;
end;

end.
