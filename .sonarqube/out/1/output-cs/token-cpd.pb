Ö
;D:\PRNProject\MiniMartManager\Views\UserProfileView.xaml.cs
	namespace 	
MiniMartManager
 
. 
Views 
{ 
public 

partial 
class 
UserProfileView (
:) *
UserControl+ 6
{		 
public

 
UserProfileView

 
(

 
)

  
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
} 
} î
@D:\PRNProject\MiniMartManager\Views\UserOrderHistoryView.xaml.cs
	namespace 	
MiniMartManager
 
. 
Views 
{ 
public 

partial 
class  
UserOrderHistoryView -
:. /
UserControl0 ;
{		 
public

  
UserOrderHistoryView

 #
(

# $
)

$ %
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
} 
} é
>D:\PRNProject\MiniMartManager\Views\UserManagementView.xaml.cs
	namespace 	
MiniMartManager
 
. 
Views 
{ 
public 

partial 
class 
UserManagementView +
:, -
UserControl. 9
{ 
public 
UserManagementView !
(! "
)" #
{ 	
InitializeComponent		 
(		  
)		  !
;		! "
}

 	
} 
} ã
=D:\PRNProject\MiniMartManager\Views\UserDashboardView.xaml.cs
	namespace 	
MiniMartManager
 
. 
Views 
{ 
public 

partial 
class 
UserDashboardView *
:+ ,
UserControl- 8
{ 
public 
UserDashboardView  
(  !
)! "
{ 	
InitializeComponent		 
(		  
)		  !
;		! "
}

 	
} 
} Û
5D:\PRNProject\MiniMartManager\Views\SalesView.xaml.cs
	namespace 	
MiniMartManager
 
. 
Views 
{ 
public 

partial 
class 
	SalesView "
:# $
UserControl% 0
{		 
public

 
	SalesView

 
(

 
)

 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
} 
} £
8D:\PRNProject\MiniMartManager\Views\RegisterView.xaml.cs
	namespace 	
MiniMartManager
 
. 
Views 
{ 
public

 

partial

 
class

 
RegisterView

 %
:

& '
UserControl

( 3
{ 
public 
RegisterView 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
this 
. 
Loaded 
+= 
RegisterView_Loaded .
;. /
} 	
private 
void 
RegisterView_Loaded (
(( )
object) /
sender0 6
,6 7
RoutedEventArgs8 G
eH I
)I J
{ 	
if 
( 
PasswordBox 
!= 
null #
)# $
{ 
PasswordBox 
. 
PasswordChanged +
+=, .'
PasswordBox_PasswordChanged/ J
;J K
} 
if 
( 
ConfirmPasswordBox "
!=# %
null& *
)* +
{ 
ConfirmPasswordBox "
." #
PasswordChanged# 2
+=3 5.
"ConfirmPasswordBox_PasswordChanged6 X
;X Y
} 
} 	
private 
void '
PasswordBox_PasswordChanged 0
(0 1
object1 7
sender8 >
,> ?
RoutedEventArgs@ O
eP Q
)Q R
{ 	
if   
(   
this   
.   
DataContext    
is  ! #
RegisterViewModel  $ 5
	viewModel  6 ?
&&  @ B
sender  C I
is  J L
PasswordBox  M X
passwordBox  Y d
)  d e
{!! 
	viewModel"" 
."" 
Password"" "
=""# $
passwordBox""% 0
.""0 1
Password""1 9
;""9 :
}## 
}$$ 	
private&& 
void&& .
"ConfirmPasswordBox_PasswordChanged&& 7
(&&7 8
object&&8 >
sender&&? E
,&&E F
RoutedEventArgs&&G V
e&&W X
)&&X Y
{'' 	
if(( 
((( 
this(( 
.(( 
DataContext((  
is((! #
RegisterViewModel(($ 5
	viewModel((6 ?
&&((@ B
sender((C I
is((J L
PasswordBox((M X
confirmPasswordBox((Y k
)((k l
{)) 
	viewModel** 
.** 
ConfirmPassword** )
=*** +
confirmPasswordBox**, >
.**> ?
Password**? G
;**G H
}++ 
},, 	
}-- 
}.. ó
AD:\PRNProject\MiniMartManager\Views\ProductManagementView.xaml.cs
	namespace 	
MiniMartManager
 
. 
Views 
{ 
public 

partial 
class !
ProductManagementView .
:/ 0
UserControl1 <
{ 
public !
ProductManagementView $
($ %
)% &
{ 	
InitializeComponent		 
(		  
)		  !
;		! "
}

 	
} 
} ë
?D:\PRNProject\MiniMartManager\Views\OrderProcessingView.xaml.cs
	namespace 	
MiniMartManager
 
. 
Views 
{ 
public 

partial 
class 
OrderProcessingView ,
:- .
UserControl/ :
{		 
public

 
OrderProcessingView

 "
(

" #
)

# $
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
} 
} ì
5D:\PRNProject\MiniMartManager\Views\LoginView.xaml.cs
	namespace 	
MiniMartManager
 
. 
Views 
{ 
public 

partial 
class 
	LoginView "
:# $
UserControl% 0
{ 
public		 
	LoginView		 
(		 
)		 
{

 	
InitializeComponent 
(  
)  !
;! "
this 
. 
Loaded 
+= 
LoginView_Loaded +
;+ ,
} 	
private 
void 
LoginView_Loaded %
(% &
object& ,
sender- 3
,3 4
RoutedEventArgs5 D
eE F
)F G
{ 	
if 
( 
PasswordBox 
!= 
null #
)# $
{ 
PasswordBox 
. 
PasswordChanged +
+=, .'
PasswordBox_PasswordChanged/ J
;J K
} 
} 	
private 
void '
PasswordBox_PasswordChanged 0
(0 1
object1 7
sender8 >
,> ?
RoutedEventArgs@ O
eP Q
)Q R
{ 	
if 
( 
this 
. 
DataContext  
is! #
LoginViewModel$ 2
	viewModel3 <
&&= ?
sender@ F
isG I
PasswordBoxJ U
passwordBoxV a
)a b
{ 
	viewModel 
. 
Password "
=# $
passwordBox% 0
.0 1
Password1 9
;9 :
} 
} 	
} 
} ö
BD:\PRNProject\MiniMartManager\Views\CategoryManagementView.xaml.cs
	namespace 	
MiniMartManager
 
. 
Views 
{ 
public 

partial 
class "
CategoryManagementView /
:0 1
UserControl2 =
{ 
public "
CategoryManagementView %
(% &
)& '
{ 	
InitializeComponent		 
(		  
)		  !
;		! "
}

 	
} 
} é
>D:\PRNProject\MiniMartManager\Views\AdminDashboardView.xaml.cs
	namespace 	
MiniMartManager
 
. 
Views 
{ 
public 

partial 
class 
AdminDashboardView +
:, -
UserControl. 9
{ 
public 
AdminDashboardView !
(! "
)" #
{ 	
InitializeComponent		 
(		  
)		  !
;		! "
}

 	
} 
} ë
>D:\PRNProject\MiniMartManager\Views\AddEditProductView.xaml.cs
	namespace 	
MiniMartManager
 
. 
Views 
{ 
public 

partial 
class 
AddEditProductView +
:, -
Window. 4
{ 
public		 
AddEditProductView		 !
(		! "
)		" #
{

 	
InitializeComponent 
(  
)  !
;! "
this 
. 
DataContextChanged #
+=$ &1
%AddEditProductView_DataContextChanged' L
;L M
} 	
private 
void 1
%AddEditProductView_DataContextChanged :
(: ;
object; A
senderB H
,H I.
"DependencyPropertyChangedEventArgsJ l
em n
)n o
{ 	
if 
( 
e 
. 
OldValue 
is "
INotifyPropertyChanged 4
oldViewModel5 A
)A B
{ 
oldViewModel 
. 
PropertyChanged ,
-=- /%
ViewModel_PropertyChanged0 I
;I J
} 
if 
( 
e 
. 
NewValue 
is #
AddEditProductViewModel 5
newViewModel6 B
)B C
{ 
newViewModel 
. 
PropertyChanged ,
+=- /%
ViewModel_PropertyChanged0 I
;I J
} 
} 	
private 
void %
ViewModel_PropertyChanged .
(. /
object/ 5
?5 6
sender7 =
,= >$
PropertyChangedEventArgs? W
eX Y
)Y Z
{ 	
if 
( 
e 
. 
PropertyName 
== !
nameof" (
(( )#
AddEditProductViewModel) @
.@ A
DialogResultA M
)M N
)N O
{ 
if   
(   
sender   
is   #
AddEditProductViewModel   5
	viewModel  6 ?
&&  @ B
	viewModel  C L
.  L M
DialogResult  M Y
.  Y Z
HasValue  Z b
)  b c
{!! 
this"" 
."" 
DialogResult"" %
=""& '
	viewModel""( 1
.""1 2
DialogResult""2 >
;""> ?
this## 
.## 
Close## 
(## 
)##  
;##  !
}$$ 
}%% 
}&& 	
}'' 
}(( é9
@D:\PRNProject\MiniMartManager\ViewModels\UserProfileViewModel.cs
	namespace 	
MiniMartManager
 
. 

ViewModels $
{ 
public 

partial 
class  
UserProfileViewModel -
:. /
ObservableObject0 @
{ 
private 
readonly 
MiniMartDbContext *
_context+ 3
;3 4
private 
readonly 
INavigationService +
_navigationService, >
;> ?
[ 	
ObservableProperty	 
] 
private 
User 
? 
_currentUser "
;" #
[ 	
ObservableProperty	 
] 
private 
string 
_oldPassword #
=$ %
string& ,
., -
Empty- 2
;2 3
[ 	
ObservableProperty	 
] 
private 
string 
_newPassword #
=$ %
string& ,
., -
Empty- 2
;2 3
[ 	
ObservableProperty	 
] 
private 
string 
_confirmNewPassword *
=+ ,
string- 3
.3 4
Empty4 9
;9 :
public 
IRelayCommand !
ChangePasswordCommand 2
{3 4
get5 8
;8 9
}: ;
public 
IRelayCommand 
BackCommand (
{) *
get+ .
;. /
}0 1
public!!  
UserProfileViewModel!! #
(!!# $
MiniMartDbContext!!$ 5
context!!6 =
,!!= >
INavigationService!!? Q
navigationService!!R c
)!!c d
{"" 	
_context## 
=## 
context## 
;## 
_navigationService$$ 
=$$  
navigationService$$! 2
;$$2 3
CurrentUser%% 
=%% 
_context%% "
.%%" #
Users%%# (
.%%( )
FirstOrDefault%%) 7
(%%7 8
u%%8 9
=>%%: <
u%%= >
.%%> ?
Id%%? A
==%%B D
CurrentUserService%%E W
.%%W X
CurrentUserId%%X e
)%%e f
;%%f g!
ChangePasswordCommand'' !
=''" #
new''$ '
RelayCommand''( 4
(''4 5
ChangePassword''5 C
)''C D
;''D E
BackCommand(( 
=(( 
new(( 
RelayCommand(( *
(((* +
(((+ ,
)((, -
=>((. 0
_navigationService((1 C
.((C D

NavigateTo((D N
<((N O
UserDashboardView((O `
,((` a"
UserDashboardViewModel((b x
>((x y
(((y z
)((z {
)(({ |
;((| }
})) 	
private++ 
void++ 
ChangePassword++ #
(++# $
)++$ %
{,, 	
if-- 
(-- 
CurrentUser-- 
==-- 
null-- #
)--# $
{.. 

MessageBox// 
.// 
Show// 
(//  
$str//  1
,//1 2
$str//3 :
,//: ;
MessageBoxButton//< L
.//L M
OK//M O
,//O P
MessageBoxImage//Q `
.//` a
Error//a f
)//f g
;//g h
return00 
;00 
}11 
if33 
(33 
string33 
.33 
IsNullOrWhiteSpace33 )
(33) *
OldPassword33* 5
)335 6
||337 9
string33: @
.33@ A
IsNullOrWhiteSpace33A S
(33S T
NewPassword33T _
)33_ `
||33a c
string33d j
.33j k
IsNullOrWhiteSpace33k }
(33} ~
ConfirmNewPassword	33~ ê
)
33ê ë
)
33ë í
{44 

MessageBox55 
.55 
Show55 
(55  
$str55  E
,55E F
$str55G N
,55N O
MessageBoxButton55P `
.55` a
OK55a c
,55c d
MessageBoxImage55e t
.55t u
Error55u z
)55z {
;55{ |
return66 
;66 
}77 
if99 
(99 
!99 
BCrypt99 
.99 
Net99 
.99 
BCrypt99 "
.99" #
Verify99# )
(99) *
OldPassword99* 5
,995 6
CurrentUser997 B
.99B C
HashedPassword99C Q
)99Q R
)99R S
{:: 

MessageBox;; 
.;; 
Show;; 
(;;  
$str;;  <
,;;< =
$str;;> E
,;;E F
MessageBoxButton;;G W
.;;W X
OK;;X Z
,;;Z [
MessageBoxImage;;\ k
.;;k l
Error;;l q
);;q r
;;;r s
return<< 
;<< 
}== 
if?? 
(?? 
NewPassword?? 
!=?? 
ConfirmNewPassword?? 1
)??1 2
{@@ 

MessageBoxAA 
.AA 
ShowAA 
(AA  
$strAA  =
,AA= >
$strAA? F
,AAF G
MessageBoxButtonAAH X
.AAX Y
OKAAY [
,AA[ \
MessageBoxImageAA] l
.AAl m
ErrorAAm r
)AAr s
;AAs t
returnBB 
;BB 
}CC 
ifEE 
(EE 
NewPasswordEE 
.EE 
LengthEE "
<EE# $
$numEE% &
)EE& '
{FF 

MessageBoxGG 
.GG 
ShowGG 
(GG  
$strGG  R
,GGR S
$strGGT [
,GG[ \
MessageBoxButtonGG] m
.GGm n
OKGGn p
,GGp q
MessageBoxImage	GGr Å
.
GGÅ Ç
Error
GGÇ á
)
GGá à
;
GGà â
returnHH 
;HH 
}II 
CurrentUserKK 
.KK 
HashedPasswordKK &
=KK' (
BCryptKK) /
.KK/ 0
NetKK0 3
.KK3 4
BCryptKK4 :
.KK: ;
HashPasswordKK; G
(KKG H
NewPasswordKKH S
)KKS T
;KKT U
_contextLL 
.LL 
UsersLL 
.LL 
UpdateLL !
(LL! "
CurrentUserLL" -
)LL- .
;LL. /
_contextMM 
.MM 
SaveChangesMM  
(MM  !
)MM! "
;MM" #

MessageBoxOO 
.OO 
ShowOO 
(OO 
$strOO <
,OO< =
$strOO> G
,OOG H
MessageBoxButtonOOI Y
.OOY Z
OKOOZ \
,OO\ ]
MessageBoxImageOO^ m
.OOm n
InformationOOn y
)OOy z
;OOz {
OldPasswordPP 
=PP 
stringPP  
.PP  !
EmptyPP! &
;PP& '
NewPasswordQQ 
=QQ 
stringQQ  
.QQ  !
EmptyQQ! &
;QQ& '
ConfirmNewPasswordRR 
=RR  
stringRR! '
.RR' (
EmptyRR( -
;RR- .
}SS 	
}TT 
}UU Ö
ED:\PRNProject\MiniMartManager\ViewModels\UserOrderHistoryViewModel.cs
	namespace 	
MiniMartManager
 
. 

ViewModels $
{ 
public 

partial 
class %
UserOrderHistoryViewModel 2
:3 4
ObservableObject5 E
{ 
private 
readonly 
MiniMartDbContext *
_context+ 3
;3 4
private 
readonly 
INavigationService +
_navigationService, >
;> ?
[ 	
ObservableProperty	 
] 
private  
ObservableCollection $
<$ %
Order% *
>* +
_userOrders, 7
;7 8
[ 	
ObservableProperty	 
] 
private 
Order 
? 
_selectedOrder %
;% &
public 
IRelayCommand 
BackCommand (
{) *
get+ .
;. /
}0 1
public %
UserOrderHistoryViewModel (
(( )
MiniMartDbContext) :
context; B
,B C
INavigationServiceD V
navigationServiceW h
)h i
{ 	
_context 
= 
context 
; 
_navigationService 
=  
navigationService! 2
;2 3
_userOrders   
=   
new    
ObservableCollection   2
<  2 3
Order  3 8
>  8 9
(  9 :
)  : ;
;  ; <
BackCommand!! 
=!! 
new!! 
RelayCommand!! *
(!!* +
(!!+ ,
)!!, -
=>!!. 0
_navigationService!!1 C
.!!C D

NavigateTo!!D N
<!!N O
UserDashboardView!!O `
,!!` a"
UserDashboardViewModel!!b x
>!!x y
(!!y z
)!!z {
)!!{ |
;!!| }
_"" 
="" 
LoadUserOrders"" 
("" 
)""  
;""  !
}## 	
private%% 
async%% 
Task%% 
LoadUserOrders%% )
(%%) *
)%%* +
{&& 	
var'' 
userId'' 
='' 
CurrentUserService'' +
.''+ ,
CurrentUserId'', 9
;''9 :
if)) 
()) 
userId)) 
==)) 
$num)) 
))) 
{** 
return++ 
;++ 
},, 
var.. 
orders.. 
=.. 
await.. 
_context.. '
...' (
Orders..( .
.// 
Include// 
(// 
o// 
=>// 
o// 
.//  
User//  $
)//$ %
.00 
Include00 
(00 
o00 
=>00 
o00 
.00  
OrderDetails00  ,
)00, -
.11 
ThenInclude11  
(11  !
od11! #
=>11$ &
od11' )
.11) *
Product11* 1
)111 2
.22 
Where22 
(22 
o22 
=>22 
o22 
.22 
UserId22 $
==22% '
userId22( .
)22. /
.33 
OrderByDescending33 "
(33" #
o33# $
=>33% '
o33( )
.33) *
	OrderDate33* 3
)333 4
.44 
ToListAsync44 
(44 
)44 
;44 

UserOrders66 
=66 
new66  
ObservableCollection66 1
<661 2
Order662 7
>667 8
(668 9
orders669 ?
)66? @
;66@ A
}77 	
}88 
}99 ≠/
CD:\PRNProject\MiniMartManager\ViewModels\UserManagementViewModel.cs
	namespace 	
MiniMartManager
 
. 

ViewModels $
{ 
public 

partial 
class #
UserManagementViewModel 0
:1 2
ObservableObject3 C
{ 
public  
ObservableCollection #
<# $
User$ (
>( )
Users* /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
=> ?
new@ C 
ObservableCollectionD X
<X Y
UserY ]
>] ^
(^ _
)_ `
;` a
public 
IRelayCommand 
AddUserCommand +
{, -
get. 1
;1 2
}3 4
public 
IRelayCommand 
EditUserCommand ,
{- .
get/ 2
;2 3
}4 5
public 
IRelayCommand 
DeleteUserCommand .
{/ 0
get1 4
;4 5
}6 7
public 
IRelayCommand 
BackCommand (
{) *
get+ .
;. /
}0 1
private 
readonly 
INavigationService +
_navigationService, >
;> ?
public #
UserManagementViewModel &
(& '
INavigationService' 9
navigationService: K
)K L
{ 	
_navigationService 
=  
navigationService! 2
;2 3
Users 
= 
new  
ObservableCollection ,
<, -
User- 1
>1 2
(2 3
)3 4
;4 5
	LoadUsers 
( 
) 
; 
AddUserCommand 
= 
new  
RelayCommand! -
(- .
AddUser. 5
)5 6
;6 7
EditUserCommand   
=   
new   !
RelayCommand  " .
<  . /
User  / 3
>  3 4
(  4 5
EditUser  5 =
)  = >
;  > ?
DeleteUserCommand!! 
=!! 
new!!  #
RelayCommand!!$ 0
<!!0 1
User!!1 5
>!!5 6
(!!6 7

DeleteUser!!7 A
)!!A B
;!!B C
BackCommand"" 
="" 
new"" 
RelayCommand"" *
(""* +
(""+ ,
)"", -
=>"". 0
_navigationService""1 C
.""C D

NavigateTo""D N
<""N O
AdminDashboardView""O a
,""a b#
AdminDashboardViewModel""c z
>""z {
(""{ |
)""| }
)""} ~
;""~ 
}## 	
private%% 
void%% 
	LoadUsers%% 
(%% 
)%%  
{&& 	
using'' 
('' 
var'' 
context'' 
=''  
new''! $
MiniMartDbContext''% 6
(''6 7
)''7 8
)''8 9
{(( 
Users)) 
.)) 
Clear)) 
()) 
))) 
;)) 
foreach** 
(** 
var** 
user** !
in**" $
context**% ,
.**, -
Users**- 2
.**2 3
ToList**3 9
(**9 :
)**: ;
)**; <
{++ 
Users,, 
.,, 
Add,, 
(,, 
user,, "
),," #
;,,# $
}-- 
}.. 
}// 	
private11 
void11 
AddUser11 
(11 
)11 
{22 	

MessageBox44 
.44 
Show44 
(44 
$str44 N
)44N O
;44O P
}55 	
private77 
void77 
EditUser77 
(77 
User77 "
user77# '
)77' (
{88 	

MessageBox:: 
.:: 
Show:: 
(:: 
$":: 
$str:: )
{::) *
user::* .
.::. /
Username::/ 7
}::7 8
"::8 9
)::9 :
;::: ;
};; 	
private== 
void== 

DeleteUser== 
(==  
User==  $
?==$ %
user==& *
)==* +
{>> 	
if?? 
(?? 
user?? 
==?? 
null?? 
)?? 
return?? $
;??$ %
if@@ 
(@@ 

MessageBox@@ 
.@@ 
Show@@ 
(@@  
$"@@  "
$str@@" H
{@@H I
user@@I M
.@@M N
Username@@N V
}@@V W
$str@@W Y
"@@Y Z
,@@Z [
$str@@\ l
,@@l m
MessageBoxButton@@n ~
.@@~ 
YesNo	@@ Ñ
,
@@Ñ Ö
MessageBoxImage
@@Ü ï
.
@@ï ñ
Warning
@@ñ ù
)
@@ù û
==
@@ü °
MessageBoxResult
@@¢ ≤
.
@@≤ ≥
Yes
@@≥ ∂
)
@@∂ ∑
{AA 
usingBB 
(BB 
varBB 
contextBB "
=BB# $
newBB% (
MiniMartDbContextBB) :
(BB: ;
)BB; <
)BB< =
{CC 
contextDD 
.DD 
UsersDD !
.DD! "
RemoveDD" (
(DD( )
userDD) -
)DD- .
;DD. /
contextEE 
.EE 
SaveChangesEE '
(EE' (
)EE( )
;EE) *

MessageBoxFF 
.FF 
ShowFF #
(FF# $
$strFF$ @
,FF@ A
$strFFB K
,FFK L
MessageBoxButtonFFM ]
.FF] ^
OKFF^ `
,FF` a
MessageBoxImageFFb q
.FFq r
InformationFFr }
)FF} ~
;FF~ 
	LoadUsersGG 
(GG 
)GG 
;GG  
}HH 
}II 
}JJ 	
}KK 
}LL ì}
BD:\PRNProject\MiniMartManager\ViewModels\UserDashboardViewModel.cs
	namespace 	
MiniMartManager
 
. 

ViewModels $
{ 
public 

partial 
class "
UserDashboardViewModel /
:0 1
ObservableObject2 B
{ 
private 
readonly 
INavigationService +
_navigationService, >
;> ?
private 
readonly 
MiniMartDbContext *
_context+ 3
;3 4
[ 	
ObservableProperty	 
] 
private  
ObservableCollection $
<$ %
Product% ,
>, -
_availableProducts. @
;@ A
[ 	
ObservableProperty	 
] 
private  
ObservableCollection $
<$ %
OrderDetail% 0
>0 1

_cartItems2 <
;< =
[ 	
ObservableProperty	 
] 
private 
Product 
? 
_selectedProduct )
;) *
[ 	
ObservableProperty	 
] 
private 
int  
_quantityToAddToCart (
=) *
$num+ ,
;, -
partial   
void   $
OnSelectedProductChanged   -
(  - .
Product  . 5
?  5 6
value  7 <
)  < =
{!! 	
AddToCartCommand"" 
."" #
NotifyCanExecuteChanged"" 4
(""4 5
)""5 6
;""6 7
}## 	
partial%% 
void%% (
OnQuantityToAddToCartChanged%% 1
(%%1 2
int%%2 5
value%%6 ;
)%%; <
{&& 	
AddToCartCommand'' 
.'' #
NotifyCanExecuteChanged'' 4
(''4 5
)''5 6
;''6 7
}(( 	
[** 	
ObservableProperty**	 
]** 
private++ 
decimal++ 

_cartTotal++ "
;++" #
public-- 
IRelayCommand-- "
NavigateToSalesCommand-- 3
{--4 5
get--6 9
;--9 :
}--; <
public.. 
IRelayCommand.. 
AddToCartCommand.. -
{... /
get..0 3
;..3 4
}..5 6
public// 
IRelayCommand// !
RemoveFromCartCommand// 2
{//3 4
get//5 8
;//8 9
}//: ;
public00 
IRelayCommand00 
PlaceOrderCommand00 .
{00/ 0
get001 4
;004 5
}006 7
public11 
IRelayCommand11 )
NavigateToOrderHistoryCommand11 :
{11; <
get11= @
;11@ A
}11B C
public22 
IRelayCommand22 (
NavigateToUserProfileCommand22 9
{22: ;
get22< ?
;22? @
}22A B
public33 
IRelayCommand33 
LogoutCommand33 *
{33+ ,
get33- 0
;330 1
}332 3
public55 "
UserDashboardViewModel55 %
(55% &
INavigationService55& 8
navigationService559 J
,55J K
MiniMartDbContext55L ]
context55^ e
)55e f
{66 	
_navigationService77 
=77  
navigationService77! 2
;772 3
_context88 
=88 
context88 
;88 
_availableProducts:: 
=::  
new::! $ 
ObservableCollection::% 9
<::9 :
Product::: A
>::A B
(::B C
)::C D
;::D E

_cartItems;; 
=;; 
new;;  
ObservableCollection;; 1
<;;1 2
OrderDetail;;2 =
>;;= >
(;;> ?
);;? @
;;;@ A
LoadProducts== 
(== 
)== 
;== 
AddToCartCommand?? 
=?? 
new?? "
RelayCommand??# /
(??/ 0
	AddToCart??0 9
,??9 :
CanAddToCart??; G
)??G H
;??H I!
RemoveFromCartCommand@@ !
=@@" #
new@@$ '
RelayCommand@@( 4
<@@4 5
OrderDetail@@5 @
>@@@ A
(@@A B
RemoveFromCart@@B P
)@@P Q
;@@Q R
PlaceOrderCommandAA 
=AA 
newAA  #
RelayCommandAA$ 0
(AA0 1

PlaceOrderAA1 ;
,AA; <
CanPlaceOrderAA= J
)AAJ K
;AAK L"
NavigateToSalesCommandBB "
=BB# $
newBB% (
RelayCommandBB) 5
(BB5 6
(BB6 7
)BB7 8
=>BB9 ;
_navigationServiceBB< N
.BBN O

NavigateToBBO Y
<BBY Z
	SalesViewBBZ c
,BBc d
SalesViewModelBBe s
>BBs t
(BBt u
)BBu v
)BBv w
;BBw x)
NavigateToOrderHistoryCommandCC )
=CC* +
newCC, /
RelayCommandCC0 <
(CC< =
(CC= >
)CC> ?
=>CC@ B
_navigationServiceCCC U
.CCU V

NavigateToCCV `
<CC` a 
UserOrderHistoryViewCCa u
,CCu v&
UserOrderHistoryViewModel	CCw ê
>
CCê ë
(
CCë í
)
CCí ì
)
CCì î
;
CCî ï(
NavigateToUserProfileCommandDD (
=DD) *
newDD+ .
RelayCommandDD/ ;
(DD; <
(DD< =
)DD= >
=>DD? A
_navigationServiceDDB T
.DDT U

NavigateToDDU _
<DD_ `
UserProfileViewDD` o
,DDo p!
UserProfileViewModel	DDq Ö
>
DDÖ Ü
(
DDÜ á
)
DDá à
)
DDà â
;
DDâ ä
LogoutCommandEE 
=EE 
newEE 
RelayCommandEE  ,
(EE, -
(EE- .
)EE. /
=>EE0 2
_navigationServiceEE3 E
.EEE F

NavigateToEEF P
<EEP Q
	LoginViewEEQ Z
,EEZ [
LoginViewModelEE\ j
>EEj k
(EEk l
)EEl m
)EEm n
;EEn o
	CartItemsGG 
.GG 
CollectionChangedGG '
+=GG( *
(GG+ ,
senderGG, 2
,GG2 3
eGG4 5
)GG5 6
=>GG7 9
UpdateCartTotalGG: I
(GGI J
)GGJ K
;GGK L
}HH 	
privateJJ 
voidJJ 
LoadProductsJJ !
(JJ! "
)JJ" #
{KK 	
AvailableProductsLL 
=LL 
newLL  # 
ObservableCollectionLL$ 8
<LL8 9
ProductLL9 @
>LL@ A
(LLA B
_contextLLB J
.LLJ K
ProductsLLK S
.LLS T
IncludeLLT [
(LL[ \
pLL\ ]
=>LL^ `
pLLa b
.LLb c
CategoryLLc k
)LLk l
.LLl m
ToListLLm s
(LLs t
)LLt u
)LLu v
;LLv w
}MM 	
privateOO 
voidOO 
	AddToCartOO 
(OO 
)OO  
{PP 	
ifQQ 
(QQ 
SelectedProductQQ 
==QQ  "
nullQQ# '
||QQ( *
QuantityToAddToCartQQ+ >
<=QQ? A
$numQQB C
)QQC D
{RR 
returnSS 
;SS 
}TT 
ifWW 
(WW 
SelectedProductWW 
.WW  
StockQuantityWW  -
<WW. /
QuantityToAddToCartWW0 C
)WWC D
{XX 

MessageBoxYY 
.YY 
ShowYY 
(YY  
$"YY  "
$strYY" 7
{YY7 8
SelectedProductYY8 G
.YYG H
NameYYH L
}YYL M
$strYYM Z
{YYZ [
SelectedProductYY[ j
.YYj k
StockQuantityYYk x
}YYx y
"YYy z
,YYz {
$str	YY| ä
,
YYä ã
MessageBoxButton
YYå ú
.
YYú ù
OK
YYù ü
,
YYü †
MessageBoxImage
YY° ∞
.
YY∞ ±
Warning
YY± ∏
)
YY∏ π
;
YYπ ∫
returnZZ 
;ZZ 
}[[ 
var]] 
existingCartItem]]  
=]]! "
	CartItems]]# ,
.]], -
FirstOrDefault]]- ;
(]]; <
item]]< @
=>]]A C
item]]D H
.]]H I
	ProductId]]I R
==]]S U
SelectedProduct]]V e
.]]e f
Id]]f h
)]]h i
;]]i j
if__ 
(__ 
existingCartItem__  
!=__! #
null__$ (
)__( )
{`` 
ifbb 
(bb 
SelectedProductbb #
.bb# $
StockQuantitybb$ 1
<bb2 3
(bb4 5
existingCartItembb5 E
.bbE F
QuantitybbF N
+bbO P
QuantityToAddToCartbbQ d
)bbd e
)bbe f
{cc 

MessageBoxdd 
.dd 
Showdd #
(dd# $
$"dd$ &
$strdd& -
{dd- .
QuantityToAddToCartdd. A
}ddA B
$strddB K
{ddK L
SelectedProductddL [
.dd[ \
Namedd\ `
}dd` a
$str	dda ã
{
ddã å
SelectedProduct
ddå õ
.
ddõ ú
StockQuantity
ddú ©
-
dd™ ´
existingCartItem
dd¨ º
.
ddº Ω
Quantity
ddΩ ≈
}
dd≈ ∆
"
dd∆ «
,
dd« »
$str
dd… ◊
,
dd◊ ÿ
MessageBoxButton
ddŸ È
.
ddÈ Í
OK
ddÍ Ï
,
ddÏ Ì
MessageBoxImage
ddÓ ˝
.
dd˝ ˛
Warning
dd˛ Ö
)
ddÖ Ü
;
ddÜ á
returnee 
;ee 
}ff 
existingCartItemgg  
.gg  !
Quantitygg! )
+=gg* ,
QuantityToAddToCartgg- @
;gg@ A
}hh 
elseii 
{jj 
	CartItemskk 
.kk 
Addkk 
(kk 
newkk !
OrderDetailkk" -
{ll 
	ProductIdmm 
=mm 
SelectedProductmm  /
.mm/ 0
Idmm0 2
,mm2 3
Productnn 
=nn 
SelectedProductnn -
,nn- .
Quantityoo 
=oo 
QuantityToAddToCartoo 2
,oo2 3
Pricepp 
=pp 
SelectedProductpp +
.pp+ ,
Pricepp, 1
}qq 
)qq 
;qq 
}rr 
QuantityToAddToCartss 
=ss  !
$numss" #
;ss# $
UpdateCartTotaltt 
(tt 
)tt 
;tt 
}uu 	
privateww 
boolww 
CanAddToCartww !
(ww! "
)ww" #
{xx 	
returnyy 
SelectedProductyy "
!=yy# %
nullyy& *
&&yy+ -
QuantityToAddToCartyy. A
>yyB C
$numyyD E
;yyE F
}zz 	
private|| 
void|| 
RemoveFromCart|| #
(||# $
OrderDetail||$ /
?||/ 0
itemToRemove||1 =
)||= >
{}} 	
if~~ 
(~~ 
itemToRemove~~ 
!=~~ 
null~~  $
)~~$ %
{ 
	CartItems
ÄÄ 
.
ÄÄ 
Remove
ÄÄ  
(
ÄÄ  !
itemToRemove
ÄÄ! -
)
ÄÄ- .
;
ÄÄ. /
UpdateCartTotal
ÅÅ 
(
ÅÅ  
)
ÅÅ  !
;
ÅÅ! "
}
ÇÇ 
}
ÉÉ 	
private
ÖÖ 
async
ÖÖ 
void
ÖÖ 

PlaceOrder
ÖÖ %
(
ÖÖ% &
)
ÖÖ& '
{
ÜÜ 	
if
áá 
(
áá 
!
áá 
CanPlaceOrder
áá 
(
áá 
)
áá  
)
áá  !
{
àà 
return
ââ 
;
ââ 
}
ää 
if
åå 
(
åå  
CurrentUserService
åå "
.
åå" #
CurrentUserId
åå# 0
==
åå1 3
$num
åå4 5
)
åå5 6
{
çç 

MessageBox
éé 
.
éé 
Show
éé 
(
éé  
$str
éé  I
,
ééI J
$str
ééK R
,
ééR S
MessageBoxButton
ééT d
.
ééd e
OK
éée g
,
éég h
MessageBoxImage
ééi x
.
ééx y
Error
ééy ~
)
éé~ 
;éé Ä
return
èè 
;
èè 
}
êê 
var
íí 
newOrder
íí 
=
íí 
new
íí 
Order
íí $
{
ìì 
	OrderDate
îî 
=
îî 
DateTime
îî $
.
îî$ %
Now
îî% (
,
îî( )
UserId
ïï 
=
ïï  
CurrentUserService
ïï +
.
ïï+ ,
CurrentUserId
ïï, 9
,
ïï9 :
TotalAmount
ññ 
=
ññ 
	CartTotal
ññ '
,
ññ' (
Status
óó 
=
óó 
OrderStatus
óó $
.
óó$ %
Pending
óó% ,
,
óó, -
OrderDetails
òò 
=
òò 
	CartItems
òò (
.
òò( )
ToList
òò) /
(
òò/ 0
)
òò0 1
}
ôô 
;
ôô 
_context
õõ 
.
õõ 
Orders
õõ 
.
õõ 
Add
õõ 
(
õõ  
newOrder
õõ  (
)
õõ( )
;
õõ) *
await
úú 
_context
úú 
.
úú 
SaveChangesAsync
úú +
(
úú+ ,
)
úú, -
;
úú- .
foreach
ùù 
(
ùù 
var
ùù 
item
ùù 
in
ùù  
	CartItems
ùù! *
)
ùù* +
{
ûû 
var
üü 
productToUpdate
üü #
=
üü$ %
_context
üü& .
.
üü. /
Products
üü/ 7
.
üü7 8
Find
üü8 <
(
üü< =
item
üü= A
.
üüA B
	ProductId
üüB K
)
üüK L
;
üüL M
if
†† 
(
†† 
productToUpdate
†† #
!=
††$ &
null
††' +
)
††+ ,
{
°° 
productToUpdate
¢¢ #
.
¢¢# $
StockQuantity
¢¢$ 1
-=
¢¢2 4
item
¢¢5 9
.
¢¢9 :
Quantity
¢¢: B
;
¢¢B C
}
££ 
}
§§ 
await
•• 
_context
•• 
.
•• 
SaveChangesAsync
•• +
(
••+ ,
)
••, -
;
••- .

MessageBox
ßß 
.
ßß 
Show
ßß 
(
ßß 
$str
ßß 8
,
ßß8 9
$str
ßß: C
,
ßßC D
MessageBoxButton
ßßE U
.
ßßU V
OK
ßßV X
,
ßßX Y
MessageBoxImage
ßßZ i
.
ßßi j
Information
ßßj u
)
ßßu v
;
ßßv w
	CartItems
®® 
.
®® 
Clear
®® 
(
®® 
)
®® 
;
®® 
UpdateCartTotal
©© 
(
©© 
)
©© 
;
©© 
LoadProducts
™™ 
(
™™ 
)
™™ 
;
™™ 
}
´´ 	
private
≠≠ 
bool
≠≠ 
CanPlaceOrder
≠≠ "
(
≠≠" #
)
≠≠# $
{
ÆÆ 	
return
ØØ 
	CartItems
ØØ 
.
ØØ 
Any
ØØ  
(
ØØ  !
)
ØØ! "
;
ØØ" #
}
∞∞ 	
private
≤≤ 
void
≤≤ 
UpdateCartTotal
≤≤ $
(
≤≤$ %
)
≤≤% &
{
≥≥ 	
	CartTotal
¥¥ 
=
¥¥ 
	CartItems
¥¥ !
.
¥¥! "
Sum
¥¥" %
(
¥¥% &
item
¥¥& *
=>
¥¥+ -
item
¥¥. 2
.
¥¥2 3
Quantity
¥¥3 ;
*
¥¥< =
item
¥¥> B
.
¥¥B C
Price
¥¥C H
)
¥¥H I
;
¥¥I J
PlaceOrderCommand
µµ 
.
µµ %
NotifyCanExecuteChanged
µµ 5
(
µµ5 6
)
µµ6 7
;
µµ7 8
}
∂∂ 	
}
∑∑ 
}∏∏ ’1
:D:\PRNProject\MiniMartManager\ViewModels\SalesViewModel.cs
	namespace 	
MiniMartManager
 
. 

ViewModels $
{ 
public 

partial 
class 
SalesViewModel '
:( )
ObservableObject* :
{ 
private 
readonly 
MiniMartDbContext *
_context+ 3
;3 4
private 
readonly 
INavigationService +
_navigationService, >
;> ?
[ 	
ObservableProperty	 
] 
private 
DateTime 

_startDate #
=$ %
DateTime& .
.. /
Today/ 4
.4 5
	AddMonths5 >
(> ?
-? @
$num@ A
)A B
;B C
[ 	
ObservableProperty	 
] 
private 
DateTime 
_endDate !
=" #
DateTime$ ,
., -
Today- 2
;2 3
[ 	
ObservableProperty	 
] 
private  
ObservableCollection $
<$ %
SaleReportItem% 3
>3 4
_salesReportData5 E
=F G
newH K 
ObservableCollectionL `
<` a
SaleReportItema o
>o p
(p q
)q r
;r s
public 
SalesViewModel 
( 
MiniMartDbContext /
context0 7
,7 8
INavigationService9 K
navigationServiceL ]
)] ^
{ 	
_context   
=   
context   
;   
_navigationService!! 
=!!  
navigationService!!! 2
;!!2 3!
GenerateReportCommand"" !
=""" #
new""$ '
AsyncRelayCommand""( 9
(""9 :
GenerateSalesReport"": M
)""M N
;""N O
BackCommand## 
=## 
new## 
RelayCommand## *
(##* +
(##+ ,
)##, -
=>##. 0
_navigationService##1 C
.##C D

NavigateTo##D N
<##N O
AdminDashboardView##O a
,##a b#
AdminDashboardViewModel##c z
>##z {
(##{ |
)##| }
)##} ~
;##~ 
LoadInitialReport$$ 
($$ 
)$$ 
;$$  
}%% 	
public'' 
IAsyncRelayCommand'' !!
GenerateReportCommand''" 7
{''8 9
get'': =
;''= >
}''? @
public(( 
IRelayCommand(( 
BackCommand(( (
{(() *
get((+ .
;((. /
}((0 1
private** 
async** 
Task** 
GenerateSalesReport** .
(**. /
)**/ 0
{++ 	
if,, 
(,, 
	StartDate,, 
>,, 
EndDate,, #
),,# $
{-- 
return// 
;// 
}00 
var22 
	salesData22 
=22 
await22 !
_context22" *
.22* +
Orders22+ 1
.33 
Where33 
(33 
o33 
=>33 
o33 
.33 
	OrderDate33 '
>=33( *
	StartDate33+ 4
&&335 7
o338 9
.339 :
	OrderDate33: C
<=33D F
EndDate33G N
)33N O
.44 

SelectMany44 
(44 
o44 
=>44  
o44! "
.44" #
OrderDetails44# /
)44/ 0
.55 
GroupBy55 
(55 
od55 
=>55 
od55 !
.55! "
Product55" )
.55) *
Name55* .
)55. /
.66 
Select66 
(66 
g66 
=>66 
new66  
SaleReportItem66! /
{77 
ProductName88 
=88  !
g88" #
.88# $
Key88$ '
,88' (
QuantitySold99  
=99! "
g99# $
.99$ %
Sum99% (
(99( )
od99) +
=>99, .
od99/ 1
.991 2
Quantity992 :
)99: ;
,99; <
TotalRevenue::  
=::! "
g::# $
.::$ %
Sum::% (
(::( )
od::) +
=>::, .
od::/ 1
.::1 2
Quantity::2 :
*::; <
od::= ?
.::? @
Price::@ E
)::E F
};; 
);; 
.<< 
OrderByDescending<< "
(<<" #
item<<# '
=><<( *
item<<+ /
.<</ 0
TotalRevenue<<0 <
)<<< =
.== 
ToListAsync== 
(== 
)== 
;== 
SalesReportData?? 
.?? 
Clear?? !
(??! "
)??" #
;??# $
if@@ 
(@@ 
	salesData@@ 
.@@ 
Any@@ 
(@@ 
)@@ 
)@@  
{AA 
foreachBB 
(BB 
varBB 
itemBB !
inBB" $
	salesDataBB% .
)BB. /
{CC 
SalesReportDataDD #
.DD# $
AddDD$ '
(DD' (
itemDD( ,
)DD, -
;DD- .
}EE 
}FF 
}GG 	
privateII 
asyncII 
voidII 
LoadInitialReportII ,
(II, -
)II- .
{JJ 	
awaitKK 
GenerateSalesReportKK %
(KK% &
)KK& '
;KK' (
}LL 	
}MM 
publicOO 

partialOO 
classOO 
SaleReportItemOO '
:OO( )
ObservableObjectOO* :
{PP 
[QQ 	
ObservablePropertyQQ	 
]QQ 
privateRR 
stringRR 
_productNameRR #
=RR$ %
stringRR& ,
.RR, -
EmptyRR- 2
;RR2 3
[TT 	
ObservablePropertyTT	 
]TT 
privateUU 
intUU 
_quantitySoldUU !
;UU! "
[WW 	
ObservablePropertyWW	 
]WW 
privateXX 
decimalXX 
_totalRevenueXX %
;XX% &
}YY 
}ZZ Œ3
=D:\PRNProject\MiniMartManager\ViewModels\RegisterViewModel.cs
	namespace 	
MiniMartManager
 
. 

ViewModels $
{ 
public 

partial 
class 
RegisterViewModel *
:+ ,
ObservableObject- =
{ 
[ 	
ObservableProperty	 
] 
private 
string 
username 
=  !
string" (
.( )
Empty) .
;. /
private 
string 
	_password  
=! "
string# )
.) *
Empty* /
;/ 0
public 
string 
Password 
{ 	
get 
=> 
	_password 
; 
set 
=> 
SetProperty 
( 
ref "
	_password# ,
,, -
value. 3
)3 4
;4 5
} 	
private 
string 
_confirmPassword '
=( )
string* 0
.0 1
Empty1 6
;6 7
public 
string 
ConfirmPassword %
{ 	
get 
=> 
_confirmPassword #
;# $
set 
=> 
SetProperty 
( 
ref "
_confirmPassword# 3
,3 4
value5 :
): ;
;; <
} 	
public   
IRelayCommand   
RegisterCommand   ,
{  - .
get  / 2
;  2 3
}  4 5
public!! 
IRelayCommand!! 
BackToLoginCommand!! /
{!!0 1
get!!2 5
;!!5 6
}!!7 8
private## 
readonly## 
INavigationService## +
_navigationService##, >
;##> ?
public%% 
RegisterViewModel%%  
(%%  !
INavigationService%%! 3
navigationService%%4 E
)%%E F
{&& 	
_navigationService'' 
=''  
navigationService''! 2
;''2 3
RegisterCommand(( 
=(( 
new(( !
RelayCommand((" .
(((. /
Register((/ 7
)((7 8
;((8 9
BackToLoginCommand)) 
=))  
new))! $
RelayCommand))% 1
())1 2
())2 3
)))3 4
=>))5 7
_navigationService))8 J
.))J K

NavigateTo))K U
<))U V
	LoginView))V _
,))_ `
LoginViewModel))a o
>))o p
())p q
)))q r
)))r s
;))s t
}** 	
private,, 
void,, 
Register,, 
(,, 
),, 
{-- 	
if.. 
(.. 
string.. 
... 
IsNullOrWhiteSpace.. )
(..) *
Username..* 2
)..2 3
||..4 6
string..7 =
...= >
IsNullOrWhiteSpace..> P
(..P Q
Password..Q Y
)..Y Z
||..[ ]
string..^ d
...d e
IsNullOrWhiteSpace..e w
(..w x
ConfirmPassword	..x á
)
..á à
)
..à â
{// 

MessageBox00 
.00 
Show00 
(00  
$str00  <
,00< =
$str00> E
,00E F
MessageBoxButton00G W
.00W X
OK00X Z
,00Z [
MessageBoxImage00\ k
.00k l
Error00l q
)00q r
;00r s
return11 
;11 
}22 
if44 
(44 
Password44 
!=44 
ConfirmPassword44 +
)44+ ,
{55 

MessageBox66 
.66 
Show66 
(66  
$str66  9
,669 :
$str66; B
,66B C
MessageBoxButton66D T
.66T U
OK66U W
,66W X
MessageBoxImage66Y h
.66h i
Error66i n
)66n o
;66o p
return77 
;77 
}88 
using:: 
(:: 
var:: 
context:: 
=::  
new::! $
MiniMartDbContext::% 6
(::6 7
)::7 8
)::8 9
{;; 
if<< 
(<< 
context<< 
.<< 
Users<< !
.<<! "
Any<<" %
(<<% &
u<<& '
=><<( *
u<<+ ,
.<<, -
Username<<- 5
==<<6 8
Username<<9 A
)<<A B
)<<B C
{== 

MessageBox>> 
.>> 
Show>> #
(>># $
$str>>$ >
,>>> ?
$str>>@ G
,>>G H
MessageBoxButton>>I Y
.>>Y Z
OK>>Z \
,>>\ ]
MessageBoxImage>>^ m
.>>m n
Error>>n s
)>>s t
;>>t u
return?? 
;?? 
}@@ 
stringBB 
hashedPasswordBB %
=BB& '
BCryptBB( .
.BB. /
NetBB/ 2
.BB2 3
BCryptBB3 9
.BB9 :
HashPasswordBB: F
(BBF G
PasswordBBG O
)BBO P
;BBP Q
varCC 
newUserCC 
=CC 
newCC !
UserCC" &
{CC' (
UsernameCC) 1
=CC2 3
UsernameCC4 <
,CC< =
HashedPasswordCC> L
=CCM N
hashedPasswordCCO ]
,CC] ^
RoleCC_ c
=CCd e
$strCCf l
}CCm n
;CCn o
contextDD 
.DD 
UsersDD 
.DD 
AddDD !
(DD! "
newUserDD" )
)DD) *
;DD* +
contextEE 
.EE 
SaveChangesEE #
(EE# $
)EE$ %
;EE% &

MessageBoxFF 
.FF 
ShowFF 
(FF  
$strFF  :
,FF: ;
$strFF< E
,FFE F
MessageBoxButtonFFG W
.FFW X
OKFFX Z
,FFZ [
MessageBoxImageFF\ k
.FFk l
InformationFFl w
)FFw x
;FFx y
CurrentUserServiceHH "
.HH" #
CurrentUserIdHH# 0
=HH1 2
newUserHH3 :
.HH: ;
IdHH; =
;HH= >
_navigationServiceII "
.II" #

NavigateToII# -
<II- .
UserDashboardViewII. ?
,II? @"
UserDashboardViewModelIIA W
>IIW X
(IIX Y
)IIY Z
;IIZ [
}JJ 
}KK 	
}LL 
}MM å7
FD:\PRNProject\MiniMartManager\ViewModels\ProductManagementViewModel.cs
	namespace 	
MiniMartManager
 
. 

ViewModels $
{ 
public 

partial 
class &
ProductManagementViewModel 3
:4 5
ObservableObject6 F
{ 
public  
ObservableCollection #
<# $
Product$ +
>+ ,
Products- 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
=D E
newF I 
ObservableCollectionJ ^
<^ _
Product_ f
>f g
(g h
)h i
;i j
public 
IRelayCommand 
AddProductCommand .
{/ 0
get1 4
;4 5
}6 7
public 
IRelayCommand 
EditProductCommand /
{0 1
get2 5
;5 6
}7 8
public 
IRelayCommand  
DeleteProductCommand 1
{2 3
get4 7
;7 8
}9 :
public 
IRelayCommand 
BackCommand (
{) *
get+ .
;. /
}0 1
private 
readonly 
INavigationService +
_navigationService, >
;> ?
public &
ProductManagementViewModel )
() *
INavigationService* <
navigationService= N
)N O
{ 	
_navigationService 
=  
navigationService! 2
;2 3
LoadProducts 
( 
) 
; 
AddProductCommand 
= 
new  #
RelayCommand$ 0
(0 1

AddProduct1 ;
); <
;< =
EditProductCommand 
=  
new! $
RelayCommand% 1
<1 2
Product2 9
>9 :
(: ;
EditProduct; F
)F G
;G H 
DeleteProductCommand    
=  ! "
new  # &
RelayCommand  ' 3
<  3 4
Product  4 ;
>  ; <
(  < =
DeleteProduct  = J
)  J K
;  K L
BackCommand!! 
=!! 
new!! 
RelayCommand!! *
(!!* +
(!!+ ,
)!!, -
=>!!. 0
_navigationService!!1 C
.!!C D

NavigateTo!!D N
<!!N O
AdminDashboardView!!O a
,!!a b#
AdminDashboardViewModel!!c z
>!!z {
(!!{ |
)!!| }
)!!} ~
;!!~ 
}"" 	
private$$ 
void$$ 
LoadProducts$$ !
($$! "
)$$" #
{%% 	
using&& 
(&& 
var&& 
context&& 
=&&  
new&&! $
MiniMartDbContext&&% 6
(&&6 7
)&&7 8
)&&8 9
{'' 
Products(( 
.(( 
Clear(( 
((( 
)((  
;((  !
foreach)) 
()) 
var)) 
product)) $
in))% '
context))( /
.))/ 0
Products))0 8
.))8 9
Include))9 @
())@ A
p))A B
=>))C E
p))F G
.))G H
Category))H P
)))P Q
.))Q R
ToList))R X
())X Y
)))Y Z
)))Z [
{** 
Products++ 
.++ 
Add++  
(++  !
product++! (
)++( )
;++) *
},, 
}-- 
}.. 	
private00 
void00 

AddProduct00 
(00  
)00  !
{11 	
var22 
	viewModel22 
=22 
new22 #
AddEditProductViewModel22  7
(227 8
)228 9
;229 :
var33 
addEditProductView33 "
=33# $
new33% (
Views33) .
.33. /
AddEditProductView33/ A
{33B C
DataContext33D O
=33P Q
	viewModel33R [
}33\ ]
;33] ^
var44 
dialogResult44 
=44 
addEditProductView44 1
.441 2

ShowDialog442 <
(44< =
)44= >
;44> ?
if55 
(55 
dialogResult55 
==55 
true55  $
)55$ %
{66 
LoadProducts77 
(77 
)77 
;77 
}88 
}99 	
private;; 
void;; 
EditProduct;;  
(;;  !
Product;;! (
product;;) 0
);;0 1
{<< 	
var== 
	viewModel== 
=== 
new== #
AddEditProductViewModel==  7
(==7 8
product==8 ?
)==? @
;==@ A
var>> 
addEditProductView>> "
=>># $
new>>% (
Views>>) .
.>>. /
AddEditProductView>>/ A
{>>B C
DataContext>>D O
=>>P Q
	viewModel>>R [
}>>\ ]
;>>] ^
var?? 
dialogResult?? 
=?? 
addEditProductView?? 1
.??1 2

ShowDialog??2 <
(??< =
)??= >
;??> ?
if@@ 
(@@ 
dialogResult@@ 
==@@ 
true@@  $
)@@$ %
{AA 
LoadProductsBB 
(BB 
)BB 
;BB 
}CC 
}DD 	
privateFF 
voidFF 
DeleteProductFF "
(FF" #
ProductFF# *
?FF* +
productFF, 3
)FF3 4
{GG 	
ifHH 
(HH 
productHH 
==HH 
nullHH 
)HH  
returnHH! '
;HH' (
ifII 
(II 

MessageBoxII 
.II 
ShowII 
(II  
$"II  "
$strII" B
{IIB C
productIIC J
.IIJ K
NameIIK O
}IIO P
$strIIP Q
"IIQ R
,IIR S
$strIIT d
,IId e
MessageBoxButtonJJ $
.JJ$ %
YesNoJJ% *
,JJ* +
MessageBoxImageJJ, ;
.JJ; <
WarningJJ< C
)JJC D
!=JJE G
MessageBoxResultJJH X
.JJX Y
YesJJY \
)JJ\ ]
returnJJ^ d
;JJd e
usingKK 
(KK 
varKK 
contextKK 
=KK  
newKK! $
MiniMartDbContextKK% 6
(KK6 7
)KK7 8
)KK8 9
{LL 
contextMM 
.MM 
ProductsMM  
.MM  !
RemoveMM! '
(MM' (
productMM( /
)MM/ 0
;MM0 1
contextNN 
.NN 
SaveChangesNN #
(NN# $
)NN$ %
;NN% &
LoadProductsOO 
(OO 
)OO 
;OO 
}PP 
}QQ 	
}RR 
}SS ≥?
DD:\PRNProject\MiniMartManager\ViewModels\OrderProcessingViewModel.cs
	namespace 	
MiniMartManager
 
. 

ViewModels $
{ 
public 

partial 
class $
OrderProcessingViewModel 1
:2 3
ObservableObject4 D
{ 
private 
readonly 
MiniMartDbContext *
_context+ 3
;3 4
private 
readonly 
INavigationService +
_navigationService, >
;> ?
[ 	
ObservableProperty	 
] 
private  
ObservableCollection $
<$ %
Order% *
>* +
_pendingOrders, :
;: ;
[ 	
ObservableProperty	 
] 
private 
Order 
? 
_selectedOrder %
;% &
public $
OrderProcessingViewModel '
(' (
MiniMartDbContext( 9
context: A
,A B
INavigationServiceC U
navigationServiceV g
)g h
{ 	
_context 
= 
context 
; 
_navigationService 
=  
navigationService! 2
;2 3$
LoadPendingOrdersCommand $
=% &
new' *
AsyncRelayCommand+ <
(< =
LoadPendingOrders= N
)N O
;O P
ProcessOrderCommand 
=  !
new" %
AsyncRelayCommand& 7
(7 8 
ProcessSelectedOrder8 L
)L M
;M N 
CompleteOrderCommand    
=  ! "
new  # &
AsyncRelayCommand  ' 8
(  8 9!
CompleteSelectedOrder  9 N
)  N O
;  O P
CancelOrderCommand!! 
=!!  
new!!! $
AsyncRelayCommand!!% 6
(!!6 7
CancelSelectedOrder!!7 J
)!!J K
;!!K L
BackCommand"" 
="" 
new"" 
RelayCommand"" *
(""* +
(""+ ,
)"", -
=>"". 0
_navigationService""1 C
.""C D

NavigateTo""D N
<""N O
AdminDashboardView""O a
,""a b#
AdminDashboardViewModel""c z
>""z {
(""{ |
)""| }
)""} ~
;""~ 
_## 
=## 
LoadPendingOrders## !
(##! "
)##" #
;### $
}$$ 	
public&& 
IAsyncRelayCommand&& !$
LoadPendingOrdersCommand&&" :
{&&; <
get&&= @
;&&@ A
}&&B C
public'' 
IAsyncRelayCommand'' !
ProcessOrderCommand''" 5
{''6 7
get''8 ;
;''; <
}''= >
public(( 
IAsyncRelayCommand(( ! 
CompleteOrderCommand((" 6
{((7 8
get((9 <
;((< =
}((> ?
public)) 
IAsyncRelayCommand)) !
CancelOrderCommand))" 4
{))5 6
get))7 :
;)): ;
}))< =
public** 
IRelayCommand** 
BackCommand** (
{**) *
get**+ .
;**. /
}**0 1
private,, 
async,, 
Task,, 
LoadPendingOrders,, ,
(,,, -
),,- .
{-- 	
var.. 
orders.. 
=.. 
await.. 
_context.. '
...' (
Orders..( .
.// 
Include// 
(// 
o// 
=>// 
o// 
.//  
User//  $
)//$ %
.00 
Include00 
(00 
o00 
=>00 
o00 
.00  
OrderDetails00  ,
)00, -
.11 
ThenInclude11  
(11  !
od11! #
=>11$ &
od11' )
.11) *
Product11* 1
)111 2
.22 
Where22 
(22 
o22 
=>22 
o22 
.22 
Status22 $
==22% '
OrderStatus22( 3
.223 4
Pending224 ;
||22< >
o22? @
.22@ A
Status22A G
==22H J
OrderStatus22K V
.22V W

Processing22W a
)22a b
.33 
ToListAsync33 
(33 
)33 
;33 
PendingOrders44 
=44 
new44  
ObservableCollection44  4
<444 5
Order445 :
>44: ;
(44; <
orders44< B
)44B C
;44C D
}55 	
private77 
async77 
Task77  
ProcessSelectedOrder77 /
(77/ 0
)770 1
{88 	
if99 
(99 
SelectedOrder99 
!=99  
null99! %
&&99& (
SelectedOrder99) 6
.996 7
Status997 =
==99> @
OrderStatus99A L
.99L M
Pending99M T
)99T U
{:: 
SelectedOrder;; 
.;; 
Status;; $
=;;% &
OrderStatus;;' 2
.;;2 3

Processing;;3 =
;;;= >
await<< 
_context<< 
.<< 
SaveChangesAsync<< /
(<</ 0
)<<0 1
;<<1 2
await== 
LoadPendingOrders== '
(==' (
)==( )
;==) *
}>> 
}?? 	
privateAA 
asyncAA 
TaskAA !
CompleteSelectedOrderAA 0
(AA0 1
)AA1 2
{BB 	
ifCC 
(CC 
SelectedOrderCC 
!=CC  
nullCC! %
&&CC& (
SelectedOrderCC) 6
.CC6 7
StatusCC7 =
==CC> @
OrderStatusCCA L
.CCL M

ProcessingCCM W
)CCW X
{DD 
SelectedOrderEE 
.EE 
StatusEE $
=EE% &
OrderStatusEE' 2
.EE2 3
	CompletedEE3 <
;EE< =
awaitFF 
_contextFF 
.FF 
SaveChangesAsyncFF /
(FF/ 0
)FF0 1
;FF1 2
awaitGG 
LoadPendingOrdersGG '
(GG' (
)GG( )
;GG) *
}HH 
}II 	
privateKK 
asyncKK 
TaskKK 
CancelSelectedOrderKK .
(KK. /
)KK/ 0
{LL 	
ifMM 
(MM 
SelectedOrderMM 
!=MM  
nullMM! %
&&MM& (
(MM) *
SelectedOrderMM* 7
.MM7 8
StatusMM8 >
==MM? A
OrderStatusMMB M
.MMM N
PendingMMN U
||MMV X
SelectedOrderMMY f
.MMf g
StatusMMg m
==MMn p
OrderStatusMMq |
.MM| }

Processing	MM} á
)
MMá à
)
MMà â
{NN 
SelectedOrderOO 
.OO 
StatusOO $
=OO% &
OrderStatusOO' 2
.OO2 3
	CancelledOO3 <
;OO< =
foreachRR 
(RR 
varRR 
detailRR #
inRR$ &
SelectedOrderRR' 4
.RR4 5
OrderDetailsRR5 A
)RRA B
{SS 
varTT 
productTT 
=TT  !
awaitTT" '
_contextTT( 0
.TT0 1
ProductsTT1 9
.TT9 :
	FindAsyncTT: C
(TTC D
detailTTD J
.TTJ K
	ProductIdTTK T
)TTT U
;TTU V
ifUU 
(UU 
productUU 
!=UU  "
nullUU# '
)UU' (
{VV 
productWW 
.WW  
StockQuantityWW  -
+=WW. 0
detailWW1 7
.WW7 8
QuantityWW8 @
;WW@ A
}XX 
}YY 
await[[ 
_context[[ 
.[[ 
SaveChangesAsync[[ /
([[/ 0
)[[0 1
;[[1 2
await\\ 
LoadPendingOrders\\ '
(\\' (
)\\( )
;\\) *
}]] 
}^^ 	
}__ 
}`` ß&
:D:\PRNProject\MiniMartManager\ViewModels\LoginViewModel.cs
	namespace

 	
MiniMartManager


 
.

 

ViewModels

 $
;

$ %
public 
partial 
class 
LoginViewModel #
:$ %
ObservableObject& 6
{ 
[ 
ObservableProperty 
] 
private 
string 
username 
= 
string $
.$ %
Empty% *
;* +
private 
string 
	_password 
= 
string %
.% &
Empty& +
;+ ,
public 

string 
Password 
{ 
get 
=> 
	_password 
; 
set 
=> 
SetProperty 
( 
ref 
	_password (
,( )
value* /
)/ 0
;0 1
} 
public 

IRelayCommand 
LoginCommand %
{& '
get( +
;+ ,
}- .
public 

IRelayCommand %
NavigateToRegisterCommand 2
{3 4
get5 8
;8 9
}: ;
private 
readonly 
INavigationService '
_navigationService( :
;: ;
public 

LoginViewModel 
( 
INavigationService ,
navigationService- >
)> ?
{ 
_navigationService 
= 
navigationService .
;. /
LoginCommand   
=   
new   
RelayCommand   '
(  ' (
Login  ( -
)  - .
;  . /%
NavigateToRegisterCommand!! !
=!!" #
new!!$ '
RelayCommand!!( 4
(!!4 5
(!!5 6
)!!6 7
=>!!8 :
_navigationService!!; M
.!!M N

NavigateTo!!N X
<!!X Y
RegisterView!!Y e
,!!e f
RegisterViewModel!!g x
>!!x y
(!!y z
)!!z {
)!!{ |
;!!| }
}"" 
private$$ 
void$$ 
Login$$ 
($$ 
)$$ 
{%% 
using&& 
(&& 
var&& 
context&& 
=&& 
new&&  
MiniMartDbContext&&! 2
(&&2 3
)&&3 4
)&&4 5
{'' 	
var(( 
user(( 
=(( 
context(( 
.(( 
Users(( $
.(($ %
FirstOrDefault((% 3
(((3 4
u((4 5
=>((6 8
u((9 :
.((: ;
Username((; C
==((D F
Username((G O
)((O P
;((P Q
if)) 
()) 
user)) 
!=)) 
null)) 
&&)) 
BCrypt))  &
.))& '
Net))' *
.))* +
BCrypt))+ 1
.))1 2
Verify))2 8
())8 9
Password))9 A
,))A B
user))C G
.))G H
HashedPassword))H V
)))V W
)))W X
{** 

MessageBox++ 
.++ 
Show++ 
(++  
$str++  3
,++3 4
$str++5 >
,++> ?
MessageBoxButton++@ P
.++P Q
OK++Q S
,++S T
MessageBoxImage++U d
.++d e
Information++e p
)++p q
;++q r
if,, 
(,, 
user,, 
.,, 
Role,, 
==,,  
$str,,! (
),,( )
{-- 
CurrentUserService.. &
...& '
CurrentUserId..' 4
=..5 6
user..7 ;
...; <
Id..< >
;..> ?
_navigationService// &
.//& '

NavigateTo//' 1
<//1 2
AdminDashboardView//2 D
,//D E#
AdminDashboardViewModel//F ]
>//] ^
(//^ _
)//_ `
;//` a
}00 
else11 
{22 
CurrentUserService33 &
.33& '
CurrentUserId33' 4
=335 6
user337 ;
.33; <
Id33< >
;33> ?
_navigationService44 &
.44& '

NavigateTo44' 1
<441 2
UserDashboardView442 C
,44C D"
UserDashboardViewModel44E [
>44[ \
(44\ ]
)44] ^
;44^ _
}55 
}66 
else77 
{88 

MessageBox99 
.99 
Show99 
(99  
$str99  ?
,99? @
$str99A H
,99H I
MessageBoxButton99J Z
.99Z [
OK99[ ]
,99] ^
MessageBoxImage99_ n
.99n o
Error99o t
)99t u
;99u v
}:: 
};; 	
}<< 
}== ¡S
GD:\PRNProject\MiniMartManager\ViewModels\CategoryManagementViewModel.cs
	namespace 	
MiniMartManager
 
. 

ViewModels $
{ 
public 

partial 
class '
CategoryManagementViewModel 4
:5 6
ObservableObject7 G
{ 
public  
ObservableCollection #
<# $
Category$ ,
>, -

Categories. 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
=G H
newI L 
ObservableCollectionM a
<a b
Categoryb j
>j k
(k l
)l m
;m n
[ 	
ObservableProperty	 
] 
private 
string 
newCategoryName &
;& '
public 
IRelayCommand 
AddCategoryCommand /
{0 1
get2 5
;5 6
}7 8
public 
IRelayCommand 
EditCategoryCommand 0
{1 2
get3 6
;6 7
}8 9
public 
IRelayCommand !
DeleteCategoryCommand 2
{3 4
get5 8
;8 9
}: ;
public 
IRelayCommand 
BackCommand (
{) *
get+ .
;. /
}0 1
private 
readonly 
INavigationService +
_navigationService, >
;> ?
public '
CategoryManagementViewModel *
(* +
INavigationService+ =
navigationService> O
)O P
{ 	
_navigationService 
=  
navigationService! 2
;2 3
LoadCategories 
( 
) 
; 
AddCategoryCommand   
=    
new  ! $
RelayCommand  % 1
(  1 2
AddCategory  2 =
)  = >
;  > ?
EditCategoryCommand!! 
=!!  !
new!!" %
RelayCommand!!& 2
<!!2 3
Category!!3 ;
>!!; <
(!!< =
EditCategory!!= I
)!!I J
;!!J K!
DeleteCategoryCommand"" !
=""" #
new""$ '
RelayCommand""( 4
<""4 5
Category""5 =
>""= >
(""> ?
DeleteCategory""? M
)""M N
;""N O
BackCommand## 
=## 
new## 
RelayCommand## *
(##* +
(##+ ,
)##, -
=>##. 0
_navigationService##1 C
.##C D

NavigateTo##D N
<##N O
AdminDashboardView##O a
,##a b#
AdminDashboardViewModel##c z
>##z {
(##{ |
)##| }
)##} ~
;##~ 
}$$ 	
private&& 
void&& 
LoadCategories&& #
(&&# $
)&&$ %
{'' 	
using(( 
((( 
var(( 
context(( 
=((  
new((! $
MiniMartDbContext((% 6
(((6 7
)((7 8
)((8 9
{)) 

Categories** 
.** 
Clear**  
(**  !
)**! "
;**" #
foreach++ 
(++ 
var++ 
category++ %
in++& (
context++) 0
.++0 1

Categories++1 ;
.++; <
ToList++< B
(++B C
)++C D
)++D E
{,, 

Categories-- 
.-- 
Add-- "
(--" #
category--# +
)--+ ,
;--, -
}.. 
}// 
}00 	
private22 
void22 
AddCategory22  
(22  !
)22! "
{33 	
if44 
(44 
string44 
.44 
IsNullOrWhiteSpace44 )
(44) *
NewCategoryName44* 9
)449 :
)44: ;
{55 

MessageBox66 
.66 
Show66 
(66  
$str66  @
,66@ A
$str66B I
,66I J
MessageBoxButton66K [
.66[ \
OK66\ ^
,66^ _
MessageBoxImage66` o
.66o p
Error66p u
)66u v
;66v w
return77 
;77 
}88 
using:: 
(:: 
var:: 
context:: 
=::  
new::! $
MiniMartDbContext::% 6
(::6 7
)::7 8
)::8 9
{;; 
if<< 
(<< 
context<< 
.<< 

Categories<< &
.<<& '
Any<<' *
(<<* +
c<<+ ,
=><<- /
c<<0 1
.<<1 2
Name<<2 6
==<<7 9
NewCategoryName<<: I
)<<I J
)<<J K
{== 

MessageBox>> 
.>> 
Show>> #
(>># $
$str>>$ M
,>>M N
$str>>O V
,>>V W
MessageBoxButton>>X h
.>>h i
OK>>i k
,>>k l
MessageBoxImage>>m |
.>>| }
Error	>>} Ç
)
>>Ç É
;
>>É Ñ
return?? 
;?? 
}@@ 
varBB 
newCategoryBB 
=BB  !
newBB" %
CategoryBB& .
{BB/ 0
NameBB1 5
=BB6 7
NewCategoryNameBB8 G
}BBH I
;BBI J
contextCC 
.CC 

CategoriesCC "
.CC" #
AddCC# &
(CC& '
newCategoryCC' 2
)CC2 3
;CC3 4
contextDD 
.DD 
SaveChangesDD #
(DD# $
)DD$ %
;DD% &

MessageBoxEE 
.EE 
ShowEE 
(EE  
$strEE  >
,EE> ?
$strEE@ I
,EEI J
MessageBoxButtonEEK [
.EE[ \
OKEE\ ^
,EE^ _
MessageBoxImageEE` o
.EEo p
InformationEEp {
)EE{ |
;EE| }
NewCategoryNameFF 
=FF  !
stringFF" (
.FF( )
EmptyFF) .
;FF. /
LoadCategoriesGG 
(GG 
)GG  
;GG  !
}HH 
}II 	
privateKK 
voidKK 
EditCategoryKK !
(KK! "
CategoryKK" *
categoryKK+ 3
)KK3 4
{LL 	
stringMM 
newNameMM 
=MM 
	MicrosoftMM &
.MM& '
VisualBasicMM' 2
.MM2 3
InteractionMM3 >
.MM> ?
InputBoxMM? G
(MMG H
$strMMH b
,MMb c
$strMMd s
,MMs t
categoryMMu }
.MM} ~
Name	MM~ Ç
)
MMÇ É
;
MMÉ Ñ
ifNN 
(NN 
!NN 
stringNN 
.NN 
IsNullOrWhiteSpaceNN *
(NN* +
newNameNN+ 2
)NN2 3
&&NN4 6
newNameNN7 >
!=NN? A
categoryNNB J
.NNJ K
NameNNK O
)NNO P
{OO 
usingPP 
(PP 
varPP 
contextPP "
=PP# $
newPP% (
MiniMartDbContextPP) :
(PP: ;
)PP; <
)PP< =
{QQ 
ifRR 
(RR 
contextRR 
.RR  

CategoriesRR  *
.RR* +
AnyRR+ .
(RR. /
cRR/ 0
=>RR1 3
cRR4 5
.RR5 6
NameRR6 :
==RR; =
newNameRR> E
&&RRF H
cRRI J
.RRJ K
IdRRK M
!=RRN P
categoryRRQ Y
.RRY Z
IdRRZ \
)RR\ ]
)RR] ^
{SS 

MessageBoxTT "
.TT" #
ShowTT# '
(TT' (
$strTT( Q
,TTQ R
$strTTS Z
,TTZ [
MessageBoxButtonTT\ l
.TTl m
OKTTm o
,TTo p
MessageBoxImage	TTq Ä
.
TTÄ Å
Error
TTÅ Ü
)
TTÜ á
;
TTá à
returnUU 
;UU 
}VV 
categoryWW 
.WW 
NameWW !
=WW" #
newNameWW$ +
;WW+ ,
contextXX 
.XX 

CategoriesXX &
.XX& '
UpdateXX' -
(XX- .
categoryXX. 6
)XX6 7
;XX7 8
contextYY 
.YY 
SaveChangesYY '
(YY' (
)YY( )
;YY) *

MessageBoxZZ 
.ZZ 
ShowZZ #
(ZZ# $
$strZZ$ D
,ZZD E
$strZZF O
,ZZO P
MessageBoxButtonZZQ a
.ZZa b
OKZZb d
,ZZd e
MessageBoxImageZZf u
.ZZu v
Information	ZZv Å
)
ZZÅ Ç
;
ZZÇ É
LoadCategories[[ "
([[" #
)[[# $
;[[$ %
}\\ 
}]] 
}^^ 	
private`` 
void`` 
DeleteCategory`` #
(``# $
Category``$ ,
?``, -
category``. 6
)``6 7
{aa 	
ifbb 
(bb 
categorybb 
==bb 
nullbb  
)bb  !
returnbb" (
;bb( )
ifcc 
(cc 

MessageBoxcc 
.cc 
Showcc 
(cc  
$"cc  "
$strcc" L
{ccL M
categoryccM U
.ccU V
NameccV Z
}ccZ [
$str	cc[ é
"
ccé è
,
ccè ê
$str
ccë °
,
cc° ¢
MessageBoxButton
cc£ ≥
.
cc≥ ¥
YesNo
cc¥ π
,
ccπ ∫
MessageBoxImage
ccª  
.
cc  À
Warning
ccÀ “
)
cc“ ”
==
cc‘ ÷
MessageBoxResult
cc◊ Á
.
ccÁ Ë
Yes
ccË Î
)
ccÎ Ï
{dd 
usingee 
(ee 
varee 
contextee "
=ee# $
newee% (
MiniMartDbContextee) :
(ee: ;
)ee; <
)ee< =
{ff 
contextii 
.ii 

Categoriesii &
.ii& '
Removeii' -
(ii- .
categoryii. 6
)ii6 7
;ii7 8
contextjj 
.jj 
SaveChangesjj '
(jj' (
)jj( )
;jj) *

MessageBoxkk 
.kk 
Showkk #
(kk# $
$strkk$ D
,kkD E
$strkkF O
,kkO P
MessageBoxButtonkkQ a
.kka b
OKkkb d
,kkd e
MessageBoxImagekkf u
.kku v
Information	kkv Å
)
kkÅ Ç
;
kkÇ É
LoadCategoriesll "
(ll" #
)ll# $
;ll$ %
}mm 
}nn 
}oo 	
}pp 
}qq ì 
CD:\PRNProject\MiniMartManager\ViewModels\AdminDashboardViewModel.cs
	namespace 	
MiniMartManager
 
. 

ViewModels $
{ 
public 

partial 
class #
AdminDashboardViewModel 0
:1 2
ObservableObject3 C
{		 
private

 
readonly

 
INavigationService

 +
_navigationService

, >
;

> ?
public 
IRelayCommand .
"NavigateToProductManagementCommand ?
{@ A
getB E
;E F
}G H
public 
IRelayCommand /
#NavigateToCategoryManagementCommand @
{A B
getC F
;F G
}H I
public 
IRelayCommand +
NavigateToUserManagementCommand <
{= >
get? B
;B C
}D E
public 
IRelayCommand "
NavigateToSalesCommand 3
{4 5
get6 9
;9 :
}; <
public 
IRelayCommand ,
 NavigateToOrderProcessingCommand =
{> ?
get@ C
;C D
}E F
public 
IRelayCommand 
LogoutCommand *
{+ ,
get- 0
;0 1
}2 3
public #
AdminDashboardViewModel &
(& '
INavigationService' 9
navigationService: K
)K L
{ 	
_navigationService 
=  
navigationService! 2
;2 3.
"NavigateToProductManagementCommand .
=/ 0
new1 4
RelayCommand5 A
(A B
(B C
)C D
=>E G
_navigationServiceH Z
.Z [

NavigateTo[ e
<e f!
ProductManagementViewf {
,{ |'
ProductManagementViewModel	} ó
>
ó ò
(
ò ô
)
ô ö
)
ö õ
;
õ ú/
#NavigateToCategoryManagementCommand /
=0 1
new2 5
RelayCommand6 B
(B C
(C D
)D E
=>F H
_navigationServiceI [
.[ \

NavigateTo\ f
<f g"
CategoryManagementViewg }
,} ~(
CategoryManagementViewModel	 ö
>
ö õ
(
õ ú
)
ú ù
)
ù û
;
û ü+
NavigateToUserManagementCommand +
=, -
new. 1
RelayCommand2 >
(> ?
(? @
)@ A
=>B D
_navigationServiceE W
.W X

NavigateToX b
<b c
UserManagementViewc u
,u v$
UserManagementViewModel	w é
>
é è
(
è ê
)
ê ë
)
ë í
;
í ì"
NavigateToSalesCommand "
=# $
new% (
RelayCommand) 5
(5 6
(6 7
)7 8
=>9 ;
_navigationService< N
.N O

NavigateToO Y
<Y Z
	SalesViewZ c
,c d
SalesViewModele s
>s t
(t u
)u v
)v w
;w x,
 NavigateToOrderProcessingCommand ,
=- .
new/ 2
RelayCommand3 ?
(? @
(@ A
)A B
=>C E
_navigationServiceF X
.X Y

NavigateToY c
<c d
OrderProcessingViewd w
,w x%
OrderProcessingViewModel	y ë
>
ë í
(
í ì
)
ì î
)
î ï
;
ï ñ
LogoutCommand 
= 
new 
RelayCommand  ,
(, -
(- .
). /
=>0 2
_navigationService3 E
.E F

NavigateToF P
<P Q
	LoginViewQ Z
,Z [
LoginViewModel\ j
>j k
(k l
)l m
)m n
;n o
} 	
} 
} ÿP
CD:\PRNProject\MiniMartManager\ViewModels\AddEditProductViewModel.cs
	namespace		 	
MiniMartManager		
 
.		 

ViewModels		 $
{

 
public 

partial 
class #
AddEditProductViewModel 0
:1 2
ObservableObject3 C
{ 
[ 	
ObservableProperty	 
] 
private 
Product 
product 
=  !
new" %
Product& -
(- .
). /
;/ 0
[ 	
ObservableProperty	 
] 
private  
ObservableCollection $
<$ %
Category% -
>- .

categories/ 9
=: ;
new< ? 
ObservableCollection@ T
<T U
CategoryU ]
>] ^
(^ _
)_ `
;` a
[ 	
ObservableProperty	 
] 
private 
string 
windowTitle "
=# $
string% +
.+ ,
Empty, 1
;1 2
[ 	
ObservableProperty	 
] 
private 
bool 
? 
_dialogResult #
;# $
public 
IRelayCommand 
SaveCommand (
{) *
get+ .
;. /
}0 1
public 
IRelayCommand 
CancelCommand *
{+ ,
get- 0
;0 1
}2 3
public #
AddEditProductViewModel &
(& '
Product' .
?. /
productToEdit0 =
=> ?
null@ D
)D E
{ 	
Product 
= 
productToEdit #
??$ &
new' *
Product+ 2
(2 3
)3 4
;4 5
LoadCategories 
( 
) 
; 
if!! 
(!! 
productToEdit!! 
!=!!  
null!!! %
)!!% &
{"" 
WindowTitle## 
=## 
$str## ,
;##, -
}$$ 
else%% 
{&& 
WindowTitle'' 
='' 
$str'' /
;''/ 0
}(( 
SaveCommand** 
=** 
new** 
RelayCommand** *
(*** +
Save**+ /
)**/ 0
;**0 1
CancelCommand++ 
=++ 
new++ 
RelayCommand++  ,
(++, -
Cancel++- 3
)++3 4
;++4 5
},, 	
private.. 
void.. 
LoadCategories.. #
(..# $
)..$ %
{// 	
using00 
(00 
var00 
context00 
=00  
new00! $
MiniMartDbContext00% 6
(006 7
)007 8
)008 9
{11 

Categories22 
=22 
new22   
ObservableCollection22! 5
<225 6
Category226 >
>22> ?
(22? @
context22@ G
.22G H

Categories22H R
.22R S
ToList22S Y
(22Y Z
)22Z [
)22[ \
;22\ ]
}33 
}44 	
private66 
void66 
Save66 
(66 
)66 
{77 	
if88 
(88 
Product88 
.88 
StockQuantity88 %
<88& '
$num88( )
)88) *
{99 

MessageBox:: 
.:: 
Show:: 
(::  
$str::  D
,::D E
$str::F X
,::X Y
MessageBoxButton::Z j
.::j k
OK::k m
,::m n
MessageBoxImage::o ~
.::~ 
Error	:: Ñ
)
::Ñ Ö
;
::Ö Ü
return;; 
;;; 
}<< 
using>> 
(>> 
var>> 
context>> 
=>>  
new>>! $
MiniMartDbContext>>% 6
(>>6 7
)>>7 8
)>>8 9
{?? 
if@@ 
(@@ 
Product@@ 
.@@ 
Id@@ 
==@@ !
$num@@" #
)@@# $
{AA 
ifBB 
(BB 
contextBB 
.BB  
ProductsBB  (
.BB( )
AnyBB) ,
(BB, -
pBB- .
=>BB/ 1
pBB2 3
.BB3 4
NameBB4 8
==BB9 ;
ProductBB< C
.BBC D
NameBBD H
)BBH I
)BBI J
{CC 

MessageBoxDD "
.DD" #
ShowDD# '
(DD' (
$strDD( P
,DDP Q
$strDDR Y
,DDY Z
MessageBoxButtonDD[ k
.DDk l
OKDDl n
,DDn o
MessageBoxImageDDp 
.	DD Ä
Error
DDÄ Ö
)
DDÖ Ü
;
DDÜ á
}EE 
ifGG 
(GG 
ProductGG 
.GG  

CategoryIdGG  *
==GG+ -
$numGG. /
)GG/ 0
{HH 

MessageBoxII "
.II" #
ShowII# '
(II' (
$strII( C
,IIC D
$strIIE L
,IIL M
MessageBoxButtonIIN ^
.II^ _
OKII_ a
,IIa b
MessageBoxImageIIc r
.IIr s
ErrorIIs x
)IIx y
;IIy z
returnJJ 
;JJ 
}KK 
ifMM 
(MM 
ProductMM 
.MM  
PriceMM  %
<=MM& (
$numMM) *
)MM* +
{NN 

MessageBoxOO "
.OO" #
ShowOO# '
(OO' (
$strOO( C
,OOC D
$strOOE L
,OOL M
MessageBoxButtonOON ^
.OO^ _
OKOO_ a
,OOa b
MessageBoxImageOOc r
.OOr s
ErrorOOs x
)OOx y
;OOy z
returnPP 
;PP 
}QQ 
ifSS 
(SS 
ProductSS 
.SS  
StockQuantitySS  -
<=SS. 0
$numSS1 2
)SS2 3
{TT 

MessageBoxUU "
.UU" #
ShowUU# '
(UU' (
$strUU( L
,UUL M
$strUUN U
,UUU V
MessageBoxButtonUUW g
.UUg h
OKUUh j
,UUj k
MessageBoxImageUUl {
.UU{ |
Error	UU| Å
)
UUÅ Ç
;
UUÇ É
returnVV 
;VV 
}WW 
ifYY 
(YY 
ProductYY 
.YY  
NameYY  $
.YY$ %
TrimYY% )
(YY) *
)YY* +
.YY+ ,
LengthYY, 2
==YY3 5
$numYY6 7
)YY7 8
{ZZ 

MessageBox[[ "
.[[" #
Show[[# '
([[' (
$str[[( G
,[[G H
$str[[I P
,[[P Q
MessageBoxButton[[R b
.[[b c
OK[[c e
,[[e f
MessageBoxImage[[g v
.[[v w
Error[[w |
)[[| }
;[[} ~
return\\ 
;\\ 
}]] 
context^^ 
.^^ 
Products^^ $
.^^$ %
Add^^% (
(^^( )
Product^^) 0
)^^0 1
;^^1 2
}__ 
else`` 
{aa 
ifbb 
(bb 
Productbb 
.bb  

CategoryIdbb  *
==bb+ -
$numbb. /
)bb/ 0
{cc 

MessageBoxdd "
.dd" #
Showdd# '
(dd' (
$strdd( C
,ddC D
$strddE L
,ddL M
MessageBoxButtonddN ^
.dd^ _
OKdd_ a
,dda b
MessageBoxImageddc r
.ddr s
Errordds x
)ddx y
;ddy z
returnee 
;ee 
}ff 
ifhh 
(hh 
Producthh 
.hh  
Pricehh  %
<=hh& (
$numhh) *
)hh* +
{ii 

MessageBoxjj "
.jj" #
Showjj# '
(jj' (
$strjj( C
,jjC D
$strjjE L
,jjL M
MessageBoxButtonjjN ^
.jj^ _
OKjj_ a
,jja b
MessageBoxImagejjc r
.jjr s
Errorjjs x
)jjx y
;jjy z
returnkk 
;kk 
}ll 
ifnn 
(nn 
Productnn 
.nn  
StockQuantitynn  -
<=nn. 0
$numnn1 2
)nn2 3
{oo 

MessageBoxpp "
.pp" #
Showpp# '
(pp' (
$strpp( L
,ppL M
$strppN U
,ppU V
MessageBoxButtonppW g
.ppg h
OKpph j
,ppj k
MessageBoxImageppl {
.pp{ |
Error	pp| Å
)
ppÅ Ç
;
ppÇ É
returnqq 
;qq 
}rr 
iftt 
(tt 
Producttt 
.tt  
Namett  $
.tt$ %
Trimtt% )
(tt) *
)tt* +
.tt+ ,
Lengthtt, 2
==tt3 5
$numtt6 7
)tt7 8
{uu 

MessageBoxvv "
.vv" #
Showvv# '
(vv' (
$strvv( G
,vvG H
$strvvI P
,vvP Q
MessageBoxButtonvvR b
.vvb c
OKvvc e
,vve f
MessageBoxImagevvg v
.vvv w
Errorvvw |
)vv| }
;vv} ~
returnww 
;ww 
}xx 
contextyy 
.yy 
Productsyy $
.yy$ %
Updateyy% +
(yy+ ,
Productyy, 3
)yy3 4
;yy4 5
}zz 
context{{ 
.{{ 
SaveChanges{{ #
({{# $
){{$ %
;{{% &

MessageBox|| 
.|| 
Show|| 
(||  
$str||  =
,||= >
$str||? H
,||H I
MessageBoxButton||J Z
.||Z [
OK||[ ]
,||] ^
MessageBoxImage||_ n
.||n o
Information||o z
)||z {
;||{ |
DialogResult}} 
=}} 
true}} #
;}}# $
}~~ 
} 	
private
ÅÅ 
void
ÅÅ 
Cancel
ÅÅ 
(
ÅÅ 
)
ÅÅ 
{
ÇÇ 	
DialogResult
ÉÉ 
=
ÉÉ 
false
ÉÉ  
;
ÉÉ  !
}
ÑÑ 	
}
ÖÖ 
}ÜÜ “
3D:\PRNProject\MiniMartManager\Models\OrderDetail.cs
	namespace 	
MiniMartManager
 
. 
Models  
{ 
public 

class 
OrderDetail 
: 
	BaseModel (
{ 
public 
int 
OrderId 
{ 
get  
;  !
set" %
;% &
}' (
public		 
Order		 
Order		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
=		) *
null		+ /
!		/ 0
;		0 1
public

 
int

 
	ProductId

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
Product 
Product 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
null/ 3
!3 4
;4 5
public 
int 
Quantity 
{ 
get !
;! "
set# &
;& '
}( )
public 
decimal 
Price 
{ 
get "
;" #
set$ '
;' (
}) *
public 
decimal 
Total 
=> 
Quantity  (
*) *
Price+ 0
;0 1
} 
} •
;D:\PRNProject\MiniMartManager\Services\NavigationService.cs
	namespace 	
MiniMartManager
 
. 
Services "
{ 
public 

	interface 
INavigationService '
{		 
void

 

NavigateTo

 
<

 
TView

 
,

 

TViewModel

 )
>

) *
(

* +
)

+ ,
where 
TView 
: 
UserControl %
where 

TViewModel 
: 
class $
;$ %
void 
SetContentControl 
( 
ContentControl -
contentControl. <
)< =
;= >
} 
public 

class 
NavigationService "
:# $
INavigationService% 7
{ 
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
private 
ContentControl 
? 
_contentControl  /
;/ 0
public 
NavigationService  
(  !
IServiceProvider! 1
serviceProvider2 A
)A B
{ 	
_serviceProvider 
= 
serviceProvider .
;. /
} 	
public 
void 
SetContentControl %
(% &
ContentControl& 4
contentControl5 C
)C D
{ 	
_contentControl 
= 
contentControl ,
;, -
} 	
public 
void 

NavigateTo 
< 
TView $
,$ %

TViewModel& 0
>0 1
(1 2
)2 3
where   
TView   
:   
UserControl   %
where!! 

TViewModel!! 
:!! 
class!! $
{"" 	
if## 
(## 
_contentControl## 
==##  "
null### '
)##' (
{$$ 
throw%% 
new%% %
InvalidOperationException%% 3
(%%3 4
$str%%4 l
)%%l m
;%%m n
}&& 
var(( 
view(( 
=(( 
_serviceProvider(( '
.((' (
GetRequiredService((( :
<((: ;
TView((; @
>((@ A
(((A B
)((B C
;((C D
var)) 
	viewModel)) 
=)) 
_serviceProvider)) ,
.)), -
GetRequiredService))- ?
<))? @

TViewModel))@ J
>))J K
())K L
)))L M
;))M N
view** 
.** 
DataContext** 
=** 
	viewModel** (
;**( )
_contentControl++ 
.++ 
Content++ #
=++$ %
view++& *
;++* +
},, 	
}-- 
}.. Ï
,D:\PRNProject\MiniMartManager\Models\User.cs
	namespace 	
MiniMartManager
 
. 
Models  
{ 
public 

class 
User 
: 
	BaseModel !
{ 
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
string/ 5
.5 6
Empty6 ;
;; <
public 
string 
HashedPassword $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
string5 ;
.; <
Empty< A
;A B
public		 
string		 
Role		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
=		) *
string		+ 1
.		1 2
Empty		2 7
;		7 8
}

 
} ˚

/D:\PRNProject\MiniMartManager\Models\Product.cs
	namespace 	
MiniMartManager
 
. 
Models  
{ 
public 

class 
Product 
: 
	BaseModel $
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
=) *
string+ 1
.1 2
Empty2 7
;7 8
public 
string 
Barcode 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
string. 4
.4 5
Empty5 :
;: ;
public		 
decimal		 
Price		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public

 
int

 
StockQuantity

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
public 
int 

CategoryId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
Category 
? 
Category !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ⁄
<D:\PRNProject\MiniMartManager\Services\CurrentUserService.cs
	namespace 	
MiniMartManager
 
. 
Services "
{ 
public 

static 
class 
CurrentUserService *
{ 
public 
static 
int 
CurrentUserId '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} ù
-D:\PRNProject\MiniMartManager\Models\Order.cs
	namespace 	
MiniMartManager
 
. 
Models  
{ 
public 

class 
Order 
: 
	BaseModel "
{		 
public

 
DateTime

 
	OrderDate

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
public 
int 
UserId 
{ 
get 
;  
set! $
;$ %
}& '
public 
User 
? 
User 
{ 
get 
;  
set! $
;$ %
}& '
public 
decimal 
TotalAmount "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
ICollection 
< 
OrderDetail &
>& '
OrderDetails( 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
=C D
newE H 
ObservableCollectionI ]
<] ^
OrderDetail^ i
>i j
(j k
)k l
;l m
public 
OrderStatus 
Status !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
public 

enum 
OrderStatus 
{ 
Pending 
, 

Processing 
, 
	Completed 
, 
	Cancelled 
} 
} Ù
0D:\PRNProject\MiniMartManager\Models\Category.cs
	namespace 	
MiniMartManager
 
. 
Models  
{ 
public 

class 
Category 
: 
	BaseModel %
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
=) *
string+ 1
.1 2
Empty2 7
;7 8
public		 
ICollection		 
<		 
Product		 "
>		" #
Products		$ ,
{		- .
get		/ 2
;		2 3
set		4 7
;		7 8
}		9 :
=		; <
new		= @
List		A E
<		E F
Product		F M
>		M N
(		N O
)		O P
;		P Q
}

 
} Ü
WD:\PRNProject\MiniMartManager\Migrations\20250720160926_RemoveStockColumnFromProduct.cs
	namespace 	
MiniMartManager
 
. 

Migrations $
{ 
public 

partial 
class (
RemoveStockColumnFromProduct 5
:6 7
	Migration8 A
{		 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
} 	
} 
} ©
@D:\PRNProject\MiniMartManager\Migrations\20250720160407_Init4.cs
	namespace 	
MiniMartManager
 
. 

Migrations $
{ 
public 

partial 
class 
Init4 
:  
	Migration! *
{		 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 

DropColumn '
(' (
name 
: 
$str 
, 
table 
: 
$str !
)! "
;" #
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder 
. 
	AddColumn &
<& '
int' *
>* +
(+ ,
name 
: 
$str 
, 
table 
: 
$str !
,! "
type 
: 
$str 
, 
nullable 
: 
false 
,  
defaultValue 
: 
$num 
)  
;  !
} 	
} 
} ÿ
@D:\PRNProject\MiniMartManager\Migrations\20250720155421_Init3.cs
	namespace 	
MiniMartManager
 
. 

Migrations $
{ 
public 

partial 
class 
Init3 
:  
	Migration! *
{		 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
} 	
} 
} ≈
_D:\PRNProject\MiniMartManager\Migrations\20250720140008_RenameUnitPriceToPriceInOrderDetails.cs
	namespace 	
MiniMartManager
 
. 

Migrations $
{ 
public 

partial 
class 0
$RenameUnitPriceToPriceInOrderDetails =
:> ?
	Migration@ I
{		 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
RenameColumn )
() *
name 
: 
$str !
,! "
table 
: 
$str %
,% &
newName 
: 
$str  
)  !
;! "
migrationBuilder 
. 
	AddColumn &
<& '
int' *
>* +
(+ ,
name 
: 
$str 
, 
table 
: 
$str 
,  
type 
: 
$str 
, 
nullable 
: 
false 
,  
defaultValue 
: 
$num 
)  
;  !
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder 
. 

DropColumn '
(' (
name 
: 
$str 
, 
table 
: 
$str 
)  
;  !
migrationBuilder!! 
.!! 
RenameColumn!! )
(!!) *
name"" 
:"" 
$str"" 
,"" 
table## 
:## 
$str## %
,##% &
newName$$ 
:$$ 
$str$$ $
)$$$ %
;$$% &
}%% 	
}&& 
}'' îC
ID:\PRNProject\MiniMartManager\Migrations\20250720115351_AllNewFeatures.cs
	namespace 	
MiniMartManager
 
. 

Migrations $
{ 
public		 

partial		 
class		 
AllNewFeatures		 '
:		( )
	Migration		* 3
{

 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
	AddColumn &
<& '
int' *
>* +
(+ ,
name 
: 
$str 
, 
table 
: 
$str !
,! "
type 
: 
$str 
, 
nullable 
: 
false 
,  
defaultValue 
: 
$num 
)  
;  !
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str 
, 
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
int& )
>) *
(* +
type+ /
:/ 0
$str1 6
,6 7
nullable8 @
:@ A
falseB G
)G H
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
	OrderDate 
= 
table  %
.% &
Column& ,
<, -
DateTime- 5
>5 6
(6 7
type7 ;
:; <
$str= H
,H I
nullableJ R
:R S
falseT Y
)Y Z
,Z [
UserId 
= 
table "
." #
Column# )
<) *
int* -
>- .
(. /
type/ 3
:3 4
$str5 :
,: ;
nullable< D
:D E
falseF K
)K L
,L M
TotalAmount 
=  !
table" '
.' (
Column( .
<. /
decimal/ 6
>6 7
(7 8
type8 <
:< =
$str> M
,M N
nullableO W
:W X
falseY ^
)^ _
} 
, 
constraints 
: 
table "
=># %
{   
table!! 
.!! 

PrimaryKey!! $
(!!$ %
$str!!% 0
,!!0 1
x!!2 3
=>!!4 6
x!!7 8
.!!8 9
Id!!9 ;
)!!; <
;!!< =
table"" 
."" 

ForeignKey"" $
(""$ %
name## 
:## 
$str## 6
,##6 7
column$$ 
:$$ 
x$$  !
=>$$" $
x$$% &
.$$& '
UserId$$' -
,$$- .
principalTable%% &
:%%& '
$str%%( /
,%%/ 0
principalColumn&& '
:&&' (
$str&&) -
,&&- .
onDelete''  
:''  !
ReferentialAction''" 3
.''3 4
Cascade''4 ;
)''; <
;''< =
}(( 
)(( 
;(( 
migrationBuilder** 
.** 
CreateTable** (
(**( )
name++ 
:++ 
$str++ $
,++$ %
columns,, 
:,, 
table,, 
=>,, !
new,," %
{-- 
Id.. 
=.. 
table.. 
... 
Column.. %
<..% &
int..& )
>..) *
(..* +
type..+ /
:../ 0
$str..1 6
,..6 7
nullable..8 @
:..@ A
false..B G
)..G H
.// 

Annotation// #
(//# $
$str//$ 8
,//8 9
$str//: @
)//@ A
,//A B
OrderId00 
=00 
table00 #
.00# $
Column00$ *
<00* +
int00+ .
>00. /
(00/ 0
type000 4
:004 5
$str006 ;
,00; <
nullable00= E
:00E F
false00G L
)00L M
,00M N
	ProductId11 
=11 
table11  %
.11% &
Column11& ,
<11, -
int11- 0
>110 1
(111 2
type112 6
:116 7
$str118 =
,11= >
nullable11? G
:11G H
false11I N
)11N O
,11O P
Quantity22 
=22 
table22 $
.22$ %
Column22% +
<22+ ,
int22, /
>22/ 0
(220 1
type221 5
:225 6
$str227 <
,22< =
nullable22> F
:22F G
false22H M
)22M N
,22N O
	UnitPrice33 
=33 
table33  %
.33% &
Column33& ,
<33, -
decimal33- 4
>334 5
(335 6
type336 :
:33: ;
$str33< K
,33K L
nullable33M U
:33U V
false33W \
)33\ ]
}44 
,44 
constraints55 
:55 
table55 "
=>55# %
{66 
table77 
.77 

PrimaryKey77 $
(77$ %
$str77% 6
,776 7
x778 9
=>77: <
x77= >
.77> ?
Id77? A
)77A B
;77B C
table88 
.88 

ForeignKey88 $
(88$ %
name99 
:99 
$str99 >
,99> ?
column:: 
::: 
x::  !
=>::" $
x::% &
.::& '
OrderId::' .
,::. /
principalTable;; &
:;;& '
$str;;( 0
,;;0 1
principalColumn<< '
:<<' (
$str<<) -
,<<- .
onDelete==  
:==  !
ReferentialAction==" 3
.==3 4
Cascade==4 ;
)==; <
;==< =
table>> 
.>> 

ForeignKey>> $
(>>$ %
name?? 
:?? 
$str?? B
,??B C
column@@ 
:@@ 
x@@  !
=>@@" $
x@@% &
.@@& '
	ProductId@@' 0
,@@0 1
principalTableAA &
:AA& '
$strAA( 2
,AA2 3
principalColumnBB '
:BB' (
$strBB) -
,BB- .
onDeleteCC  
:CC  !
ReferentialActionCC" 3
.CC3 4
CascadeCC4 ;
)CC; <
;CC< =
}DD 
)DD 
;DD 
migrationBuilderFF 
.FF 
CreateIndexFF (
(FF( )
nameGG 
:GG 
$strGG /
,GG/ 0
tableHH 
:HH 
$strHH %
,HH% &
columnII 
:II 
$strII !
)II! "
;II" #
migrationBuilderKK 
.KK 
CreateIndexKK (
(KK( )
nameLL 
:LL 
$strLL 1
,LL1 2
tableMM 
:MM 
$strMM %
,MM% &
columnNN 
:NN 
$strNN #
)NN# $
;NN$ %
migrationBuilderPP 
.PP 
CreateIndexPP (
(PP( )
nameQQ 
:QQ 
$strQQ (
,QQ( )
tableRR 
:RR 
$strRR 
,RR  
columnSS 
:SS 
$strSS  
)SS  !
;SS! "
}TT 	
	protectedWW 
overrideWW 
voidWW 
DownWW  $
(WW$ %
MigrationBuilderWW% 5
migrationBuilderWW6 F
)WWF G
{XX 	
migrationBuilderYY 
.YY 
	DropTableYY &
(YY& '
nameZZ 
:ZZ 
$strZZ $
)ZZ$ %
;ZZ% &
migrationBuilder\\ 
.\\ 
	DropTable\\ &
(\\& '
name]] 
:]] 
$str]] 
)]] 
;]]  
migrationBuilder__ 
.__ 

DropColumn__ '
(__' (
name`` 
:`` 
$str`` 
,`` 
tableaa 
:aa 
$straa !
)aa! "
;aa" #
}bb 	
}cc 
}dd »
MD:\PRNProject\MiniMartManager\Migrations\20250720114205_FinalDatabaseSetup.cs
	namespace 	
MiniMartManager
 
. 

Migrations $
{ 
public 

partial 
class 
FinalDatabaseSetup +
:, -
	Migration. 7
{		 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 

InsertData '
(' (
table 
: 
$str 
, 
columns 
: 
new 
[ 
] 
{  
$str! %
,% &
$str' 7
,7 8
$str9 ?
,? @
$strA K
}L M
,M N
values 
: 
new 
object "
[" #
]# $
{% &
$num' (
,( )
$str* h
,h i
$strj q
,q r
$strs z
}{ |
)| }
;} ~
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder 
. 

DeleteData '
(' (
table 
: 
$str 
, 
	keyColumn 
: 
$str 
,  
keyValue 
: 
$num 
) 
; 
} 	
} 
} ÿ
@D:\PRNProject\MiniMartManager\Migrations\20250720112105_Init2.cs
	namespace 	
MiniMartManager
 
. 

Migrations $
{ 
public 

partial 
class 
Init2 
:  
	Migration! *
{		 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
} 	
} 
} ä
YD:\PRNProject\MiniMartManager\Migrations\20250720111959_AddHashedPasswordAndRoleToUser.cs
	namespace 	
MiniMartManager
 
. 

Migrations $
{ 
public 

partial 
class *
AddHashedPasswordAndRoleToUser 7
:8 9
	Migration: C
{		 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
} 	
} 
} ÆD
HD:\PRNProject\MiniMartManager\Migrations\20250720110420_InitialCreate.cs
	namespace 	
MiniMartManager
 
. 

Migrations $
{ 
public

 

partial

 
class

 
InitialCreate

 &
:

' (
	Migration

) 2
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str "
," #
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
int& )
>) *
(* +
type+ /
:/ 0
$str1 6
,6 7
nullable8 @
:@ A
falseB G
)G H
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
Name 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
type0 4
:4 5
$str6 E
,E F
nullableG O
:O P
falseQ V
)V W
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 4
,4 5
x6 7
=>8 :
x; <
.< =
Id= ?
)? @
;@ A
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str 
, 
columns 
: 
table 
=> !
new" %
{ 
Id   
=   
table   
.   
Column   %
<  % &
int  & )
>  ) *
(  * +
type  + /
:  / 0
$str  1 6
,  6 7
nullable  8 @
:  @ A
false  B G
)  G H
.!! 

Annotation!! #
(!!# $
$str!!$ 8
,!!8 9
$str!!: @
)!!@ A
,!!A B
Username"" 
="" 
table"" $
.""$ %
Column""% +
<""+ ,
string"", 2
>""2 3
(""3 4
type""4 8
:""8 9
$str"": I
,""I J
nullable""K S
:""S T
false""U Z
)""Z [
,""[ \
HashedPassword## "
=### $
table##% *
.##* +
Column##+ 1
<##1 2
string##2 8
>##8 9
(##9 :
type##: >
:##> ?
$str##@ O
,##O P
nullable##Q Y
:##Y Z
false##[ `
)##` a
,##a b
Role$$ 
=$$ 
table$$  
.$$  !
Column$$! '
<$$' (
string$$( .
>$$. /
($$/ 0
type$$0 4
:$$4 5
$str$$6 E
,$$E F
nullable$$G O
:$$O P
false$$Q V
)$$V W
}%% 
,%% 
constraints&& 
:&& 
table&& "
=>&&# %
{'' 
table(( 
.(( 

PrimaryKey(( $
((($ %
$str((% /
,((/ 0
x((1 2
=>((3 5
x((6 7
.((7 8
Id((8 :
)((: ;
;((; <
})) 
))) 
;)) 
migrationBuilder++ 
.++ 
CreateTable++ (
(++( )
name,, 
:,, 
$str,,  
,,,  !
columns-- 
:-- 
table-- 
=>-- !
new--" %
{.. 
Id// 
=// 
table// 
.// 
Column// %
<//% &
int//& )
>//) *
(//* +
type//+ /
:/// 0
$str//1 6
,//6 7
nullable//8 @
://@ A
false//B G
)//G H
.00 

Annotation00 #
(00# $
$str00$ 8
,008 9
$str00: @
)00@ A
,00A B
Name11 
=11 
table11  
.11  !
Column11! '
<11' (
string11( .
>11. /
(11/ 0
type110 4
:114 5
$str116 E
,11E F
nullable11G O
:11O P
false11Q V
)11V W
,11W X
Barcode22 
=22 
table22 #
.22# $
Column22$ *
<22* +
string22+ 1
>221 2
(222 3
type223 7
:227 8
$str229 H
,22H I
nullable22J R
:22R S
false22T Y
)22Y Z
,22Z [
Price33 
=33 
table33 !
.33! "
Column33" (
<33( )
decimal33) 0
>330 1
(331 2
type332 6
:336 7
$str338 G
,33G H
nullable33I Q
:33Q R
false33S X
)33X Y
,33Y Z
StockQuantity44 !
=44" #
table44$ )
.44) *
Column44* 0
<440 1
int441 4
>444 5
(445 6
type446 :
:44: ;
$str44< A
,44A B
nullable44C K
:44K L
false44M R
)44R S
,44S T

CategoryId55 
=55  
table55! &
.55& '
Column55' -
<55- .
int55. 1
>551 2
(552 3
type553 7
:557 8
$str559 >
,55> ?
nullable55@ H
:55H I
false55J O
)55O P
}66 
,66 
constraints77 
:77 
table77 "
=>77# %
{88 
table99 
.99 

PrimaryKey99 $
(99$ %
$str99% 2
,992 3
x994 5
=>996 8
x999 :
.99: ;
Id99; =
)99= >
;99> ?
table:: 
.:: 

ForeignKey:: $
(::$ %
name;; 
:;; 
$str;; A
,;;A B
column<< 
:<< 
x<<  !
=><<" $
x<<% &
.<<& '

CategoryId<<' 1
,<<1 2
principalTable== &
:==& '
$str==( 4
,==4 5
principalColumn>> '
:>>' (
$str>>) -
,>>- .
onDelete??  
:??  !
ReferentialAction??" 3
.??3 4
Cascade??4 ;
)??; <
;??< =
}@@ 
)@@ 
;@@ 
migrationBuilderBB 
.BB 

InsertDataBB '
(BB' (
tableCC 
:CC 
$strCC #
,CC# $
columnsDD 
:DD 
newDD 
[DD 
]DD 
{DD  
$strDD! %
,DD% &
$strDD' -
}DD. /
,DD/ 0
valuesEE 
:EE 
newEE 
objectEE "
[EE" #
,EE# $
]EE$ %
{FF 
{GG 
$numGG 
,GG 
$strGG "
}GG# $
,GG$ %
{HH 
$numHH 
,HH 
$strHH (
}HH) *
,HH* +
{II 
$numII 
,II 
$strII &
}II' (
}JJ 
)JJ 
;JJ 
migrationBuilderLL 
.LL 
CreateIndexLL (
(LL( )
nameMM 
:MM 
$strMM .
,MM. /
tableNN 
:NN 
$strNN !
,NN! "
columnOO 
:OO 
$strOO $
)OO$ %
;OO% &
}PP 	
	protectedSS 
overrideSS 
voidSS 
DownSS  $
(SS$ %
MigrationBuilderSS% 5
migrationBuilderSS6 F
)SSF G
{TT 	
migrationBuilderUU 
.UU 
	DropTableUU &
(UU& '
nameVV 
:VV 
$strVV  
)VV  !
;VV! "
migrationBuilderXX 
.XX 
	DropTableXX &
(XX& '
nameYY 
:YY 
$strYY 
)YY 
;YY 
migrationBuilder[[ 
.[[ 
	DropTable[[ &
([[& '
name\\ 
:\\ 
$str\\ "
)\\" #
;\\# $
}]] 	
}^^ 
}__ ƒ
0D:\PRNProject\MiniMartManager\MainWindow.xaml.cs
	namespace 	
MiniMartManager
 
; 
public		 
partial		 
class		 

MainWindow		 
:		  !
Window		" (
{

 
private 
readonly 
INavigationService '
_navigationService( :
;: ;
public 


MainWindow 
( 
INavigationService (
navigationService) :
): ;
{ 
InitializeComponent 
( 
) 
; 
_navigationService 
= 
navigationService .
;. /
( 	
(	 

NavigationService
 
) 
_navigationService .
). /
./ 0
SetContentControl0 A
(A B
MainContentControlB T
)T U
;U V
} 
} Â
7D:\PRNProject\MiniMartManager\Data\MiniMartDbContext.cs
	namespace 	
MiniMartManager
 
. 
Data 
{ 
public 

class 
MiniMartDbContext "
:# $
	DbContext% .
{ 
public 
DbSet 
< 
User 
> 
Users  
{! "
get# &
;& '
set( +
;+ ,
}- .
public		 
DbSet		 
<		 
Product		 
>		 
Products		 &
{		' (
get		) ,
;		, -
set		. 1
;		1 2
}		3 4
public

 
DbSet

 
<

 
Category

 
>

 

Categories

 )
{

* +
get

, /
;

/ 0
set

1 4
;

4 5
}

6 7
public 
DbSet 
< 
Order 
> 
Orders "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
DbSet 
< 
OrderDetail  
>  !
OrderDetails" .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
	protected 
override 
void 
OnConfiguring  -
(- .#
DbContextOptionsBuilder. E
optionsBuilderF T
)T U
{ 	
optionsBuilder 
. 
UseSqlServer '
(' (
$str	( ã
)
ã å
;
å ç
} 	
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{ 	
base 
. 
OnModelCreating  
(  !
modelBuilder! -
)- .
;. /
modelBuilder 
. 
Entity 
<  
Category  (
>( )
() *
)* +
.+ ,
HasData, 3
(3 4
new 
Category 
{ 
Id !
=" #
$num$ %
,% &
Name' +
=, -
$str. 7
}8 9
,9 :
new 
Category 
{ 
Id !
=" #
$num$ %
,% &
Name' +
=, -
$str. =
}> ?
,? @
new 
Category 
{ 
Id !
=" #
$num$ %
,% &
Name' +
=, -
$str. ;
}< =
) 
; 
modelBuilder   
.   
Entity   
<    
User    $
>  $ %
(  % &
)  & '
.  ' (
HasData  ( /
(  / 0
new!! 
User!! 
{!! 
Id!! 
=!! 
$num!!  !
,!!! "
Username!!# +
=!!, -
$str!!. 5
,!!5 6
HashedPassword!!7 E
=!!F G
$str	!!H Ü
,
!!Ü á
Role
!!à å
=
!!ç é
$str
!!è ñ
}
!!ó ò
)"" 
;"" 
modelBuilder$$ 
.$$ 
Entity$$ 
<$$  
Product$$  '
>$$' (
($$( )
)$$) *
.%% 
Property%% 
(%% 
p%% 
=>%% 
p%%  
.%%  !
Price%%! &
)%%& '
.&& 
HasPrecision&& 
(&& 
$num&&  
,&&  !
$num&&" #
)&&# $
;&&$ %
}'' 	
}(( 
})) £
/D:\PRNProject\MiniMartManager\Core\BaseModel.cs
	namespace 	
MiniMartManager
 
. 
Core 
{ 
public 

abstract 
class 
	BaseModel #
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
} 
} ä
CD:\PRNProject\MiniMartManager\Converters\UserToUsernameConverter.cs
	namespace 	
MiniMartManager
 
. 

Converters $
{ 
public 

class #
UserToUsernameConverter (
:) *
IValueConverter+ :
{		 
public

 
object

 
Convert

 
(

 
object

 $
value

% *
,

* +
Type

, 0

targetType

1 ;
,

; <
object

= C
	parameter

D M
,

M N
CultureInfo

O Z
culture

[ b
)

b c
{ 	
if 
( 
value 
is 
User 
user "
)" #
{ 
return 
user 
. 
Username $
;$ %
} 
return 
$str 
; 
} 	
public 
object 
ConvertBack !
(! "
object" (
value) .
,. /
Type0 4

targetType5 ?
,? @
objectA G
	parameterH Q
,Q R
CultureInfoS ^
culture_ f
)f g
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
} 
} Œ
-D:\PRNProject\MiniMartManager\AssemblyInfo.cs
[ 
assembly 	
:	 

	ThemeInfo
 
( &
ResourceDictionaryLocation 
. 
None #
,# $&
ResourceDictionaryLocation 
. 
SourceAssembly -
)

 
]

 ◊K
)D:\PRNProject\MiniMartManager\App.xaml.cs
	namespace 	
MiniMartManager
 
; 
public 
partial 
class 
App 
: 
Application &
{ 
public 

IServiceProvider 
ServiceProvider +
{, -
get. 1
;1 2
private3 :
set; >
;> ?
}@ A
public 

App 
( 
) 
{ 
ServiceCollection 
services "
=# $
new% (
ServiceCollection) :
(: ;
); <
;< =
ConfigureServices 
( 
services "
)" #
;# $
ServiceProvider 
= 
services "
." # 
BuildServiceProvider# 7
(7 8
)8 9
;9 :
} 
private 
void 
ConfigureServices "
(" #
IServiceCollection# 5
services6 >
)> ?
{ 
services   
.   
AddDbContext   
<   
MiniMartDbContext   /
>  / 0
(  0 1
)  1 2
;  2 3
services## 
.## 
AddSingleton## 
<## 
INavigationService## 0
,##0 1
NavigationService##2 C
>##C D
(##D E
)##E F
;##F G
services&& 
.&& 
AddTransient&& 
<&& 
LoginViewModel&& ,
>&&, -
(&&- .
)&&. /
;&&/ 0
services'' 
.'' 
AddTransient'' 
<'' #
AdminDashboardViewModel'' 5
>''5 6
(''6 7
)''7 8
;''8 9
services(( 
.(( 
AddTransient(( 
<(( "
UserDashboardViewModel(( 4
>((4 5
(((5 6
)((6 7
;((7 8
services)) 
.)) 
AddTransient)) 
<)) &
ProductManagementViewModel)) 8
>))8 9
())9 :
))): ;
;)); <
services** 
.** 
AddTransient** 
<** '
CategoryManagementViewModel** 9
>**9 :
(**: ;
)**; <
;**< =
services++ 
.++ 
AddTransient++ 
<++ #
UserManagementViewModel++ 5
>++5 6
(++6 7
)++7 8
;++8 9
services,, 
.,, 
AddTransient,, 
<,, 
SalesViewModel,, ,
>,,, -
(,,- .
),,. /
;,,/ 0
services-- 
.-- 
AddTransient-- 
<-- $
OrderProcessingViewModel-- 6
>--6 7
(--7 8
)--8 9
;--9 :
services.. 
... 
AddTransient.. 
<.. #
AddEditProductViewModel.. 5
>..5 6
(..6 7
)..7 8
;..8 9
services// 
.// 
AddTransient// 
<// 
RegisterViewModel// /
>/// 0
(//0 1
)//1 2
;//2 3
services00 
.00 
AddTransient00 
<00 
SalesViewModel00 ,
>00, -
(00- .
)00. /
;00/ 0
services11 
.11 
AddTransient11 
<11 $
OrderProcessingViewModel11 6
>116 7
(117 8
)118 9
;119 :
services22 
.22 
AddTransient22 
<22 %
UserOrderHistoryViewModel22 7
>227 8
(228 9
)229 :
;22: ;
services33 
.33 
AddTransient33 
<33  
UserProfileViewModel33 2
>332 3
(333 4
)334 5
;335 6
services77 
.77 
AddSingleton77 
<77 

MainWindow77 (
>77( )
(77) *
)77* +
;77+ ,
services88 
.88 
AddTransient88 
<88 
	LoginView88 '
>88' (
(88( )
)88) *
;88* +
services99 
.99 
AddTransient99 
<99 
AdminDashboardView99 0
>990 1
(991 2
)992 3
;993 4
services:: 
.:: 
AddTransient:: 
<:: 
UserDashboardView:: /
>::/ 0
(::0 1
)::1 2
;::2 3
services;; 
.;; 
AddTransient;; 
<;; !
ProductManagementView;; 3
>;;3 4
(;;4 5
);;5 6
;;;6 7
services<< 
.<< 
AddTransient<< 
<<< "
CategoryManagementView<< 4
><<4 5
(<<5 6
)<<6 7
;<<7 8
services== 
.== 
AddTransient== 
<== 
UserManagementView== 0
>==0 1
(==1 2
)==2 3
;==3 4
services>> 
.>> 
AddTransient>> 
<>> 
	SalesView>> '
>>>' (
(>>( )
)>>) *
;>>* +
services?? 
.?? 
AddTransient?? 
<?? 
OrderProcessingView?? 1
>??1 2
(??2 3
)??3 4
;??4 5
services@@ 
.@@ 
AddTransient@@ 
<@@ 
AddEditProductView@@ 0
>@@0 1
(@@1 2
)@@2 3
;@@3 4
servicesAA 
.AA 
AddTransientAA 
<AA 
RegisterViewAA *
>AA* +
(AA+ ,
)AA, -
;AA- .
servicesBB 
.BB 
AddTransientBB 
<BB 
	SalesViewBB '
>BB' (
(BB( )
)BB) *
;BB* +
servicesCC 
.CC 
AddTransientCC 
<CC 
OrderProcessingViewCC 1
>CC1 2
(CC2 3
)CC3 4
;CC4 5
servicesDD 
.DD 
AddTransientDD 
<DD  
UserOrderHistoryViewDD 2
>DD2 3
(DD3 4
)DD4 5
;DD5 6
servicesEE 
.EE 
AddTransientEE 
<EE 
UserProfileViewEE -
>EE- .
(EE. /
)EE/ 0
;EE0 1
}FF 
	protectedHH 
overrideHH 
voidHH 
	OnStartupHH %
(HH% &
StartupEventArgsHH& 6
eHH7 8
)HH8 9
{II 
baseJJ 
.JJ 
	OnStartupJJ 
(JJ 
eJJ 
)JJ 
;JJ 
varMM 

mainWindowMM 
=MM 
ServiceProviderMM (
.MM( )
GetRequiredServiceMM) ;
<MM; <

MainWindowMM< F
>MMF G
(MMG H
)MMH I
;MMI J
varNN 
navigationServiceNN 
=NN 
ServiceProviderNN  /
.NN/ 0
GetRequiredServiceNN0 B
<NNB C
INavigationServiceNNC U
>NNU V
(NNV W
)NNW X
asNNY [
MiniMartManagerNN\ k
.NNk l
ServicesNNl t
.NNt u
NavigationService	NNu Ü
;
NNÜ á
ifOO 

(OO 
navigationServiceOO 
!=OO  
nullOO! %
)OO% &
{PP 	

mainWindowRR 
.RR 
LoadedRR 
+=RR  
(RR! "
sRR" #
,RR# $
argsRR% )
)RR) *
=>RR+ -
navigationServiceRR. ?
.RR? @
SetContentControlRR@ Q
(RRQ R

mainWindowRRR \
.RR\ ]
MainContentControlRR] o
)RRo p
;RRp q
}SS 	

mainWindowTT 
.TT 
ShowTT 
(TT 
)TT 
;TT 
varWW $
initialNavigationServiceWW $
=WW% &
ServiceProviderWW' 6
.WW6 7
GetRequiredServiceWW7 I
<WWI J
INavigationServiceWWJ \
>WW\ ]
(WW] ^
)WW^ _
;WW_ `$
initialNavigationServiceXX  
.XX  !

NavigateToXX! +
<XX+ ,
	LoginViewXX, 5
,XX5 6
LoginViewModelXX7 E
>XXE F
(XXF G
)XXG H
;XXH I
}YY 
private[[ 
void[[ 4
(Application_DispatcherUnhandledException[[ 9
([[9 :
object[[: @
sender[[A G
,[[G H1
%DispatcherUnhandledExceptionEventArgs[[I n
e[[o p
)[[p q
{\\ 
e]] 	
.]]	 

Handled]]
 
=]] 
true]] 
;]] 
string^^ 
errorMessage^^ 
=^^ 
string^^ $
.^^$ %
Format^^% +
(^^+ ,
$str^^, R
,^^R S
e^^T U
.^^U V
	Exception^^V _
.^^_ `
Message^^` g
)^^g h
;^^h i

MessageBox__ 
.__ 
Show__ 
(__ 
errorMessage__ $
,__$ %
$str__& -
,__- .
MessageBoxButton__/ ?
.__? @
OK__@ B
,__B C
MessageBoxImage__D S
.__S T
Error__T Y
)__Y Z
;__Z [
File`` 
.`` 
WriteAllText`` 
(`` 
$str`` )
,``) *
e``+ ,
.``, -
	Exception``- 6
.``6 7
ToString``7 ?
(``? @
)``@ A
)``A B
;``B C
}aa 
}bb 