   M S B A M L   `   `   `  ����J  FMiniMartManager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:MiniMartManager.ViewsMiniMartManager.Views  5      2    ,MiniMartManager.Views.CategoryManagementView   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      5local#clr-namespace:MiniMartManager.Views     5      _ [MaterialDesignThemes.Wpf, Version=5.2.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      .��5
      �   � RowDefinitions  5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   � $��0��6   $��20q�6    � ColumnDefinitions 5      �� 5      $
��Auto �6#   �� 5      $��* �6#   �� 5      $
��Auto �6#   .+�5      �� $��0��6   $
��Back��6%       MaterialDesignOutlinedButton#��[  6T   $��Center=�6�   ��64   �� *BackCommand+6�   �� 5      $��1��6   $��Category Management��6(   $��Center=�6C   $��Center=�6`   �� 5      $��2��6    �� Orientation$ 
Horizontal=�6)   $��Right=�6B   .+�5      �� )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ New Category Name��5       ! MaterialDesignOutlinedTextBox#��[ 5      $	��200��5      $��0 0 10 0q�5      ��5      �� *NewCategoryName+ �� UpdateSourceTrigger$ PropertyChanged=�5      �� 5       $��Add Category��6     MaterialDesignRaisedButton#��[ 6W   ��60   �� *AddCategoryCommand+6W   5!      5"      &   System.Windows.Controls.DataGrid  5%   
   $��1��6      AutoGenerateColumns$ False��5'         
IsReadOnly$
 True��5(      $��20q�5)      ��5&      �� *
Categories+   Columns 5*      0  *System.Windows.Controls.DataGridTextColumn  5+      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6%   	   Width5  /System.Windows.Controls.DataGridLengthConverter$
	 Auto 6H   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 61   �� *Id+6H     5,      $
 Name��6%   $	 * 6L   
 63   �� *Name+6L   4  .System.Windows.Controls.DataGridTemplateColumn  5-      $ Actions��6)      CellTemplate 5.      �� 5/      .R�50      �� $ 
Horizontal=�6)   .+�51   "   �� $
��Edit��6)   #��[  6�   $��5q�6�   ��68   �� *!DataContext.EditCategoryCommand+ �� RelativeSource ��  �� AncestorType"  ��6�   �� 6�   �� 52   "   $��Delete��6)   #��[  6�   $��5q�6  ��6:   �� *#!DataContext.DeleteCategoryCommand+ �� "  ��6�   �� 6  53      54      56      58      59      5:      