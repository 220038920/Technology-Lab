using System;
using System.Windows.Forms;

namespace Yokogawa.Tm.WT500CommSample.cs
{
	/// <summary>
	/// WT500 Communication Sample Program, WT500Demo Class(Entrance)
	/// </summary>
	public class WT500Demo
	{
		public static void Main()
    {
      //show CommDialog to creat an connection.
      CommDialog commDlg = new CommDialog();
      DialogResult response = DialogResult.Retry;
      while (response == DialogResult.Retry)
      {
        //after clicking "cancel" in connection failed MsgBox,
        //the commDlg will be closed, need resume.
        response = commDlg.ShowDialog();
      }
      if (response == DialogResult.Cancel)
      {
        return;
      }
      //if connect successfully, show MainDialog.
      MainDialog mainDlg = new MainDialog();
      mainDlg.ShowDialog();
	}
	}
}
