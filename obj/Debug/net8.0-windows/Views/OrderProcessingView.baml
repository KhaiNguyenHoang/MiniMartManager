   M S B A M L   `   `   `  ����J  FMiniMartManager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:MiniMartManager.ViewsMiniMartManager.Views  5      /    )MiniMartManager.Views.OrderProcessingView   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      5local#clr-namespace:MiniMartManager.Views     5      _ [MaterialDesignThemes.Wpf, Version=5.2.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      .��5
      �   � RowDefinitions  5   
   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   .+�5   
   �� $��Order Processing��6    $   MaterialDesignHeadline4TextBlock#��[  6,   $��10q�6f   &   System.Windows.Controls.DataGrid  5   
   $��1��6      AutoGenerateColumns$ False��5         
IsReadOnly$
 True��5      $��10q�5      ��5      �� *PendingOrders+ �� SelectedItem 5      �� *SelectedOrder+   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Order ID��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 6N   1  +System.Windows.Controls.DataGridBoundColumn   Binding 67   �� *Id+6N     5      $
 User��6%   $
 Auto 6U    63   �� *User.Username+6U     5      $ 
Order Date��6%   $
 Auto 6~    69   �� *	OrderDate+ �� StringFormat$ {0:dd/MM/yyyy HH:mm}��6~     5      $ Total Amount��6%   $
 Auto 6s    6;   �� *TotalAmount+$ {0:C}��6s     5      $ Status��6%   $
 Auto 6P    65   �� *Status+6P   5       �� 5"   
   $��2��6   	 �� Orientation$	 
Horizontal=�6"   $��Right=�6;   $��10q�6W   .+�5#      �� $
��Back��6     MaterialDesignRaisedButton#��[ 6D   $
��Left=�6x   $	��Top=�6�   $��10q�6�   ��6$   �� *BackCommand+6�   �� 5$      $��Process Order��6   #��[ 6U   $��0 0 10 0q�6�   ��6-   �� *ProcessOrderCommand+6�   �� 5%      $��Complete Order��6   #��[ 6W   $��0 0 10 0q�6�   ��6.   �� *CompleteOrderCommand+6�   �� 5&      $��Cancel Order��6   #��[ 6S   ��6,   �� *CancelOrderCommand+6S   5'      5(      5)      