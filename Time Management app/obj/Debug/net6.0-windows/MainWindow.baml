   M S B A M L   `   `   `  ����N  JTime Management app, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:Time_Management_appTime_Management_app  5   	   $    Time_Management_app.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:Time_Management_app     5   	     � Title$  
MainWindow��5   	   $	��422��6   $	��800��6)   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $
��411* �6   �� 5      $	��11* �6   �� 5      $
��372* �6   �� 5      $��6* �6   .+�5   
   �� $
��Left=�6   $��	10,68,0,0q�6+   $	��Top=�6>   �� 5   
   $
��Left=�6   $	��344��6/   $��	33,55,0,0q�6<   
���   �$	��Top=�6^   $	��323��6v   �� 5   
   -   5         ��Name$ txtcode��5      $
��Left=�6#   $��196,124,0,0q�6>    �� TextWrapping$
 Wrap=�6S   $	��Top=�6g   $	��117��6   �� 5   
   -   5        $ txtname��5      $
��Left=�6#   $��195,157,0,0q�6>   $
 Wrap=�6S   $	��Top=�6g   $	��118��6   �� 5   
   -   5        $ txtclasshours��5      $
��Left=�6)   $��195,224,0,0q�6D   $
 Wrap=�6Y   $	��Top=�6m   $	��118��6�   �� 5   
   -   5        $ 
txtcredits��5      $
��Left=�6&   $��195,191,0,0q�6A   $
 Wrap=�6V   $	��Top=�6j   $	��118��6�   �� 5   
   $��Module Name��6   $
��Left=�6&   $��
59,153,0,0q�6A   $	��Top=�6U   �� 5   
   $��Number of credits��6   $
��Left=�6,   $��
59,187,0,0q�6G   $	��Top=�6[   �� 5   
   $��Class hours per week��6   $
��Left=�6/   $��
59,220,0,0q�6J   $	��Top=�6^   �� 5   
   $��Module Code��6   $
��Left=�6&   $��
59,120,0,0q�6A   $	��Top=�6U   �� 5   
   -   5         ��Name$ btnadd��5      $��
Add Module��6!   $
��Left=�66   $��196,327,0,0q�6Q   $	��Top=�6f   $	��117��6~   6�   �� 5   
   $��
Add Module��6   $
��Left=�6%   $��
128,73,0,0q�6@   $	��Top=�6T   $��16(�6l   $��	Castellar)�6z   �� 5   
   -   5        $ txtweeks��5      $
��Left=�6$   $��195,257,0,0q�6?   $
 Wrap=�6T   $	��Top=�6h   $	��117��6�   6�   �� 5   
   $��Number of weeks��6   $
��Left=�6*   $��
59,253,0,0q�6E   $	��Top=�6Y   �� 5   
   $��Select Start Date��6   $
��Left=�6,   $��
59,284,0,0q�6G   $	��Top=�6[   �� 5   
   -   5         ��Name$ 	lvModules��5      $��10,55,0,206q�6&   $
��Left=�6h   $	��235��6�   $��2��6�    �� View 5       �� 5!      .P�5#      �� $
��Name��6%    �� Width$	 150��63    �� DisplayMemberBinding 6?   �� *
ModuleName+�� 5&      $��Study Hours��6%   $	 80 ��6:    5'      �� *ModuleStudyHours+5(      .@�5*      �� $��Button��6   �� 5+      $
��Wrap=�6   $��	TextBlock��6,   5,      (  "System.Windows.Controls.DatePicker  5-   
   -   5        	  Name$	 dpstartdate��5-      $
��Left=�6*   $��196,286,0,0q�6E   $	��Top=�6Z   $	��116��6r   $��24��6~   �� 5.   
   -	   5        $ btnClear��5.      $��2��6#   $��Clear��63   $
��Left=�6C   $��
270,70,0,0q�6^   $	��Top=�6r   $��71��6�   6�   �� 5/   
   -
   5        $��Show Study Hours��5/      $
��Left=�6,   $��196,365,0,0q�6G   $	��Top=�6\   $	��116��6t   6�   �� 50   
   $��2��6   $
��Left=�6$   $	��191��6?   $��
10,208,0,0q�6L   
���   �$	��Top=�6o   $	��306��6�   �� 51   
   $��2��6   $!��Enter Number Of Hours Spent��6    $
��Left=�6F   $��
12,270,0,0q�6a   $	��Top=�6u   �� 52   
   -   5        $ txtHoursSpent��52      $��2��6)   $
��Left=�69   $��186,274,0,0q�6T   $
 Wrap=�6i   $	��Top=�6}   $	��120��6�   �� 53   
   -   5        $��2��53      $��Update��6!   $
��Left=�62   $��186,350,0,0q�6M   $	��Top=�6b   $	��120��6z   6�   �� 54   
   $��Update Hours��6   $
��Left=�6'   $��
88,221,0,0q�6B   $	��Top=�6V   $��16(�6n   $��	Castellar)�6|   $��2��6�   �� 55   
   $��Time management��6   $
��Left=�6*   $��
297,10,0,0q�6E   $	��Top=�6Y   $��20(�6q   $��Copperplate Gothic Bold)�6   $��3��6�     56   
   -   5        $	 dpupdate��56      $��2��6'   $
��Left=�67   $��186,303,0,0q�6R   $	��Top=�6g   $	��120��6   �� 57   
   $��2��6   $��Select Date ��6    $
��Left=�67   $��
12,303,0,0q�6R   $	��Top=�6f   �� 58   
   $��2��6   $X��RNB! To update a module, select 
it on the List View above and 
enter the hours
��6    $
��Left=�6�   $��
17,340,0,0q�6�   $	��Top=�6�   $��Italic$�6�   $��10(�6�   5:      5;      