   M S B A M L   `   `   `  ����?  ;MVVM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:MVVM.ViewModelMVVM.ViewModel  5   	   clr-namespace:MVVMMVVM  5   	       MVVM.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	   %vmclr-namespace:MVVM.ViewModel  5   	   localclr-namespace:MVVM  5   	     � Title$  
MainWindow��5
   	   $	��562��6   $
��1000��6)    � 	Resources 5        MVVM.ViewModel.VMTC   vmtc   CurrentPathLeft   CurrentPathRight��%@   &	          5   
   $ C:\Users��6   $ C:\Users��6:   5      .��5      � 
������� � DataContext# [  6"    � RowDefinitions 5   
   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $	��10* �6   �� 5      $��1* �6   .+�5   
   � $��2��6    � ColumnDefinitions 5      �� 5      $
��0.5* �6#   �� 5      $��8* �6#   �� 5      $��1* �6#   �� 5      $��8* �6#   �� 5      $
��0.5* �6#   .+�5      �� -   5         ��Name$ LeftList��5      $��1��6)   ��69   ��  �� Path$ LeftListOfPaths�	 �� SelectedItem	 6h   �� $ SelectedPathLeft�
 �� Mode$
 TwoWay=�.  (System.Windows.Interactivity.Interaction   Triggers 5       /  )System.Windows.Interactivity.EventTrigger  5!         	EventName$ SelectionChanged��6%   .  (System.Windows.Interactivity.TriggerBase   Actions. 5"      6  0System.Windows.Interactivity.InvokeCommandAction     Command 60   �� *
LeftLoad+5#      5%      �� 5(      $��3��6   ��6'   �� $ RightListOfPaths�	 6U   �� $ SelectedPathRight�$
 TwoWay=� 5)        5*      $ SelectionChanged��6%   . 5+         60   �� *	RightLoad+5,      5.      51      � 52   
   $��0��6    53      �� 54      $��3* �6#   �� 55      $
��5.5* �6#   �� 56      $��1* �6#   �� 57      $
��2.5* �6#   �� 58      $
��5.5* �6#   �� 59      $
��0.5* �6#   .+�5;      �� $��path    ��6   $��0��6'   $��Right=�67   $	��0 5q�6S   �� 5<      -   5         ��Name$ txtPathLeft��5<      $��1��6+   $	��0 5q�6;    �� 
IsReadOnly . 
�������$��Center=�6�   ��6q   �� $ CurrentPathLeft�6�   �� 5=      $��path    ��6   $��3��6'   $��Right=�67   $	��0 5q�6S   �� 5>      -   5        $ txtPathRight��5>      $��4��6,   $	��0 5q�6<    . 
�������$��Center=�6�   ��6r   �� $ CurrentPathRight�6�   5?      � 5@   
   $��1��6    5A      �� 5B      $��7* �6#   �� 5C      $
��1.5* �6#   �� 5D      $��1* �6#   �� 5E      $
��6.5* �6#   �� 5F      $
��1.5* �6#   �� 5G      $
��0.5* �6#   .+�5I      �� $��	drive    ��6   $��0��6(   $��Right=�68   $	��0 5q�6T   �� 5J      $��1��6   $	��0 5q�6'   $��Center=�64   ��6V   �� $ LeftListOfDrives�	 6�   �� $ LeftDiscSelection� 5K        5L      $ DropDownOpened��6%   . 5M         60   �� *RefreshLeftWhenDroppedDown+5N        5O      $ SelectionChanged��6%   . 5P         60   �� *LeftDiscLoad+5Q      5S      �� 5T      $��	drive    ��6   $��3��6(   $��Right=�68   $	��0 5q�6T   �� 5U      -   5        $��
driveRight��5U      $��4��6)   $	��0 5q�69   $��Center=�6F   ��6h   �� $ RightListOfDrives�	 6�   �� $ RightDiscSelection� 5V        5W      $ DropDownOpened��6%   . 5X         60   �� *RefreshRightWhenDroppedDown+5Y        5Z      $ SelectionChanged��6%   . 5[         60   �� *RightDiscLoad+5\      5^      5_      � 5`   
   $��3��6    5a      �� 5b      $��5* �6#   �� 5c      $��1* �6#   �� 5d      $��5* �6#   .+�5f      �� -   5        $��btnCopy��5f      $��Copy >>��6$   $��1��66   $	��0 5q�6F   ��6S   �� *	CopyFiles+5g      5h      5i      