   M S B A M L   `   `   `  ����J  FMiniMartManager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:MiniMartManager.ViewsMiniMartManager.Views  5      0    *MiniMartManager.Views.UserOrderHistoryView   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      5local#clr-namespace:MiniMartManager.Views     5      _ [MaterialDesignThemes.Wpf, Version=5.2.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      .��5
      � ���#F0F2F5  � RowDefinitions  5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��0��6   
����������#E0E0E0$��0 0 0 1q�6G    �� Padding$ 20q�6a   ._�5      �  � ColumnDefinitions 5      �� 5      $
��Auto �6'   �� 5      $��* �6'   .+�5      �� $
��Back��6      MaterialDesignRaisedButton#��[  6H   $��Center=�6|   $��0 0 20 0q�6�   ��6(   �� *BackCommand+6�   �� 5      $��1��6   $��Order History��6,    $  MaterialDesignHeadline4TextBlock#��[ 6A   $��Center=�6{   5      5      �� 5   
   $��1��6   $
��Auto=�6$   .��5      #  MaterialDesignThemes.Wpf.Card     UniformCornerRadius$ 8Q�6"   $��20q�6:   $��20q�6F    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5          ShadowDepth$ 3Q�6'      	Direction$	 270Q�67      Color$ Black��6G      Opacity$	 0.2Q�6U   	   
BlurRadius$	 5Q�6c   .��5"      �� .+�5#      &   System.Windows.Controls.DataGrid  
   AutoGenerateColumns$
 False��5%         
IsReadOnly$
 True��5&      $��0 0 0 10q�5'        MaterialDesignDataGrid#��[ 5(      -  'MaterialDesignThemes.Wpf.DataGridAssist   CellPadding$ 4 2 2 2q�5)         ColumnHeaderPadding$ 4 2 2 2q�5*      ��5#      �� *
UserOrders+ �� SelectedItem 5$      �� *SelectedOrder+   Columns 5+      0  *System.Windows.Controls.DataGridTextColumn  5,      ,  &System.Windows.Controls.DataGridColumn   Header$ Order ID��61      Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 6Z   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6C   �� *Id+6Z     5-      $ 
Order Date��61   $
 Auto 6�    6E   �� *	OrderDate+ �� StringFormat$ {0:dd/MM/yyyy HH:mm}��6�     5.      $ Total Amount��61   $
 Auto 6    6G   �� *TotalAmount+$ {0:C}��6     5/      $ Status��61   $
 Auto 6\    6A   �� *Status+6\   4	  .System.Windows.Controls.DataGridTemplateColumn	  50      $ Details��65   $ * 6F    	  CellTemplate 51   "   �� 52   &   .R�53   *   9� $��View Details��63     MaterialDesignExpander#��[ 6I   .��54   .     $
 False��6\   $
 True��6x   #��[ 55   7   $ 4 2 2 2q�56   7   $ 4 2 2 2q�57   7   ��54   7   �� *OrderDetails+ 58   2     59   6   $ Product��6I   $ * 6{    6Z   �� *Product.Name+6{     5:   6   $ Quantity��6I   $
 Auto 6x    6[   �� *
Quantity+6x     5;   6   $ Price��6I   $
 Auto 6�    6X   �� *Price+$ {0:C}��6�   5=   /   5>   +   5?   '   5A      5C      5D      5E      5F      5G      5H      