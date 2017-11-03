unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.Menus,
  System.ImageList, Vcl.ImgList, IvDictio, IvMulti, IvEMulti,
  Vcl.StdActns, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    ilButtonsNew: TImageList;
    ToolBar: TToolbar;
    tbNew: TToolButton;
    tbOpen: TToolButton;
    tbSave: TToolButton;
    ToolButton2: TToolButton;
    ToolButton1: TToolButton;
    procedure FormShow(Sender: TObject);
    procedure tbNewClick(Sender: TObject);
    procedure tbOpenClick(Sender: TObject);
    procedure tbSaveClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormActivate(Sender: TObject);
begin
  tbNew.Enabled := True;
  tbOpen.Enabled := True;
  tbSave.Enabled := True;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  self.ChangeScale(110,100);
  tbNew.Enabled := False;
  tbOpen.Enabled := False;
  tbSave.Enabled := False;
end;

procedure TForm1.tbNewClick(Sender: TObject);
begin
  showmessage('button 1');
end;

procedure TForm1.tbOpenClick(Sender: TObject);
begin
  showmessage('button 2');
end;

procedure TForm1.tbSaveClick(Sender: TObject);
begin
  showmessage('button 3');
end;

end.
