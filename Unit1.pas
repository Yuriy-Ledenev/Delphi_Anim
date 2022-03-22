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
case i of               //����� ������ ������� ��������� �������� � ����������
1: begin                //�������, 3 ���������� Image �������� ��������
Image3.Visible:=true;   //��������� (Visible) �� �������.
Image2.Visible:=false;  //���� ������� �������� ���� �������� (������� Image),
Image1.Visible:=false;  //���� ����������� � ������� Case of ��� ��������, ��
end;                    //����� � ���������� ��������� if else � ��� ������
2: begin                //�������� i, ���� ����� �������, ����� ������ ���������
Image3.Visible:=false;  // i �� ��������� ��������� ��������� (1,2,3,4) �
Image2.Visible:=true;   //������� (n mod {�����}=0)
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
