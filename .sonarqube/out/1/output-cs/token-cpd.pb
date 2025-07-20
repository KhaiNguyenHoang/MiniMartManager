é
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
public 

partial 
class 
	SalesView "
:# $
UserControl% 0
{ 
public 
	SalesView 
( 
) 
{ 	
InitializeComponent		 
(		  
)		  !
;		! "
}

 	
} 
} £
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
} ì
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
} â
>D:\PRNProject\MiniMartManager\Views\AddEditProductView.xaml.cs
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
AddEditProductView +
:, -
Window. 4
{ 
public 
AddEditProductView !
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
} Ã/
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
(""| }
)""} ~
=>	"" Å
new
""Ç Ö%
AdminDashboardViewModel
""Ü ù
(
""ù û 
_navigationService
""û ∞
)
""∞ ±
)
""± ≤
)
""≤ ≥
;
""≥ ¥
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
User==  $
user==% )
)==) *
{>> 	
if?? 
(?? 

MessageBox?? 
.?? 
Show?? 
(??  
$"??  "
$str??" H
{??H I
user??I M
.??M N
Username??N V
}??V W
$str??W Y
"??Y Z
,??Z [
$str??\ l
,??l m
MessageBoxButton??n ~
.??~ 
YesNo	?? Ñ
,
??Ñ Ö
MessageBoxImage
??Ü ï
.
??ï ñ
Warning
??ñ ù
)
??ù û
==
??ü °
MessageBoxResult
??¢ ≤
.
??≤ ≥
Yes
??≥ ∂
)
??∂ ∑
{@@ 
usingAA 
(AA 
varAA 
contextAA "
=AA# $
newAA% (
MiniMartDbContextAA) :
(AA: ;
)AA; <
)AA< =
{BB 
contextCC 
.CC 
UsersCC !
.CC! "
RemoveCC" (
(CC( )
userCC) -
)CC- .
;CC. /
contextDD 
.DD 
SaveChangesDD '
(DD' (
)DD( )
;DD) *

MessageBoxEE 
.EE 
ShowEE #
(EE# $
$strEE$ @
,EE@ A
$strEEB K
,EEK L
MessageBoxButtonEEM ]
.EE] ^
OKEE^ `
,EE` a
MessageBoxImageEEb q
.EEq r
InformationEEr }
)EE} ~
;EE~ 
	LoadUsersFF 
(FF 
)FF 
;FF  
}GG 
}HH 
}II 	
}JJ 
}KK ˇ

BD:\PRNProject\MiniMartManager\ViewModels\UserDashboardViewModel.cs
	namespace 	
MiniMartManager
 
. 

ViewModels $
{ 
public 

partial 
class "
UserDashboardViewModel /
:0 1
ObservableObject2 B
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
IRelayCommand "
NavigateToSalesCommand 3
{4 5
get6 9
;9 :
}; <
public "
UserDashboardViewModel %
(% &
INavigationService& 8
navigationService9 J
)J K
{ 	
_navigationService 
=  
navigationService! 2
;2 3"
NavigateToSalesCommand "
=# $
new% (
RelayCommand) 5
(5 6
(6 7
)7 8
=>9 ;
_navigationService< N
.N O

NavigateToO Y
<Y Z
	SalesViewZ c
,c d
SalesViewModele s
>s t
(t u
(u v
)v w
=>x z
new{ ~
SalesViewModel	 ç
(
ç é
)
é è
)
è ê
)
ê ë
;
ë í
} 	
} 
} –v
:D:\PRNProject\MiniMartManager\ViewModels\SalesViewModel.cs
	namespace 	
MiniMartManager
 
. 

ViewModels $
{ 
public 

partial 
class 
SalesViewModel '
:( )
ObservableObject* :
{ 
public  
ObservableCollection #
<# $
Product$ +
>+ ,
AvailableProducts- >
{? @
getA D
;D E
setF I
;I J
}K L
=M N
newO R 
ObservableCollectionS g
<g h
Producth o
>o p
(p q
)q r
;r s
public  
ObservableCollection #
<# $
CartItem$ ,
>, -
	CartItems. 7
{8 9
get: =
;= >
set? B
;B C
}D E
=F G
newH K 
ObservableCollectionL `
<` a
CartItema i
>i j
(j k
)k l
;l m
[ 	
ObservableProperty	 
] 
private 
Product 
selectedProduct '
=( )
null* .
!. /
;/ 0
[ 	
ObservableProperty	 
] 
private 
int 
quantityToAdd !
;! "
[ 	
ObservableProperty	 
] 
private 
decimal 
totalAmount #
;# $
public 
IRelayCommand 
AddToCartCommand -
{. /
get0 3
;3 4
}5 6
public 
IRelayCommand 
ProcessSaleCommand /
{0 1
get2 5
;5 6
}7 8
public 
SalesViewModel 
( 
) 
{ 	
AvailableProducts   
=   
new    # 
ObservableCollection  $ 8
<  8 9
Product  9 @
>  @ A
(  A B
)  B C
;  C D
	CartItems!! 
=!! 
new!!  
ObservableCollection!! 0
<!!0 1
CartItem!!1 9
>!!9 :
(!!: ;
)!!; <
;!!< =!
LoadAvailableProducts"" !
(""! "
)""" #
;""# $
AddToCartCommand$$ 
=$$ 
new$$ "
RelayCommand$$# /
($$/ 0
	AddToCart$$0 9
,$$9 :
CanAddToCart$$; G
)$$G H
;$$H I
ProcessSaleCommand%% 
=%%  
new%%! $
RelayCommand%%% 1
(%%1 2
ProcessSale%%2 =
,%%= >
CanProcessSale%%? M
)%%M N
;%%N O
	CartItems'' 
.'' 
CollectionChanged'' '
+=''( *
(''+ ,
s'', -
,''- .
e''/ 0
)''0 1
=>''2 4 
CalculateTotalAmount''5 I
(''I J
)''J K
;''K L
}(( 	
private** 
void** !
LoadAvailableProducts** *
(*** +
)**+ ,
{++ 	
using,, 
(,, 
var,, 
context,, 
=,,  
new,,! $
MiniMartDbContext,,% 6
(,,6 7
),,7 8
),,8 9
{-- 
AvailableProducts.. !
...! "
Clear.." '
(..' (
)..( )
;..) *
foreach// 
(// 
var// 
product// $
in//% '
context//( /
./// 0
Products//0 8
.//8 9
Include//9 @
(//@ A
p//A B
=>//C E
p//F G
.//G H
Category//H P
)//P Q
.//Q R
ToList//R X
(//X Y
)//Y Z
)//Z [
{00 
AvailableProducts11 %
.11% &
Add11& )
(11) *
product11* 1
)111 2
;112 3
}22 
}33 
}44 	
private66 
void66 
	AddToCart66 
(66 
)66  
{77 	
if88 
(88 
SelectedProduct88 
==88  "
null88# '
)88' (
{99 

MessageBox:: 
.:: 
Show:: 
(::  
$str::  :
,::: ;
$str::< C
,::C D
MessageBoxButton::E U
.::U V
OK::V X
,::X Y
MessageBoxImage::Z i
.::i j
Error::j o
)::o p
;::p q
return;; 
;;; 
}<< 
if>> 
(>> 
QuantityToAdd>> 
<=>>  
$num>>! "
)>>" #
{?? 

MessageBox@@ 
.@@ 
Show@@ 
(@@  
$str@@  B
,@@B C
$str@@D K
,@@K L
MessageBoxButton@@M ]
.@@] ^
OK@@^ `
,@@` a
MessageBoxImage@@b q
.@@q r
Error@@r w
)@@w x
;@@x y
returnAA 
;AA 
}BB 
ifDD 
(DD 
QuantityToAddDD 
>DD 
SelectedProductDD  /
.DD/ 0
StockDD0 5
)DD5 6
{EE 

MessageBoxFF 
.FF 
ShowFF 
(FF  
$"FF  "
$strFF" 7
{FF7 8
SelectedProductFF8 G
.FFG H
NameFFH L
}FFL M
$strFFM Z
{FFZ [
SelectedProductFF[ j
.FFj k
StockFFk p
}FFp q
"FFq r
,FFr s
$strFFt {
,FF{ |
MessageBoxButton	FF} ç
.
FFç é
OK
FFé ê
,
FFê ë
MessageBoxImage
FFí °
.
FF° ¢
Error
FF¢ ß
)
FFß ®
;
FF® ©
returnGG 
;GG 
}HH 
varJJ 
existingCartItemJJ  
=JJ! "
	CartItemsJJ# ,
.JJ, -
FirstOrDefaultJJ- ;
(JJ; <
itemJJ< @
=>JJA C
itemJJD H
.JJH I
ProductJJI P
.JJP Q
IdJJQ S
==JJT V
SelectedProductJJW f
.JJf g
IdJJg i
)JJi j
;JJj k
ifKK 
(KK 
existingCartItemKK  
!=KK! #
nullKK$ (
)KK( )
{LL 
existingCartItemMM  
.MM  !
QuantityMM! )
+=MM* ,
QuantityToAddMM- :
;MM: ;
existingCartItemNN  
.NN  !
SubtotalNN! )
=NN* +
existingCartItemNN, <
.NN< =
QuantityNN= E
*NNF G
existingCartItemNNH X
.NNX Y
	UnitPriceNNY b
;NNb c
}OO 
elsePP 
{QQ 
	CartItemsRR 
.RR 
AddRR 
(RR 
newRR !
CartItemRR" *
{SS 
ProductTT 
=TT 
SelectedProductTT -
,TT- .
QuantityUU 
=UU 
QuantityToAddUU ,
,UU, -
	UnitPriceVV 
=VV 
SelectedProductVV  /
.VV/ 0
PriceVV0 5
,VV5 6
SubtotalWW 
=WW 
QuantityToAddWW ,
*WW- .
SelectedProductWW/ >
.WW> ?
PriceWW? D
}XX 
)XX 
;XX 
}YY 
SelectedProduct[[ 
.[[ 
Stock[[ !
-=[[" $
QuantityToAdd[[% 2
;[[2 3
QuantityToAdd\\ 
=\\ 
$num\\ 
;\\ 
(]] 
AddToCartCommand]] 
as]]  
RelayCommand]]! -
)]]- .
?]]. /
.]]/ 0#
NotifyCanExecuteChanged]]0 G
(]]G H
)]]H I
;]]I J
(^^ 
ProcessSaleCommand^^ 
as^^  "
RelayCommand^^# /
)^^/ 0
?^^0 1
.^^1 2#
NotifyCanExecuteChanged^^2 I
(^^I J
)^^J K
;^^K L
}__ 	
privateaa 
boolaa 
CanAddToCartaa !
(aa! "
)aa" #
{bb 	
returncc 
SelectedProductcc "
!=cc# %
nullcc& *
&&cc+ -
QuantityToAddcc. ;
>cc< =
$numcc> ?
&&cc@ B
QuantityToAddccC P
<=ccQ S
SelectedProductccT c
.ccc d
Stockccd i
;cci j
}dd 	
privateff 
voidff  
CalculateTotalAmountff )
(ff) *
)ff* +
{gg 	
TotalAmounthh 
=hh 
	CartItemshh #
.hh# $
Sumhh$ '
(hh' (
itemhh( ,
=>hh- /
itemhh0 4
.hh4 5
Subtotalhh5 =
)hh= >
;hh> ?
}ii 	
privatekk 
voidkk 
ProcessSalekk  
(kk  !
)kk! "
{ll 	
ifmm 
(mm 
!mm 
	CartItemsmm 
.mm 
Anymm 
(mm 
)mm  
)mm  !
{nn 

MessageBoxoo 
.oo 
Showoo 
(oo  
$stroo  0
,oo0 1
$stroo2 9
,oo9 :
MessageBoxButtonoo; K
.ooK L
OKooL N
,ooN O
MessageBoxImageooP _
.oo_ `
Erroroo` e
)ooe f
;oof g
returnpp 
;pp 
}qq 
usingss 
(ss 
varss 
contextss 
=ss  
newss! $
MiniMartDbContextss% 6
(ss6 7
)ss7 8
)ss8 9
{tt 
usinguu 
(uu 
varuu 
transactionuu &
=uu' (
contextuu) 0
.uu0 1
Databaseuu1 9
.uu9 :
BeginTransactionuu: J
(uuJ K
)uuK L
)uuL M
{vv 
tryww 
{xx 
varyy 
orderyy !
=yy" #
newyy$ '
Orderyy( -
{zz 
	OrderDate{{ %
={{& '
DateTime{{( 0
.{{0 1
Now{{1 4
,{{4 5
UserId|| "
=||# $
$num||% &
,||& '
TotalAmount}} '
=}}( )
TotalAmount}}* 5
,}}5 6
OrderDetails~~ (
=~~) *
new~~+ . 
ObservableCollection~~/ C
<~~C D
OrderDetail~~D O
>~~O P
(~~P Q
)~~Q R
} 
; 
context
ÄÄ 
.
ÄÄ  
Orders
ÄÄ  &
.
ÄÄ& '
Add
ÄÄ' *
(
ÄÄ* +
order
ÄÄ+ 0
)
ÄÄ0 1
;
ÄÄ1 2
context
ÅÅ 
.
ÅÅ  
SaveChanges
ÅÅ  +
(
ÅÅ+ ,
)
ÅÅ, -
;
ÅÅ- .
foreach
ÉÉ 
(
ÉÉ  !
var
ÉÉ! $
item
ÉÉ% )
in
ÉÉ* ,
	CartItems
ÉÉ- 6
)
ÉÉ6 7
{
ÑÑ 
var
ÖÖ 
orderDetail
ÖÖ  +
=
ÖÖ, -
new
ÖÖ. 1
OrderDetail
ÖÖ2 =
{
ÜÜ 
OrderId
áá  '
=
áá( )
order
áá* /
.
áá/ 0
Id
áá0 2
,
áá2 3
	ProductId
àà  )
=
àà* +
item
àà, 0
.
àà0 1
Product
àà1 8
.
àà8 9
Id
àà9 ;
,
àà; <
Quantity
ââ  (
=
ââ) *
item
ââ+ /
.
ââ/ 0
Quantity
ââ0 8
,
ââ8 9
	UnitPrice
ää  )
=
ää* +
item
ää, 0
.
ää0 1
	UnitPrice
ää1 :
}
ãã 
;
ãã 
order
åå !
.
åå! "
OrderDetails
åå" .
.
åå. /
Add
åå/ 2
(
åå2 3
orderDetail
åå3 >
)
åå> ?
;
åå? @
var
èè 
productInDb
èè  +
=
èè, -
context
èè. 5
.
èè5 6
Products
èè6 >
.
èè> ?
Find
èè? C
(
èèC D
item
èèD H
.
èèH I
Product
èèI P
.
èèP Q
Id
èèQ S
)
èèS T
;
èèT U
if
êê 
(
êê  
productInDb
êê  +
!=
êê, .
null
êê/ 3
)
êê3 4
{
ëë 
productInDb
íí  +
.
íí+ ,
Stock
íí, 1
-=
íí2 4
item
íí5 9
.
íí9 :
Quantity
íí: B
;
ííB C
}
ìì 
}
îî 
context
ïï 
.
ïï  
SaveChanges
ïï  +
(
ïï+ ,
)
ïï, -
;
ïï- .
transaction
ññ #
.
ññ# $
Commit
ññ$ *
(
ññ* +
)
ññ+ ,
;
ññ, -

MessageBox
òò "
.
òò" #
Show
òò# '
(
òò' (
$str
òò( F
,
òòF G
$str
òòH Q
,
òòQ R
MessageBoxButton
òòS c
.
òòc d
OK
òòd f
,
òòf g
MessageBoxImage
òòh w
.
òòw x
Informationòòx É
)òòÉ Ñ
;òòÑ Ö
	CartItems
ôô !
.
ôô! "
Clear
ôô" '
(
ôô' (
)
ôô( )
;
ôô) *#
LoadAvailableProducts
öö -
(
öö- .
)
öö. /
;
öö/ 0
TotalAmount
õõ #
=
õõ$ %
$num
õõ& '
;
õõ' (
}
úú 
catch
ùù 
(
ùù 
	Exception
ùù $
ex
ùù% '
)
ùù' (
{
ûû 
transaction
üü #
.
üü# $
Rollback
üü$ ,
(
üü, -
)
üü- .
;
üü. /

MessageBox
†† "
.
††" #
Show
††# '
(
††' (
$"
††( *
$str
††* A
{
††A B
ex
††B D
.
††D E
Message
††E L
}
††L M
"
††M N
,
††N O
$str
††P W
,
††W X
MessageBoxButton
††Y i
.
††i j
OK
††j l
,
††l m
MessageBoxImage
††n }
.
††} ~
Error††~ É
)††É Ñ
;††Ñ Ö
}
°° 
}
¢¢ 
}
££ 
}
§§ 	
private
¶¶ 
bool
¶¶ 
CanProcessSale
¶¶ #
(
¶¶# $
)
¶¶$ %
{
ßß 	
return
®® 
	CartItems
®® 
.
®® 
Any
®®  
(
®®  !
)
®®! "
;
®®" #
}
©© 	
}
™™ 
public
¨¨ 

partial
¨¨ 
class
¨¨ 
CartItem
¨¨ !
:
¨¨" #
ObservableObject
¨¨$ 4
{
≠≠ 
[
ÆÆ 	 
ObservableProperty
ÆÆ	 
]
ÆÆ 
private
ØØ 
Product
ØØ 
product
ØØ 
;
ØØ  
[
±± 	 
ObservableProperty
±±	 
]
±± 
private
≤≤ 
int
≤≤ 
quantity
≤≤ 
;
≤≤ 
[
¥¥ 	 
ObservableProperty
¥¥	 
]
¥¥ 
private
µµ 
decimal
µµ 
	unitPrice
µµ !
;
µµ! "
[
∑∑ 	 
ObservableProperty
∑∑	 
]
∑∑ 
private
∏∏ 
decimal
∏∏ 
subtotal
∏∏  
;
∏∏  !
}
ππ 
}∫∫ ·4
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
())q r
)))r s
=>))t v
new))w z
LoginViewModel	)){ â
(
))â ä 
_navigationService
))ä ú
)
))ú ù
)
))ù û
)
))û ü
;
))ü †
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
_navigationServiceHH "
.HH" #

NavigateToHH# -
<HH- .
	LoginViewHH. 7
,HH7 8
LoginViewModelHH9 G
>HHG H
(HHH I
(HHI J
)HHJ K
=>HHL N
newHHO R
LoginViewModelHHS a
(HHa b
_navigationServiceHHb t
)HHt u
)HHu v
;HHv w
}II 
}JJ 	
}KK 
}LL Ó5
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
(!!| }
)!!} ~
=>	!! Å
new
!!Ç Ö%
AdminDashboardViewModel
!!Ü ù
(
!!ù û 
_navigationService
!!û ∞
)
!!∞ ±
)
!!± ≤
)
!!≤ ≥
;
!!≥ ¥
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
;33] ^
if44 
(44 
addEditProductView44 "
.44" #

ShowDialog44# -
(44- .
)44. /
==440 2
true443 7
)447 8
{55 
LoadProducts66 
(66 
)66 
;66 
}77 
}88 	
private:: 
void:: 
EditProduct::  
(::  !
Product::! (
product::) 0
)::0 1
{;; 	
var<< 
	viewModel<< 
=<< 
new<< #
AddEditProductViewModel<<  7
(<<7 8
product<<8 ?
)<<? @
;<<@ A
var== 
addEditProductView== "
===# $
new==% (
Views==) .
.==. /
AddEditProductView==/ A
{==B C
DataContext==D O
===P Q
	viewModel==R [
}==\ ]
;==] ^
if>> 
(>> 
addEditProductView>> "
.>>" #

ShowDialog>># -
(>>- .
)>>. /
==>>0 2
true>>3 7
)>>7 8
{?? 
LoadProducts@@ 
(@@ 
)@@ 
;@@ 
}AA 
}BB 	
privateDD 
voidDD 
DeleteProductDD "
(DD" #
ProductDD# *
productDD+ 2
)DD2 3
{EE 	
ifFF 
(FF 

MessageBoxFF 
.FF 
ShowFF 
(FF  
$"FF  "
$strFF" B
{FFB C
productFFC J
.FFJ K
NameFFK O
}FFO P
$strFFP Q
"FFQ R
,FFR S
$strFFT d
,FFd e
MessageBoxButtonFFf v
.FFv w
YesNoFFw |
,FF| }
MessageBoxImage	FF~ ç
.
FFç é
Warning
FFé ï
)
FFï ñ
==
FFó ô
MessageBoxResult
FFö ™
.
FF™ ´
Yes
FF´ Æ
)
FFÆ Ø
{GG 
usingHH 
(HH 
varHH 
contextHH "
=HH# $
newHH% (
MiniMartDbContextHH) :
(HH: ;
)HH; <
)HH< =
{II 
contextJJ 
.JJ 
ProductsJJ $
.JJ$ %
RemoveJJ% +
(JJ+ ,
productJJ, 3
)JJ3 4
;JJ4 5
contextKK 
.KK 
SaveChangesKK '
(KK' (
)KK( )
;KK) *
LoadProductsLL  
(LL  !
)LL! "
;LL" #
}MM 
}NN 
}OO 	
}PP 
}QQ ˆ'
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
(!!z {
)!!{ |
=>!!} 
new
!!Ä É
RegisterViewModel
!!Ñ ï
(
!!ï ñ 
_navigationService
!!ñ ®
)
!!® ©
)
!!© ™
)
!!™ ´
;
!!´ ¨
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
_navigationService.. &
...& '

NavigateTo..' 1
<..1 2
AdminDashboardView..2 D
,..D E#
AdminDashboardViewModel..F ]
>..] ^
(..^ _
(.._ `
)..` a
=>..b d
new..e h$
AdminDashboardViewModel	..i Ä
(
..Ä Å 
_navigationService
..Å ì
)
..ì î
)
..î ï
;
..ï ñ
}// 
else00 
{11 
_navigationService22 &
.22& '

NavigateTo22' 1
<221 2
UserDashboardView222 C
,22C D"
UserDashboardViewModel22E [
>22[ \
(22\ ]
(22] ^
)22^ _
=>22` b
new22c f"
UserDashboardViewModel22g }
(22} ~
_navigationService	22~ ê
)
22ê ë
)
22ë í
;
22í ì
}33 
}44 
else55 
{66 

MessageBox77 
.77 
Show77 
(77  
$str77  ?
,77? @
$str77A H
,77H I
MessageBoxButton77J Z
.77Z [
OK77[ ]
,77] ^
MessageBoxImage77_ n
.77n o
Error77o t
)77t u
;77u v
}88 
}99 	
}:: 
};; ‹S
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
(##| }
)##} ~
=>	## Å
new
##Ç Ö%
AdminDashboardViewModel
##Ü ù
(
##ù û 
_navigationService
##û ∞
)
##∞ ±
)
##± ≤
)
##≤ ≥
;
##≥ ¥
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
Category``$ ,
category``- 5
)``5 6
{aa 	
ifbb 
(bb 

MessageBoxbb 
.bb 
Showbb 
(bb  
$"bb  "
$strbb" L
{bbL M
categorybbM U
.bbU V
NamebbV Z
}bbZ [
$str	bb[ é
"
bbé è
,
bbè ê
$str
bbë °
,
bb° ¢
MessageBoxButton
bb£ ≥
.
bb≥ ¥
YesNo
bb¥ π
,
bbπ ∫
MessageBoxImage
bbª  
.
bb  À
Warning
bbÀ “
)
bb“ ”
==
bb‘ ÷
MessageBoxResult
bb◊ Á
.
bbÁ Ë
Yes
bbË Î
)
bbÎ Ï
{cc 
usingdd 
(dd 
vardd 
contextdd "
=dd# $
newdd% (
MiniMartDbContextdd) :
(dd: ;
)dd; <
)dd< =
{ee 
contexthh 
.hh 

Categorieshh &
.hh& '
Removehh' -
(hh- .
categoryhh. 6
)hh6 7
;hh7 8
contextii 
.ii 
SaveChangesii '
(ii' (
)ii( )
;ii) *

MessageBoxjj 
.jj 
Showjj #
(jj# $
$strjj$ D
,jjD E
$strjjF O
,jjO P
MessageBoxButtonjjQ a
.jja b
OKjjb d
,jjd e
MessageBoxImagejjf u
.jju v
Information	jjv Å
)
jjÅ Ç
;
jjÇ É
LoadCategorieskk "
(kk" #
)kk# $
;kk$ %
}ll 
}mm 
}nn 	
}oo 
}pp ®
;D:\PRNProject\MiniMartManager\Services\NavigationService.cs
	namespace 	
MiniMartManager
 
. 
Services "
{ 
public 

class 
NavigationService "
:# $
INavigationService% 7
{ 
private		 
readonly		 
ContentControl		 '
_contentControl		( 7
;		7 8
public 
NavigationService  
(  !
ContentControl! /
contentControl0 >
)> ?
{ 	
_contentControl 
= 
contentControl ,
;, -
} 	
public 
void 

NavigateTo 
< 
TView $
,$ %

TViewModel& 0
>0 1
(1 2
Func2 6
<6 7

TViewModel7 A
>A B
viewModelFactoryC S
)S T
where 
TView 
: 
UserControl %
,% &
new' *
(* +
)+ ,
where 

TViewModel 
: 
class $
{ 	
var 
view 
= 
new 
TView  
(  !
)! "
;" #
var 
	viewModel 
= 
viewModelFactory ,
(, -
)- .
;. /
view 
. 
DataContext 
= 
	viewModel (
;( )
_contentControl 
. 
Content #
=$ %
view& *
;* +
} 	
} 
} ˚%
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
;1 2
public 
bool 
? 
DialogResult !
{" #
get$ '
;' (
private) 0
set1 4
;4 5
}6 7
public 
IRelayCommand 
SaveCommand (
{) *
get+ .
;. /
}0 1
public 
IRelayCommand 
CancelCommand *
{+ ,
get- 0
;0 1
}2 3
public #
AddEditProductViewModel &
(& '
Product' .
productToEdit/ <
== >
null? C
)C D
{ 	
Product 
= 
productToEdit #
??$ &
new' *
Product+ 2
(2 3
)3 4
;4 5
LoadCategories 
( 
) 
; 
if   
(   
productToEdit   
!=    
null  ! %
)  % &
{!! 
WindowTitle"" 
="" 
$str"" ,
;"", -
}## 
else$$ 
{%% 
WindowTitle&& 
=&& 
$str&& /
;&&/ 0
}'' 
SaveCommand)) 
=)) 
new)) 
RelayCommand)) *
())* +
Save))+ /
)))/ 0
;))0 1
CancelCommand** 
=** 
new** 
RelayCommand**  ,
(**, -
Cancel**- 3
)**3 4
;**4 5
}++ 	
private-- 
void-- 
LoadCategories-- #
(--# $
)--$ %
{.. 	
using// 
(// 
var// 
context// 
=//  
new//! $
MiniMartDbContext//% 6
(//6 7
)//7 8
)//8 9
{00 

Categories11 
=11 
new11   
ObservableCollection11! 5
<115 6
Category116 >
>11> ?
(11? @
context11@ G
.11G H

Categories11H R
.11R S
ToList11S Y
(11Y Z
)11Z [
)11[ \
;11\ ]
}22 
}33 	
private55 
void55 
Save55 
(55 
)55 
{66 	
using77 
(77 
var77 
context77 
=77  
new77! $
MiniMartDbContext77% 6
(776 7
)777 8
)778 9
{88 
if99 
(99 
Product99 
.99 
Id99 
==99 !
$num99" #
)99# $
{:: 
context;; 
.;; 
Products;; $
.;;$ %
Add;;% (
(;;( )
Product;;) 0
);;0 1
;;;1 2
}<< 
else== 
{>> 
context?? 
.?? 
Products?? $
.??$ %
Update??% +
(??+ ,
Product??, 3
)??3 4
;??4 5
}@@ 
contextAA 
.AA 
SaveChangesAA #
(AA# $
)AA$ %
;AA% &

MessageBoxBB 
.BB 
ShowBB 
(BB  
$strBB  =
,BB= >
$strBB? H
,BBH I
MessageBoxButtonBBJ Z
.BBZ [
OKBB[ ]
,BB] ^
MessageBoxImageBB_ n
.BBn o
InformationBBo z
)BBz {
;BB{ |
DialogResultCC 
=CC 
trueCC #
;CC# $
}DD 
}EE 	
privateGG 
voidGG 
CancelGG 
(GG 
)GG 
{HH 	
DialogResultII 
=II 
falseII  
;II  !
}JJ 	
}KK 
}LL ‚
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
public #
AdminDashboardViewModel &
(& '
INavigationService' 9
navigationService: K
)K L
{ 	
_navigationService 
=  
navigationService! 2
;2 3.
"NavigateToProductManagementCommand .
=/ 0
new1 4
RelayCommand5 A
(A B
(B C
)C D
=>E G
_navigationServiceH Z
.Z [

NavigateTo[ e
<e f!
ProductManagementViewf {
,{ |'
ProductManagementViewModel	} ó
>
ó ò
(
ò ô
(
ô ö
)
ö õ
=>
ú û
new
ü ¢(
ProductManagementViewModel
£ Ω
(
Ω æ 
_navigationService
æ –
)
– —
)
— “
)
“ ”
;
” ‘/
#NavigateToCategoryManagementCommand /
=0 1
new2 5
RelayCommand6 B
(B C
(C D
)D E
=>F H
_navigationServiceI [
.[ \

NavigateTo\ f
<f g"
CategoryManagementViewg }
,} ~(
CategoryManagementViewModel	 ö
>
ö õ
(
õ ú
(
ú ù
)
ù û
=>
ü °
new
¢ •)
CategoryManagementViewModel
¶ ¡
(
¡ ¬ 
_navigationService
¬ ‘
)
‘ ’
)
’ ÷
)
÷ ◊
;
◊ ÿ+
NavigateToUserManagementCommand +
=, -
new. 1
RelayCommand2 >
(> ?
(? @
)@ A
=>B D
_navigationServiceE W
.W X

NavigateToX b
<b c
UserManagementViewc u
,u v$
UserManagementViewModel	w é
>
é è
(
è ê
(
ê ë
)
ë í
=>
ì ï
new
ñ ô%
UserManagementViewModel
ö ±
(
± ≤ 
_navigationService
≤ ƒ
)
ƒ ≈
)
≈ ∆
)
∆ «
;
« »
} 	
} 
} å
<D:\PRNProject\MiniMartManager\Services\INavigationService.cs
	namespace 	
MiniMartManager
 
. 
Services "
{ 
public 

	interface 
INavigationService '
{ 
void 

NavigateTo 
< 
TView 
, 

TViewModel )
>) *
(* +
Func+ /
</ 0

TViewModel0 :
>: ;
viewModelFactory< L
)L M
whereN S
TViewT Y
:Z [
UserControl\ g
,g h
newi l
(l m
)m n
whereo t

TViewModelu 
:
Ä Å
class
Ç á
;
á à
}		 
}

 Ï
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
} ë
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
 
Stock

 
{

 
get

 
;

 
set

  #
;

# $
}

% &
public 
int 
StockQuantity  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 

CategoryId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
Category 
? 
Category !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} √

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
public 
Order 
Order 
{ 
get  
;  !
set" %
;% &
}' (
=) *
null+ /
!/ 0
;0 1
public		 
int		 
	ProductId		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public

 
Product

 
Product

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
=

- .
null

/ 3
!

3 4
;

4 5
public 
int 
Quantity 
{ 
get !
;! "
set# &
;& '
}( )
public 
decimal 
	UnitPrice  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} È

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
User 
User 
{ 
get 
; 
set  #
;# $
}% &
=' (
new) ,
User- 1
(1 2
)2 3
;3 4
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
;l m
} 
} Ù
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
} îC
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
}__ À
0D:\PRNProject\MiniMartManager\MainWindow.xaml.cs
	namespace 	
MiniMartManager
 
; 
public 
partial 
class 

MainWindow 
:  !
Window" (
{ 
private 
readonly 
INavigationService '
_navigationService( :
;: ;
public 


MainWindow 
( 
) 
{ 
InitializeComponent 
( 
) 
; 
_navigationService 
= 
new  
NavigationService! 2
(2 3
MainContentControl3 E
)E F
;F G
_navigationService 
. 

NavigateTo %
<% &
	LoginView& /
,/ 0
LoginViewModel1 ?
>? @
(@ A
(A B
)B C
=>D F
newG J
LoginViewModelK Y
(Y Z
_navigationServiceZ l
)l m
)m n
;n o
} 
} Â
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
 ≈
)D:\PRNProject\MiniMartManager\App.xaml.cs
	namespace 	
MiniMartManager
 
; 
public 
partial 
class 
App 
: 
Application &
{ 
private 
void 4
(Application_DispatcherUnhandledException 9
(9 :
object: @
senderA G
,G H1
%DispatcherUnhandledExceptionEventArgsI n
eo p
)p q
{ 
e 	
.	 

Handled
 
= 
true 
; 
string 
errorMessage 
= 
string $
.$ %
Format% +
(+ ,
$str, R
,R S
eT U
.U V
	ExceptionV _
._ `
Message` g
)g h
;h i

MessageBox 
. 
Show 
( 
errorMessage $
,$ %
$str& -
,- .
MessageBoxButton/ ?
.? @
OK@ B
,B C
MessageBoxImageD S
.S T
ErrorT Y
)Y Z
;Z [
File 
. 
WriteAllText 
( 
$str )
,) *
e+ ,
., -
	Exception- 6
.6 7
ToString7 ?
(? @
)@ A
)A B
;B C
} 
} 