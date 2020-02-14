unit U_Calculadora;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Edit;

type
  TForm1 = class(TForm)
    btn_0: TButton;
    btn_1: TButton;
    btn_2: TButton;
    btn_3: TButton;
    btn_4: TButton;
    btn_5: TButton;
    btn_6: TButton;
    btn_7: TButton;
    btn_8: TButton;
    btn_9: TButton;
    btn_dot: TButton;
    btn_equal: TButton;
    btn_times: TButton;
    btn_minus: TButton;
    btn_plus: TButton;
    btn_slash: TButton;
    box_buttons: TLayout;
    boxheader: TLayout;
    txt_number1: TEdit;
    lb_operator: TLabel;
    txt_number2: TEdit;
    procedure btn_minusClick(Sender: TObject);
    procedure btn_plusClick(Sender: TObject);
    procedure btn_timesClick(Sender: TObject);
    procedure btn_slashClick(Sender: TObject);
    procedure btn_equalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btn_equalClick(Sender: TObject);
  var number1, number2: double;

begin
  number1 := strToFloat(txt_number1.Text);
  number2 := strToFloat(txt_number2.Text);

  if(lb_operator.Text = '+') then
  begin
    showMessage(floatToStr(number1 + number2));
  end;

  if(lb_operator.Text = '-') then
  begin
    showMessage(floatToStr(number1 - number2));
  end;

  if(lb_operator.Text = '*') then
  begin
    showMessage(floatToStr(number1 * number2));
  end;


  if(lb_operator.Text = '/') then
  begin
    showMessage(floatToStr(number1 / number2));
  end;
end;

procedure TForm1.btn_minusClick(Sender: TObject);
begin
  lb_operator.Text := '-';

  btn_plus.Enabled := true;
  btn_minus.Enabled := false;
  btn_times.Enabled := true;
  btn_slash.Enabled := true;
end;

procedure TForm1.btn_plusClick(Sender: TObject);
begin
  lb_operator.Text := '+';

  btn_plus.Enabled := false;
  btn_minus.Enabled := true;
  btn_times.Enabled := true;
  btn_slash.Enabled := true;

end;

procedure TForm1.btn_slashClick(Sender: TObject);
begin
  lb_operator.Text := '/';

  btn_plus.Enabled := true;
  btn_minus.Enabled := true;
  btn_times.Enabled := true;
  btn_slash.Enabled := false;
end;

procedure TForm1.btn_timesClick(Sender: TObject);
begin
  lb_operator.Text := '*';

  btn_plus.Enabled := true;
  btn_minus.Enabled := true;
  btn_times.Enabled := false;
  btn_slash.Enabled := true;

end;

end.
