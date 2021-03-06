??
??
?
ArgMax

input"T
	dimension"Tidx
output"output_type"!
Ttype:
2	
"
Tidxtype0:
2	"
output_typetype0	:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
A
BroadcastArgs
s0"T
s1"T
r0"T"
Ttype0:
2	
Z
BroadcastTo

input"T
shape"Tidx
output"T"	
Ttype"
Tidxtype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
:
Minimum
x"T
y"T
z"T"
Ttype:

2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??
d
VariableVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
Variable
]
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
: *
dtype0	
?
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *V
shared_nameGECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/kernel
?
YCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/kernel/Read/ReadVariableOpReadVariableOpECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/kernel*&
_output_shapes
: *
dtype0
?
CCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *T
shared_nameECCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/bias
?
WCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/bias/Read/ReadVariableOpReadVariableOpCCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/bias*
_output_shapes
: *
dtype0
?
GCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*X
shared_nameIGCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/kernel
?
[CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpGCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/kernel*&
_output_shapes
: @*
dtype0
?
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*V
shared_nameGECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/bias
?
YCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/bias/Read/ReadVariableOpReadVariableOpECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/bias*
_output_shapes
:@*
dtype0
?
GCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*X
shared_nameIGCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/kernel
?
[CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpGCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/kernel*&
_output_shapes
:@@*
dtype0
?
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*V
shared_nameGECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/bias
?
YCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/bias/Read/ReadVariableOpReadVariableOpECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/bias*
_output_shapes
:@*
dtype0
?
DCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*U
shared_nameFDCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/kernel
?
XCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/kernel/Read/ReadVariableOpReadVariableOpDCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/kernel* 
_output_shapes
:
??*
dtype0
?
BCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*S
shared_nameDBCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/bias
?
VCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/bias/Read/ReadVariableOpReadVariableOpBCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/bias*
_output_shapes	
:?*
dtype0
?
6CategoricalQNetwork/CategoricalQNetwork/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*G
shared_name86CategoricalQNetwork/CategoricalQNetwork/dense_1/kernel
?
JCategoricalQNetwork/CategoricalQNetwork/dense_1/kernel/Read/ReadVariableOpReadVariableOp6CategoricalQNetwork/CategoricalQNetwork/dense_1/kernel* 
_output_shapes
:
??*
dtype0
?
4CategoricalQNetwork/CategoricalQNetwork/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64CategoricalQNetwork/CategoricalQNetwork/dense_1/bias
?
HCategoricalQNetwork/CategoricalQNetwork/dense_1/bias/Read/ReadVariableOpReadVariableOp4CategoricalQNetwork/CategoricalQNetwork/dense_1/bias*
_output_shapes	
:?*
dtype0
?
ConstConst*
_output_shapes
:3*
dtype0*?
value?B?3"?  ??????33???̌?ff??  ??33s?fff???Y???L?  @?333?ff&???????   ?ff??????33??????  ????L??????̿??L?    ??L???????@??L@  ?@???@33?@???@ff?@   A??A??Aff&A333A  @A??LA??YAfffA33sA  ?Aff?A?̌A33?A???A  ?A

NoOpNoOp
?)
Const_1Const"/device:CPU:0*
_output_shapes
: *
dtype0*?)
value?)B?) B?)
T

train_step
metadata
model_variables
_all_assets

signatures
CA
VARIABLE_VALUEVariable%train_step/.ATTRIBUTES/VARIABLE_VALUE
 
F
0
1
2
	3

4
5
6
7
8
9

0
 
??
VARIABLE_VALUEECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/kernel,model_variables/0/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUECCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/bias,model_variables/1/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEGCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/kernel,model_variables/2/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/bias,model_variables/3/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEGCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/kernel,model_variables/4/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/bias,model_variables/5/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEDCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/kernel,model_variables/6/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEBCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/bias,model_variables/7/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE6CategoricalQNetwork/CategoricalQNetwork/dense_1/kernel,model_variables/8/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE4CategoricalQNetwork/CategoricalQNetwork/dense_1/bias,model_variables/9/.ATTRIBUTES/VARIABLE_VALUE

ref
1


_q_network
b

_q_network
	variables
regularization_losses
trainable_variables
	keras_api
t
_encoder
_q_value_layer
	variables
regularization_losses
trainable_variables
	keras_api
F
0
1
2
	3

4
5
6
7
8
9
 
F
0
1
2
	3

4
5
6
7
8
9
?
layer_metrics
	variables
non_trainable_variables
regularization_losses
trainable_variables
 layer_regularization_losses

!layers
"metrics
?
#_flat_preprocessing_layers
$_postprocessing_layers
%	variables
&regularization_losses
'trainable_variables
(	keras_api
h

kernel
bias
)	variables
*regularization_losses
+trainable_variables
,	keras_api
F
0
1
2
	3

4
5
6
7
8
9
 
F
0
1
2
	3

4
5
6
7
8
9
?
-layer_metrics
	variables
.non_trainable_variables
regularization_losses
trainable_variables
/layer_regularization_losses

0layers
1metrics
 
 
 

0
 

20
#
30
41
52
63
74
8
0
1
2
	3

4
5
6
7
 
8
0
1
2
	3

4
5
6
7
?
8layer_metrics
%	variables
9non_trainable_variables
&regularization_losses
'trainable_variables
:layer_regularization_losses

;layers
<metrics

0
1
 

0
1
?
=layer_metrics
)	variables
>non_trainable_variables
*regularization_losses
+trainable_variables
?layer_regularization_losses

@layers
Ametrics
 
 
 

0
1
 
R
B	variables
Cregularization_losses
Dtrainable_variables
E	keras_api
h

kernel
bias
F	variables
Gregularization_losses
Htrainable_variables
I	keras_api
h

kernel
	bias
J	variables
Kregularization_losses
Ltrainable_variables
M	keras_api
h


kernel
bias
N	variables
Oregularization_losses
Ptrainable_variables
Q	keras_api
R
R	variables
Sregularization_losses
Ttrainable_variables
U	keras_api
h

kernel
bias
V	variables
Wregularization_losses
Xtrainable_variables
Y	keras_api
 
 
 
*
20
31
42
53
64
75
 
 
 
 
 
 
 
 
 
?
Zlayer_metrics
B	variables
[non_trainable_variables
Cregularization_losses
Dtrainable_variables
\layer_regularization_losses

]layers
^metrics

0
1
 

0
1
?
_layer_metrics
F	variables
`non_trainable_variables
Gregularization_losses
Htrainable_variables
alayer_regularization_losses

blayers
cmetrics

0
	1
 

0
	1
?
dlayer_metrics
J	variables
enon_trainable_variables
Kregularization_losses
Ltrainable_variables
flayer_regularization_losses

glayers
hmetrics


0
1
 


0
1
?
ilayer_metrics
N	variables
jnon_trainable_variables
Oregularization_losses
Ptrainable_variables
klayer_regularization_losses

llayers
mmetrics
 
 
 
?
nlayer_metrics
R	variables
onon_trainable_variables
Sregularization_losses
Ttrainable_variables
player_regularization_losses

qlayers
rmetrics

0
1
 

0
1
?
slayer_metrics
V	variables
tnon_trainable_variables
Wregularization_losses
Xtrainable_variables
ulayer_regularization_losses

vlayers
wmetrics
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
l
action_0/discountPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
action_0/observationPlaceholder*/
_output_shapes
:?????????TT*
dtype0*$
shape:?????????TT
j
action_0/rewardPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
m
action_0/step_typePlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallaction_0/discountaction_0/observationaction_0/rewardaction_0/step_typeECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/kernelCCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/biasGCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/kernelECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/biasGCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/kernelECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/biasDCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/kernelBCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/bias6CategoricalQNetwork/CategoricalQNetwork/dense_1/kernel4CategoricalQNetwork/CategoricalQNetwork/dense_1/biasConst*
Tin
2*
Tout
2	*
_collective_manager_ids
 *#
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? */
f*R(
&__inference_signature_wrapper_25781443
]
get_initial_state_batch_sizePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
PartitionedCallPartitionedCallget_initial_state_batch_size*
Tin
2*

Tout
 *
_collective_manager_ids
 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? */
f*R(
&__inference_signature_wrapper_25781448
?
PartitionedCall_1PartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? */
f*R(
&__inference_signature_wrapper_25781460
?
StatefulPartitionedCall_1StatefulPartitionedCallVariable*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? */
f*R(
&__inference_signature_wrapper_25781456
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable/Read/ReadVariableOpYCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/kernel/Read/ReadVariableOpWCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/bias/Read/ReadVariableOp[CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/kernel/Read/ReadVariableOpYCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/bias/Read/ReadVariableOp[CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/kernel/Read/ReadVariableOpYCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/bias/Read/ReadVariableOpXCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/kernel/Read/ReadVariableOpVCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/bias/Read/ReadVariableOpJCategoricalQNetwork/CategoricalQNetwork/dense_1/kernel/Read/ReadVariableOpHCategoricalQNetwork/CategoricalQNetwork/dense_1/bias/Read/ReadVariableOpConst_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__traced_save_25781522
?
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameVariableECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/kernelCCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/biasGCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/kernelECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/biasGCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/kernelECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/biasDCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/kernelBCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/bias6CategoricalQNetwork/CategoricalQNetwork/dense_1/kernel4CategoricalQNetwork/CategoricalQNetwork/dense_1/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference__traced_restore_25781565??
?
(
&__inference_signature_wrapper_25781460?
PartitionedCallPartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *4
f/R-
+__inference_function_with_signature_16385492
PartitionedCall*(
_construction_contextkEagerRuntime*
_input_shapes 
]

__inference_<lambda>_1485842*(
_construction_contextkEagerRuntime*
_input_shapes 
??
?
)__inference_polymorphic_action_fn_1638462
	time_step
time_step_1
time_step_2
time_step_3w
]categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_conv2d_readvariableop_resource: l
^categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_biasadd_readvariableop_resource: y
_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_1_conv2d_readvariableop_resource: @n
`categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_1_biasadd_readvariableop_resource:@y
_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_2_conv2d_readvariableop_resource:@@n
`categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_2_biasadd_readvariableop_resource:@p
\categoricalqnetwork_categoricalqnetwork_encodingnetwork_dense_matmul_readvariableop_resource:
??l
]categoricalqnetwork_categoricalqnetwork_encodingnetwork_dense_biasadd_readvariableop_resource:	?b
Ncategoricalqnetwork_categoricalqnetwork_dense_1_matmul_readvariableop_resource:
??^
Ocategoricalqnetwork_categoricalqnetwork_dense_1_biasadd_readvariableop_resource:	?	
mul_x
identity	??UCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp?TCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp?WCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp?VCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp?WCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOp?VCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOp?TCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp?SCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp?FCategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAdd/ReadVariableOp?ECategoricalQNetwork/CategoricalQNetwork/dense_1/MatMul/ReadVariableOp?
CCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/lambda/CastCasttime_step_3*

DstT0*

SrcT0*/
_output_shapes
:?????????TT2E
CCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/lambda/Cast?
HCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/lambda/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  C2J
HCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/lambda/truediv/y?
FCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/lambda/truedivRealDivGCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/lambda/Cast:y:0QCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/lambda/truediv/y:output:0*
T0*/
_output_shapes
:?????????TT2H
FCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/lambda/truediv?
TCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOpReadVariableOp]categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02V
TCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp?
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2DConv2DJCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/lambda/truediv:z:0\CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2G
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2D?
UCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOpReadVariableOp^categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02W
UCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp?
FCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAddBiasAddNCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2D:output:0]CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2H
FCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAdd?
CCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/ReluReluOCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2E
CCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Relu?
VCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOpReadVariableOp_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02X
VCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp?
GCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2DConv2DQCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Relu:activations:0^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		@*
paddingVALID*
strides
2I
GCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2D?
WCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp`categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02Y
WCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp?
HCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAddBiasAddPCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2D:output:0_CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		@2J
HCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAdd?
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/ReluReluQCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????		@2G
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Relu?
VCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOpReadVariableOp_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02X
VCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOp?
GCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2DConv2DSCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Relu:activations:0^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2I
GCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2D?
WCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp`categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02Y
WCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOp?
HCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAddBiasAddPCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2D:output:0_CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2J
HCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAdd?
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/ReluReluQCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2G
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Relu?
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2G
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/flatten/Const?
GCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/flatten/ReshapeReshapeSCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Relu:activations:0NCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2I
GCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/flatten/Reshape?
SCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpReadVariableOp\categoricalqnetwork_categoricalqnetwork_encodingnetwork_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02U
SCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp?
DCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMulMatMulPCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/flatten/Reshape:output:0[CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2F
DCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMul?
TCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpReadVariableOp]categoricalqnetwork_categoricalqnetwork_encodingnetwork_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02V
TCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp?
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAddBiasAddNCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMul:product:0\CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2G
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAdd?
BCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/ReluReluNCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2D
BCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/Relu?
ECategoricalQNetwork/CategoricalQNetwork/dense_1/MatMul/ReadVariableOpReadVariableOpNcategoricalqnetwork_categoricalqnetwork_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02G
ECategoricalQNetwork/CategoricalQNetwork/dense_1/MatMul/ReadVariableOp?
6CategoricalQNetwork/CategoricalQNetwork/dense_1/MatMulMatMulPCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/Relu:activations:0MCategoricalQNetwork/CategoricalQNetwork/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????28
6CategoricalQNetwork/CategoricalQNetwork/dense_1/MatMul?
FCategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAdd/ReadVariableOpReadVariableOpOcategoricalqnetwork_categoricalqnetwork_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02H
FCategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAdd/ReadVariableOp?
7CategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAddBiasAdd@CategoricalQNetwork/CategoricalQNetwork/dense_1/MatMul:product:0NCategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????29
7CategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAdd?
!CategoricalQNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   3   2#
!CategoricalQNetwork/Reshape/shape?
CategoricalQNetwork/ReshapeReshape@CategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAdd:output:0*CategoricalQNetwork/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????32
CategoricalQNetwork/Reshapey
SoftmaxSoftmax$CategoricalQNetwork/Reshape:output:0*
T0*+
_output_shapes
:?????????32	
Softmaxa
mulMulmul_xSoftmax:softmax:0*
T0*+
_output_shapes
:?????????32
muly
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Sum/reduction_indicesl
SumSummul:z:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
Sum?
#Categorical_1/mode/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#Categorical_1/mode/ArgMax/dimension?
Categorical_1/mode/ArgMaxArgMaxSum:output:0,Categorical_1/mode/ArgMax/dimension:output:0*
T0*#
_output_shapes
:?????????2
Categorical_1/mode/ArgMaxj
Deterministic/atolConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
Deterministic/atolj
Deterministic/rtolConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
Deterministic/rtol?
#Deterministic_1/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 2%
#Deterministic_1/sample/sample_shape?
Deterministic_1/sample/ShapeShape"Categorical_1/mode/ArgMax:output:0*
T0	*
_output_shapes
:2
Deterministic_1/sample/Shape?
'Deterministic_1/sample/BroadcastArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 2)
'Deterministic_1/sample/BroadcastArgs/s1?
$Deterministic_1/sample/BroadcastArgsBroadcastArgs%Deterministic_1/sample/Shape:output:00Deterministic_1/sample/BroadcastArgs/s1:output:0*
_output_shapes
:2&
$Deterministic_1/sample/BroadcastArgs
Deterministic_1/sample/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
Deterministic_1/sample/Const?
&Deterministic_1/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:2(
&Deterministic_1/sample/concat/values_0?
"Deterministic_1/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"Deterministic_1/sample/concat/axis?
Deterministic_1/sample/concatConcatV2/Deterministic_1/sample/concat/values_0:output:0)Deterministic_1/sample/BroadcastArgs:r0:0%Deterministic_1/sample/Const:output:0+Deterministic_1/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Deterministic_1/sample/concat?
"Deterministic_1/sample/BroadcastToBroadcastTo"Categorical_1/mode/ArgMax:output:0&Deterministic_1/sample/concat:output:0*
T0	*'
_output_shapes
:?????????2$
"Deterministic_1/sample/BroadcastTo?
Deterministic_1/sample/Shape_1Shape+Deterministic_1/sample/BroadcastTo:output:0*
T0	*
_output_shapes
:2 
Deterministic_1/sample/Shape_1?
*Deterministic_1/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*Deterministic_1/sample/strided_slice/stack?
,Deterministic_1/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,Deterministic_1/sample/strided_slice/stack_1?
,Deterministic_1/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,Deterministic_1/sample/strided_slice/stack_2?
$Deterministic_1/sample/strided_sliceStridedSlice'Deterministic_1/sample/Shape_1:output:03Deterministic_1/sample/strided_slice/stack:output:05Deterministic_1/sample/strided_slice/stack_1:output:05Deterministic_1/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2&
$Deterministic_1/sample/strided_slice?
$Deterministic_1/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$Deterministic_1/sample/concat_1/axis?
Deterministic_1/sample/concat_1ConcatV2,Deterministic_1/sample/sample_shape:output:0-Deterministic_1/sample/strided_slice:output:0-Deterministic_1/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2!
Deterministic_1/sample/concat_1?
Deterministic_1/sample/ReshapeReshape+Deterministic_1/sample/BroadcastTo:output:0(Deterministic_1/sample/concat_1:output:0*
T0	*#
_output_shapes
:?????????2 
Deterministic_1/sample/Reshapet
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0	*
value	B	 R2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum'Deterministic_1/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0	*#
_output_shapes
:?????????2
clip_by_value/Minimumd
clip_by_value/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0	*#
_output_shapes
:?????????2
clip_by_value?
IdentityIdentityclip_by_value:z:0V^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOpU^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOpX^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOpW^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOpX^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOpW^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOpU^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpT^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpG^CategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAdd/ReadVariableOpF^CategoricalQNetwork/CategoricalQNetwork/dense_1/MatMul/ReadVariableOp*
T0	*#
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:?????????:?????????:?????????:?????????TT: : : : : : : : : : :32?
UCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOpUCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp2?
TCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOpTCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp2?
WCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOpWCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp2?
VCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOpVCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp2?
WCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOpWCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOp2?
VCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOpVCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOp2?
TCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpTCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp2?
SCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpSCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp2?
FCategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAdd/ReadVariableOpFCategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAdd/ReadVariableOp2?
ECategoricalQNetwork/CategoricalQNetwork/dense_1/MatMul/ReadVariableOpECategoricalQNetwork/CategoricalQNetwork/dense_1/MatMul/ReadVariableOp:N J
#
_output_shapes
:?????????
#
_user_specified_name	time_step:NJ
#
_output_shapes
:?????????
#
_user_specified_name	time_step:NJ
#
_output_shapes
:?????????
#
_user_specified_name	time_step:ZV
/
_output_shapes
:?????????TT
#
_user_specified_name	time_step: 

_output_shapes
:3
?
-
+__inference_function_with_signature_1638549?
PartitionedCallPartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *%
f R
__inference_<lambda>_14858422
PartitionedCall*(
_construction_contextkEagerRuntime*
_input_shapes 
??
?
/__inference_polymorphic_distribution_fn_1638771
	step_type

reward
discount
observationw
]categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_conv2d_readvariableop_resource: l
^categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_biasadd_readvariableop_resource: y
_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_1_conv2d_readvariableop_resource: @n
`categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_1_biasadd_readvariableop_resource:@y
_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_2_conv2d_readvariableop_resource:@@n
`categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_2_biasadd_readvariableop_resource:@p
\categoricalqnetwork_categoricalqnetwork_encodingnetwork_dense_matmul_readvariableop_resource:
??l
]categoricalqnetwork_categoricalqnetwork_encodingnetwork_dense_biasadd_readvariableop_resource:	?b
Ncategoricalqnetwork_categoricalqnetwork_dense_1_matmul_readvariableop_resource:
??^
Ocategoricalqnetwork_categoricalqnetwork_dense_1_biasadd_readvariableop_resource:	?	
mul_x
identity	??UCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp?TCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp?WCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp?VCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp?WCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOp?VCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOp?TCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp?SCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp?FCategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAdd/ReadVariableOp?ECategoricalQNetwork/CategoricalQNetwork/dense_1/MatMul/ReadVariableOp?
CCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/lambda/CastCastobservation*

DstT0*

SrcT0*/
_output_shapes
:?????????TT2E
CCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/lambda/Cast?
HCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/lambda/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  C2J
HCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/lambda/truediv/y?
FCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/lambda/truedivRealDivGCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/lambda/Cast:y:0QCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/lambda/truediv/y:output:0*
T0*/
_output_shapes
:?????????TT2H
FCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/lambda/truediv?
TCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOpReadVariableOp]categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02V
TCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp?
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2DConv2DJCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/lambda/truediv:z:0\CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2G
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2D?
UCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOpReadVariableOp^categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02W
UCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp?
FCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAddBiasAddNCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2D:output:0]CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2H
FCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAdd?
CCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/ReluReluOCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2E
CCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Relu?
VCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOpReadVariableOp_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02X
VCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp?
GCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2DConv2DQCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Relu:activations:0^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		@*
paddingVALID*
strides
2I
GCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2D?
WCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp`categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02Y
WCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp?
HCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAddBiasAddPCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2D:output:0_CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		@2J
HCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAdd?
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/ReluReluQCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????		@2G
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Relu?
VCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOpReadVariableOp_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02X
VCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOp?
GCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2DConv2DSCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Relu:activations:0^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2I
GCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2D?
WCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp`categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02Y
WCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOp?
HCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAddBiasAddPCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2D:output:0_CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2J
HCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAdd?
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/ReluReluQCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2G
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Relu?
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2G
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/flatten/Const?
GCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/flatten/ReshapeReshapeSCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Relu:activations:0NCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2I
GCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/flatten/Reshape?
SCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpReadVariableOp\categoricalqnetwork_categoricalqnetwork_encodingnetwork_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02U
SCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp?
DCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMulMatMulPCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/flatten/Reshape:output:0[CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2F
DCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMul?
TCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpReadVariableOp]categoricalqnetwork_categoricalqnetwork_encodingnetwork_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02V
TCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp?
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAddBiasAddNCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMul:product:0\CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2G
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAdd?
BCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/ReluReluNCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2D
BCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/Relu?
ECategoricalQNetwork/CategoricalQNetwork/dense_1/MatMul/ReadVariableOpReadVariableOpNcategoricalqnetwork_categoricalqnetwork_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02G
ECategoricalQNetwork/CategoricalQNetwork/dense_1/MatMul/ReadVariableOp?
6CategoricalQNetwork/CategoricalQNetwork/dense_1/MatMulMatMulPCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/Relu:activations:0MCategoricalQNetwork/CategoricalQNetwork/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????28
6CategoricalQNetwork/CategoricalQNetwork/dense_1/MatMul?
FCategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAdd/ReadVariableOpReadVariableOpOcategoricalqnetwork_categoricalqnetwork_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02H
FCategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAdd/ReadVariableOp?
7CategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAddBiasAdd@CategoricalQNetwork/CategoricalQNetwork/dense_1/MatMul:product:0NCategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????29
7CategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAdd?
!CategoricalQNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   3   2#
!CategoricalQNetwork/Reshape/shape?
CategoricalQNetwork/ReshapeReshape@CategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAdd:output:0*CategoricalQNetwork/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????32
CategoricalQNetwork/Reshapey
SoftmaxSoftmax$CategoricalQNetwork/Reshape:output:0*
T0*+
_output_shapes
:?????????32	
Softmaxa
mulMulmul_xSoftmax:softmax:0*
T0*+
_output_shapes
:?????????32
muly
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Sum/reduction_indicesl
SumSummul:z:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
Sum?
#Categorical_1/mode/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#Categorical_1/mode/ArgMax/dimension?
Categorical_1/mode/ArgMaxArgMaxSum:output:0,Categorical_1/mode/ArgMax/dimension:output:0*
T0*#
_output_shapes
:?????????2
Categorical_1/mode/ArgMaxj
Deterministic/atolConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
Deterministic/atolj
Deterministic/rtolConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
Deterministic/rtoln
Deterministic_1/atolConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
Deterministic_1/atoln
Deterministic_1/rtolConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
Deterministic_1/rtol?
IdentityIdentity"Categorical_1/mode/ArgMax:output:0V^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOpU^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOpX^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOpW^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOpX^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOpW^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOpU^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpT^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpG^CategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAdd/ReadVariableOpF^CategoricalQNetwork/CategoricalQNetwork/dense_1/MatMul/ReadVariableOp*
T0	*#
_output_shapes
:?????????2

Identityn
Deterministic_2/atolConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
Deterministic_2/atoln
Deterministic_2/rtolConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
Deterministic_2/rtol"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:?????????:?????????:?????????:?????????TT: : : : : : : : : : :32?
UCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOpUCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp2?
TCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOpTCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp2?
WCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOpWCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp2?
VCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOpVCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp2?
WCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOpWCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOp2?
VCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOpVCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOp2?
TCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpTCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp2?
SCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpSCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp2?
FCategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAdd/ReadVariableOpFCategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAdd/ReadVariableOp2?
ECategoricalQNetwork/CategoricalQNetwork/dense_1/MatMul/ReadVariableOpECategoricalQNetwork/CategoricalQNetwork/dense_1/MatMul/ReadVariableOp:N J
#
_output_shapes
:?????????
#
_user_specified_name	step_type:KG
#
_output_shapes
:?????????
 
_user_specified_namereward:MI
#
_output_shapes
:?????????
"
_user_specified_name
discount:\X
/
_output_shapes
:?????????TT
%
_user_specified_nameobservation: 

_output_shapes
:3
?
=
+__inference_function_with_signature_1638526

batch_size?
PartitionedCallPartitionedCall
batch_size*
Tin
2*

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_get_initial_state_16385252
PartitionedCall*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
?
f
&__inference_signature_wrapper_25781456
unknown:	 
identity	??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallunknown*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *4
f/R-
+__inference_function_with_signature_16385382
StatefulPartitionedCall}
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0	*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 22
StatefulPartitionedCallStatefulPartitionedCall
?*
?
!__inference__traced_save_25781522
file_prefix'
#savev2_variable_read_readvariableop	d
`savev2_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_kernel_read_readvariableopb
^savev2_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_bias_read_readvariableopf
bsavev2_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_1_kernel_read_readvariableopd
`savev2_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_1_bias_read_readvariableopf
bsavev2_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_2_kernel_read_readvariableopd
`savev2_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_2_bias_read_readvariableopc
_savev2_categoricalqnetwork_categoricalqnetwork_encodingnetwork_dense_kernel_read_readvariableopa
]savev2_categoricalqnetwork_categoricalqnetwork_encodingnetwork_dense_bias_read_readvariableopU
Qsavev2_categoricalqnetwork_categoricalqnetwork_dense_1_kernel_read_readvariableopS
Osavev2_categoricalqnetwork_categoricalqnetwork_dense_1_bias_read_readvariableop
savev2_const_1

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B%train_step/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/0/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/1/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/2/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/3/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/4/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/5/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/6/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/7/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/8/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/9/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*+
value"B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0#savev2_variable_read_readvariableop`savev2_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_kernel_read_readvariableop^savev2_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_bias_read_readvariableopbsavev2_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_1_kernel_read_readvariableop`savev2_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_1_bias_read_readvariableopbsavev2_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_2_kernel_read_readvariableop`savev2_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_2_bias_read_readvariableop_savev2_categoricalqnetwork_categoricalqnetwork_encodingnetwork_dense_kernel_read_readvariableop]savev2_categoricalqnetwork_categoricalqnetwork_encodingnetwork_dense_bias_read_readvariableopQsavev2_categoricalqnetwork_categoricalqnetwork_dense_1_kernel_read_readvariableopOsavev2_categoricalqnetwork_categoricalqnetwork_dense_1_bias_read_readvariableopsavev2_const_1"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapesv
t: : : : : @:@:@@:@:
??:?:
??:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:&"
 
_output_shapes
:
??:!	

_output_shapes	
:?:&
"
 
_output_shapes
:
??:!

_output_shapes	
:?:

_output_shapes
: 
?
c
__inference_<lambda>_1485839!
readvariableop_resource:	 
identity	??ReadVariableOpp
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	2
ReadVariableOpj
IdentityIdentityReadVariableOp:value:0^ReadVariableOp*
T0	*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2 
ReadVariableOpReadVariableOp
??
?
)__inference_polymorphic_action_fn_1638632
	step_type

reward
discount
observationw
]categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_conv2d_readvariableop_resource: l
^categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_biasadd_readvariableop_resource: y
_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_1_conv2d_readvariableop_resource: @n
`categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_1_biasadd_readvariableop_resource:@y
_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_2_conv2d_readvariableop_resource:@@n
`categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_2_biasadd_readvariableop_resource:@p
\categoricalqnetwork_categoricalqnetwork_encodingnetwork_dense_matmul_readvariableop_resource:
??l
]categoricalqnetwork_categoricalqnetwork_encodingnetwork_dense_biasadd_readvariableop_resource:	?b
Ncategoricalqnetwork_categoricalqnetwork_dense_1_matmul_readvariableop_resource:
??^
Ocategoricalqnetwork_categoricalqnetwork_dense_1_biasadd_readvariableop_resource:	?	
mul_x
identity	??UCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp?TCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp?WCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp?VCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp?WCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOp?VCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOp?TCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp?SCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp?FCategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAdd/ReadVariableOp?ECategoricalQNetwork/CategoricalQNetwork/dense_1/MatMul/ReadVariableOp?
CCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/lambda/CastCastobservation*

DstT0*

SrcT0*/
_output_shapes
:?????????TT2E
CCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/lambda/Cast?
HCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/lambda/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  C2J
HCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/lambda/truediv/y?
FCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/lambda/truedivRealDivGCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/lambda/Cast:y:0QCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/lambda/truediv/y:output:0*
T0*/
_output_shapes
:?????????TT2H
FCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/lambda/truediv?
TCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOpReadVariableOp]categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02V
TCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp?
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2DConv2DJCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/lambda/truediv:z:0\CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2G
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2D?
UCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOpReadVariableOp^categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02W
UCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp?
FCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAddBiasAddNCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2D:output:0]CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2H
FCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAdd?
CCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/ReluReluOCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2E
CCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Relu?
VCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOpReadVariableOp_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02X
VCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp?
GCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2DConv2DQCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Relu:activations:0^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		@*
paddingVALID*
strides
2I
GCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2D?
WCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp`categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02Y
WCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp?
HCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAddBiasAddPCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2D:output:0_CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		@2J
HCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAdd?
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/ReluReluQCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????		@2G
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Relu?
VCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOpReadVariableOp_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02X
VCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOp?
GCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2DConv2DSCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Relu:activations:0^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2I
GCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2D?
WCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp`categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02Y
WCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOp?
HCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAddBiasAddPCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2D:output:0_CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2J
HCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAdd?
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/ReluReluQCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2G
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Relu?
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2G
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/flatten/Const?
GCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/flatten/ReshapeReshapeSCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Relu:activations:0NCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2I
GCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/flatten/Reshape?
SCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpReadVariableOp\categoricalqnetwork_categoricalqnetwork_encodingnetwork_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02U
SCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp?
DCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMulMatMulPCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/flatten/Reshape:output:0[CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2F
DCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMul?
TCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpReadVariableOp]categoricalqnetwork_categoricalqnetwork_encodingnetwork_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02V
TCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp?
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAddBiasAddNCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMul:product:0\CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2G
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAdd?
BCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/ReluReluNCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2D
BCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/Relu?
ECategoricalQNetwork/CategoricalQNetwork/dense_1/MatMul/ReadVariableOpReadVariableOpNcategoricalqnetwork_categoricalqnetwork_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02G
ECategoricalQNetwork/CategoricalQNetwork/dense_1/MatMul/ReadVariableOp?
6CategoricalQNetwork/CategoricalQNetwork/dense_1/MatMulMatMulPCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/Relu:activations:0MCategoricalQNetwork/CategoricalQNetwork/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????28
6CategoricalQNetwork/CategoricalQNetwork/dense_1/MatMul?
FCategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAdd/ReadVariableOpReadVariableOpOcategoricalqnetwork_categoricalqnetwork_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02H
FCategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAdd/ReadVariableOp?
7CategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAddBiasAdd@CategoricalQNetwork/CategoricalQNetwork/dense_1/MatMul:product:0NCategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????29
7CategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAdd?
!CategoricalQNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   3   2#
!CategoricalQNetwork/Reshape/shape?
CategoricalQNetwork/ReshapeReshape@CategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAdd:output:0*CategoricalQNetwork/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????32
CategoricalQNetwork/Reshapey
SoftmaxSoftmax$CategoricalQNetwork/Reshape:output:0*
T0*+
_output_shapes
:?????????32	
Softmaxa
mulMulmul_xSoftmax:softmax:0*
T0*+
_output_shapes
:?????????32
muly
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Sum/reduction_indicesl
SumSummul:z:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
Sum?
#Categorical_1/mode/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#Categorical_1/mode/ArgMax/dimension?
Categorical_1/mode/ArgMaxArgMaxSum:output:0,Categorical_1/mode/ArgMax/dimension:output:0*
T0*#
_output_shapes
:?????????2
Categorical_1/mode/ArgMaxj
Deterministic/atolConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
Deterministic/atolj
Deterministic/rtolConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
Deterministic/rtol?
#Deterministic_1/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 2%
#Deterministic_1/sample/sample_shape?
Deterministic_1/sample/ShapeShape"Categorical_1/mode/ArgMax:output:0*
T0	*
_output_shapes
:2
Deterministic_1/sample/Shape?
'Deterministic_1/sample/BroadcastArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 2)
'Deterministic_1/sample/BroadcastArgs/s1?
$Deterministic_1/sample/BroadcastArgsBroadcastArgs%Deterministic_1/sample/Shape:output:00Deterministic_1/sample/BroadcastArgs/s1:output:0*
_output_shapes
:2&
$Deterministic_1/sample/BroadcastArgs
Deterministic_1/sample/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
Deterministic_1/sample/Const?
&Deterministic_1/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:2(
&Deterministic_1/sample/concat/values_0?
"Deterministic_1/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"Deterministic_1/sample/concat/axis?
Deterministic_1/sample/concatConcatV2/Deterministic_1/sample/concat/values_0:output:0)Deterministic_1/sample/BroadcastArgs:r0:0%Deterministic_1/sample/Const:output:0+Deterministic_1/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Deterministic_1/sample/concat?
"Deterministic_1/sample/BroadcastToBroadcastTo"Categorical_1/mode/ArgMax:output:0&Deterministic_1/sample/concat:output:0*
T0	*'
_output_shapes
:?????????2$
"Deterministic_1/sample/BroadcastTo?
Deterministic_1/sample/Shape_1Shape+Deterministic_1/sample/BroadcastTo:output:0*
T0	*
_output_shapes
:2 
Deterministic_1/sample/Shape_1?
*Deterministic_1/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*Deterministic_1/sample/strided_slice/stack?
,Deterministic_1/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,Deterministic_1/sample/strided_slice/stack_1?
,Deterministic_1/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,Deterministic_1/sample/strided_slice/stack_2?
$Deterministic_1/sample/strided_sliceStridedSlice'Deterministic_1/sample/Shape_1:output:03Deterministic_1/sample/strided_slice/stack:output:05Deterministic_1/sample/strided_slice/stack_1:output:05Deterministic_1/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2&
$Deterministic_1/sample/strided_slice?
$Deterministic_1/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$Deterministic_1/sample/concat_1/axis?
Deterministic_1/sample/concat_1ConcatV2,Deterministic_1/sample/sample_shape:output:0-Deterministic_1/sample/strided_slice:output:0-Deterministic_1/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2!
Deterministic_1/sample/concat_1?
Deterministic_1/sample/ReshapeReshape+Deterministic_1/sample/BroadcastTo:output:0(Deterministic_1/sample/concat_1:output:0*
T0	*#
_output_shapes
:?????????2 
Deterministic_1/sample/Reshapet
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0	*
value	B	 R2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum'Deterministic_1/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0	*#
_output_shapes
:?????????2
clip_by_value/Minimumd
clip_by_value/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0	*#
_output_shapes
:?????????2
clip_by_value?
IdentityIdentityclip_by_value:z:0V^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOpU^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOpX^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOpW^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOpX^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOpW^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOpU^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpT^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpG^CategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAdd/ReadVariableOpF^CategoricalQNetwork/CategoricalQNetwork/dense_1/MatMul/ReadVariableOp*
T0	*#
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:?????????:?????????:?????????:?????????TT: : : : : : : : : : :32?
UCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOpUCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp2?
TCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOpTCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp2?
WCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOpWCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp2?
VCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOpVCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp2?
WCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOpWCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOp2?
VCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOpVCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOp2?
TCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpTCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp2?
SCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpSCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp2?
FCategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAdd/ReadVariableOpFCategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAdd/ReadVariableOp2?
ECategoricalQNetwork/CategoricalQNetwork/dense_1/MatMul/ReadVariableOpECategoricalQNetwork/CategoricalQNetwork/dense_1/MatMul/ReadVariableOp:N J
#
_output_shapes
:?????????
#
_user_specified_name	step_type:KG
#
_output_shapes
:?????????
 
_user_specified_namereward:MI
#
_output_shapes
:?????????
"
_user_specified_name
discount:\X
/
_output_shapes
:?????????TT
%
_user_specified_nameobservation: 

_output_shapes
:3
?
?
&__inference_signature_wrapper_25781443
discount
observation

reward
	step_type!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@
	unknown_5:
??
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9
identity	??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall	step_typerewarddiscountobservationunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2	*
_collective_manager_ids
 *#
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *4
f/R-
+__inference_function_with_signature_16384872
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0	*#
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:?????????:?????????TT:?????????:?????????: : : : : : : : : : :322
StatefulPartitionedCallStatefulPartitionedCall:O K
#
_output_shapes
:?????????
$
_user_specified_name
0/discount:^Z
/
_output_shapes
:?????????TT
'
_user_specified_name0/observation:MI
#
_output_shapes
:?????????
"
_user_specified_name
0/reward:PL
#
_output_shapes
:?????????
%
_user_specified_name0/step_type: 

_output_shapes
:3
??
?
)__inference_polymorphic_action_fn_1638710
time_step_step_type
time_step_reward
time_step_discount
time_step_observationw
]categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_conv2d_readvariableop_resource: l
^categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_biasadd_readvariableop_resource: y
_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_1_conv2d_readvariableop_resource: @n
`categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_1_biasadd_readvariableop_resource:@y
_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_2_conv2d_readvariableop_resource:@@n
`categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_2_biasadd_readvariableop_resource:@p
\categoricalqnetwork_categoricalqnetwork_encodingnetwork_dense_matmul_readvariableop_resource:
??l
]categoricalqnetwork_categoricalqnetwork_encodingnetwork_dense_biasadd_readvariableop_resource:	?b
Ncategoricalqnetwork_categoricalqnetwork_dense_1_matmul_readvariableop_resource:
??^
Ocategoricalqnetwork_categoricalqnetwork_dense_1_biasadd_readvariableop_resource:	?	
mul_x
identity	??UCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp?TCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp?WCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp?VCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp?WCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOp?VCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOp?TCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp?SCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp?FCategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAdd/ReadVariableOp?ECategoricalQNetwork/CategoricalQNetwork/dense_1/MatMul/ReadVariableOp?
CCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/lambda/CastCasttime_step_observation*

DstT0*

SrcT0*/
_output_shapes
:?????????TT2E
CCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/lambda/Cast?
HCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/lambda/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  C2J
HCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/lambda/truediv/y?
FCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/lambda/truedivRealDivGCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/lambda/Cast:y:0QCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/lambda/truediv/y:output:0*
T0*/
_output_shapes
:?????????TT2H
FCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/lambda/truediv?
TCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOpReadVariableOp]categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02V
TCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp?
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2DConv2DJCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/lambda/truediv:z:0\CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2G
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2D?
UCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOpReadVariableOp^categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02W
UCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp?
FCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAddBiasAddNCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2D:output:0]CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2H
FCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAdd?
CCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/ReluReluOCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2E
CCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Relu?
VCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOpReadVariableOp_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02X
VCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp?
GCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2DConv2DQCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Relu:activations:0^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		@*
paddingVALID*
strides
2I
GCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2D?
WCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp`categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02Y
WCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp?
HCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAddBiasAddPCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2D:output:0_CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		@2J
HCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAdd?
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/ReluReluQCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????		@2G
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Relu?
VCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOpReadVariableOp_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02X
VCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOp?
GCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2DConv2DSCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Relu:activations:0^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2I
GCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2D?
WCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp`categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02Y
WCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOp?
HCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAddBiasAddPCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2D:output:0_CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2J
HCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAdd?
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/ReluReluQCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2G
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Relu?
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2G
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/flatten/Const?
GCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/flatten/ReshapeReshapeSCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Relu:activations:0NCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2I
GCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/flatten/Reshape?
SCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpReadVariableOp\categoricalqnetwork_categoricalqnetwork_encodingnetwork_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02U
SCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp?
DCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMulMatMulPCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/flatten/Reshape:output:0[CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2F
DCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMul?
TCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpReadVariableOp]categoricalqnetwork_categoricalqnetwork_encodingnetwork_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02V
TCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp?
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAddBiasAddNCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMul:product:0\CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2G
ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAdd?
BCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/ReluReluNCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2D
BCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/Relu?
ECategoricalQNetwork/CategoricalQNetwork/dense_1/MatMul/ReadVariableOpReadVariableOpNcategoricalqnetwork_categoricalqnetwork_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02G
ECategoricalQNetwork/CategoricalQNetwork/dense_1/MatMul/ReadVariableOp?
6CategoricalQNetwork/CategoricalQNetwork/dense_1/MatMulMatMulPCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/Relu:activations:0MCategoricalQNetwork/CategoricalQNetwork/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????28
6CategoricalQNetwork/CategoricalQNetwork/dense_1/MatMul?
FCategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAdd/ReadVariableOpReadVariableOpOcategoricalqnetwork_categoricalqnetwork_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02H
FCategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAdd/ReadVariableOp?
7CategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAddBiasAdd@CategoricalQNetwork/CategoricalQNetwork/dense_1/MatMul:product:0NCategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????29
7CategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAdd?
!CategoricalQNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   3   2#
!CategoricalQNetwork/Reshape/shape?
CategoricalQNetwork/ReshapeReshape@CategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAdd:output:0*CategoricalQNetwork/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????32
CategoricalQNetwork/Reshapey
SoftmaxSoftmax$CategoricalQNetwork/Reshape:output:0*
T0*+
_output_shapes
:?????????32	
Softmaxa
mulMulmul_xSoftmax:softmax:0*
T0*+
_output_shapes
:?????????32
muly
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Sum/reduction_indicesl
SumSummul:z:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
Sum?
#Categorical_1/mode/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#Categorical_1/mode/ArgMax/dimension?
Categorical_1/mode/ArgMaxArgMaxSum:output:0,Categorical_1/mode/ArgMax/dimension:output:0*
T0*#
_output_shapes
:?????????2
Categorical_1/mode/ArgMaxj
Deterministic/atolConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
Deterministic/atolj
Deterministic/rtolConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
Deterministic/rtol?
#Deterministic_1/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 2%
#Deterministic_1/sample/sample_shape?
Deterministic_1/sample/ShapeShape"Categorical_1/mode/ArgMax:output:0*
T0	*
_output_shapes
:2
Deterministic_1/sample/Shape?
'Deterministic_1/sample/BroadcastArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 2)
'Deterministic_1/sample/BroadcastArgs/s1?
$Deterministic_1/sample/BroadcastArgsBroadcastArgs%Deterministic_1/sample/Shape:output:00Deterministic_1/sample/BroadcastArgs/s1:output:0*
_output_shapes
:2&
$Deterministic_1/sample/BroadcastArgs
Deterministic_1/sample/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
Deterministic_1/sample/Const?
&Deterministic_1/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:2(
&Deterministic_1/sample/concat/values_0?
"Deterministic_1/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"Deterministic_1/sample/concat/axis?
Deterministic_1/sample/concatConcatV2/Deterministic_1/sample/concat/values_0:output:0)Deterministic_1/sample/BroadcastArgs:r0:0%Deterministic_1/sample/Const:output:0+Deterministic_1/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Deterministic_1/sample/concat?
"Deterministic_1/sample/BroadcastToBroadcastTo"Categorical_1/mode/ArgMax:output:0&Deterministic_1/sample/concat:output:0*
T0	*'
_output_shapes
:?????????2$
"Deterministic_1/sample/BroadcastTo?
Deterministic_1/sample/Shape_1Shape+Deterministic_1/sample/BroadcastTo:output:0*
T0	*
_output_shapes
:2 
Deterministic_1/sample/Shape_1?
*Deterministic_1/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*Deterministic_1/sample/strided_slice/stack?
,Deterministic_1/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,Deterministic_1/sample/strided_slice/stack_1?
,Deterministic_1/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,Deterministic_1/sample/strided_slice/stack_2?
$Deterministic_1/sample/strided_sliceStridedSlice'Deterministic_1/sample/Shape_1:output:03Deterministic_1/sample/strided_slice/stack:output:05Deterministic_1/sample/strided_slice/stack_1:output:05Deterministic_1/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2&
$Deterministic_1/sample/strided_slice?
$Deterministic_1/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$Deterministic_1/sample/concat_1/axis?
Deterministic_1/sample/concat_1ConcatV2,Deterministic_1/sample/sample_shape:output:0-Deterministic_1/sample/strided_slice:output:0-Deterministic_1/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2!
Deterministic_1/sample/concat_1?
Deterministic_1/sample/ReshapeReshape+Deterministic_1/sample/BroadcastTo:output:0(Deterministic_1/sample/concat_1:output:0*
T0	*#
_output_shapes
:?????????2 
Deterministic_1/sample/Reshapet
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0	*
value	B	 R2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum'Deterministic_1/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0	*#
_output_shapes
:?????????2
clip_by_value/Minimumd
clip_by_value/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0	*#
_output_shapes
:?????????2
clip_by_value?
IdentityIdentityclip_by_value:z:0V^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOpU^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOpX^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOpW^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOpX^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOpW^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOpU^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpT^CategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpG^CategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAdd/ReadVariableOpF^CategoricalQNetwork/CategoricalQNetwork/dense_1/MatMul/ReadVariableOp*
T0	*#
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:?????????:?????????:?????????:?????????TT: : : : : : : : : : :32?
UCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOpUCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/BiasAdd/ReadVariableOp2?
TCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOpTCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/Conv2D/ReadVariableOp2?
WCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOpWCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/BiasAdd/ReadVariableOp2?
VCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOpVCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/Conv2D/ReadVariableOp2?
WCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOpWCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/BiasAdd/ReadVariableOp2?
VCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOpVCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/Conv2D/ReadVariableOp2?
TCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpTCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp2?
SCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpSCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp2?
FCategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAdd/ReadVariableOpFCategoricalQNetwork/CategoricalQNetwork/dense_1/BiasAdd/ReadVariableOp2?
ECategoricalQNetwork/CategoricalQNetwork/dense_1/MatMul/ReadVariableOpECategoricalQNetwork/CategoricalQNetwork/dense_1/MatMul/ReadVariableOp:X T
#
_output_shapes
:?????????
-
_user_specified_nametime_step/step_type:UQ
#
_output_shapes
:?????????
*
_user_specified_nametime_step/reward:WS
#
_output_shapes
:?????????
,
_user_specified_nametime_step/discount:fb
/
_output_shapes
:?????????TT
/
_user_specified_nametime_step/observation: 

_output_shapes
:3
?
8
&__inference_signature_wrapper_25781448

batch_size?
PartitionedCallPartitionedCall
batch_size*
Tin
2*

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *4
f/R-
+__inference_function_with_signature_16385262
PartitionedCall*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
?
k
+__inference_function_with_signature_1638538
unknown:	 
identity	??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallunknown*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *%
f R
__inference_<lambda>_14858392
StatefulPartitionedCall}
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0	*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 22
StatefulPartitionedCallStatefulPartitionedCall
?
7
%__inference_get_initial_state_1638525

batch_size*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
?9
?

$__inference__traced_restore_25781565
file_prefix#
assignvariableop_variable:	 r
Xassignvariableop_1_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_kernel: d
Vassignvariableop_2_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_bias: t
Zassignvariableop_3_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_1_kernel: @f
Xassignvariableop_4_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_1_bias:@t
Zassignvariableop_5_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_2_kernel:@@f
Xassignvariableop_6_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_2_bias:@k
Wassignvariableop_7_categoricalqnetwork_categoricalqnetwork_encodingnetwork_dense_kernel:
??d
Uassignvariableop_8_categoricalqnetwork_categoricalqnetwork_encodingnetwork_dense_bias:	?]
Iassignvariableop_9_categoricalqnetwork_categoricalqnetwork_dense_1_kernel:
??W
Hassignvariableop_10_categoricalqnetwork_categoricalqnetwork_dense_1_bias:	?
identity_12??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B%train_step/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/0/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/1/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/2/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/3/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/4/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/5/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/6/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/7/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/8/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/9/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*+
value"B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*D
_output_shapes2
0::::::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_variableIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpXassignvariableop_1_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpVassignvariableop_2_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpZassignvariableop_3_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_1_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpXassignvariableop_4_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_1_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpZassignvariableop_5_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_2_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpXassignvariableop_6_categoricalqnetwork_categoricalqnetwork_encodingnetwork_conv2d_2_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpWassignvariableop_7_categoricalqnetwork_categoricalqnetwork_encodingnetwork_dense_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpUassignvariableop_8_categoricalqnetwork_categoricalqnetwork_encodingnetwork_dense_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpIassignvariableop_9_categoricalqnetwork_categoricalqnetwork_dense_1_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpHassignvariableop_10_categoricalqnetwork_categoricalqnetwork_dense_1_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_109
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_11Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_11?
Identity_12IdentityIdentity_11:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_12"#
identity_12Identity_12:output:0*+
_input_shapes
: : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
7
%__inference_get_initial_state_1638774

batch_size*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
?
?
+__inference_function_with_signature_1638487
	step_type

reward
discount
observation!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@
	unknown_5:
??
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9
identity	??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall	step_typerewarddiscountobservationunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2	*
_collective_manager_ids
 *#
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *2
f-R+
)__inference_polymorphic_action_fn_16384622
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0	*#
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:?????????:?????????:?????????:?????????TT: : : : : : : : : : :322
StatefulPartitionedCallStatefulPartitionedCall:P L
#
_output_shapes
:?????????
%
_user_specified_name0/step_type:MI
#
_output_shapes
:?????????
"
_user_specified_name
0/reward:OK
#
_output_shapes
:?????????
$
_user_specified_name
0/discount:^Z
/
_output_shapes
:?????????TT
'
_user_specified_name0/observation: 

_output_shapes
:3"?L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
action?
4

0/discount&
action_0/discount:0?????????
F
0/observation5
action_0/observation:0?????????TT
0
0/reward$
action_0/reward:0?????????
6
0/step_type'
action_0/step_type:0?????????6
action,
StatefulPartitionedCall:0	?????????tensorflow/serving/predict*e
get_initial_stateP
2

batch_size$
get_initial_state_batch_size:0 tensorflow/serving/predict*,
get_metadatatensorflow/serving/predict*Z
get_train_stepH*
int64!
StatefulPartitionedCall_1:0	 tensorflow/serving/predict:??
?

train_step
metadata
model_variables
_all_assets

signatures

xaction
ydistribution
zget_initial_state
{get_metadata
|get_train_step"
_generic_user_object
:	 (2Variable
 "
trackable_dict_wrapper
g
0
1
2
	3

4
5
6
7
8
9"
trackable_tuple_wrapper
'
0"
trackable_list_wrapper
a

}action
~get_initial_state
get_train_step
?get_metadata"
signature_map
_:] 2ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/kernel
Q:O 2CCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d/bias
a:_ @2GCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/kernel
S:Q@2ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_1/bias
a:_@@2GCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/kernel
S:Q@2ECategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/conv2d_2/bias
X:V
??2DCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/kernel
Q:O?2BCategoricalQNetwork/CategoricalQNetwork/EncodingNetwork/dense/bias
J:H
??26CategoricalQNetwork/CategoricalQNetwork/dense_1/kernel
C:A?24CategoricalQNetwork/CategoricalQNetwork/dense_1/bias
1
ref
1"
trackable_tuple_wrapper
.

_q_network"
_generic_user_object
?

_q_network
	variables
regularization_losses
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "CategoricalQNetwork", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "CategoricalQNetwork", "config": {"layer was saved without config": true}}
?
_encoder
_q_value_layer
	variables
regularization_losses
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "CategoricalQNetwork", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "QNetwork", "config": {"layer was saved without config": true}}
f
0
1
2
	3

4
5
6
7
8
9"
trackable_list_wrapper
 "
trackable_list_wrapper
f
0
1
2
	3

4
5
6
7
8
9"
trackable_list_wrapper
?
layer_metrics
	variables
non_trainable_variables
regularization_losses
trainable_variables
 layer_regularization_losses

!layers
"metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
#_flat_preprocessing_layers
$_postprocessing_layers
%	variables
&regularization_losses
'trainable_variables
(	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "EncodingNetwork", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "EncodingNetwork", "config": {"layer was saved without config": true}}
?

kernel
bias
)	variables
*regularization_losses
+trainable_variables
,	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 306, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.03, "maxval": 0.03, "seed": null}}, "bias_initializer": {"class_name": "Constant", "config": {"value": -0.2}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 512]}}
f
0
1
2
	3

4
5
6
7
8
9"
trackable_list_wrapper
 "
trackable_list_wrapper
f
0
1
2
	3

4
5
6
7
8
9"
trackable_list_wrapper
?
-layer_metrics
	variables
.non_trainable_variables
regularization_losses
trainable_variables
/layer_regularization_losses

0layers
1metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
20"
trackable_list_wrapper
C
30
41
52
63
74"
trackable_list_wrapper
X
0
1
2
	3

4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
X
0
1
2
	3

4
5
6
7"
trackable_list_wrapper
?
8layer_metrics
%	variables
9non_trainable_variables
&regularization_losses
'trainable_variables
:layer_regularization_losses

;layers
<metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
=layer_metrics
)	variables
>non_trainable_variables
*regularization_losses
+trainable_variables
?layer_regularization_losses

@layers
Ametrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
B	variables
Cregularization_losses
Dtrainable_variables
E	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "lambda", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Lambda", "config": {"name": "lambda", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAAAAAAEAAAAEAAAAQwAAAHMSAAAAdACgAXwAdAJqA6ECZAEbAFMAKQJO5wAAAAAA\n4G9AKQTaAnRm2gRjYXN02gJucNoHZmxvYXQzMikB2gNvYnOpAHIHAAAAeh88aXB5dGhvbi1pbnB1\ndC0xMi1lNmE2ZWYwNWYwOTc+2gg8bGFtYmRhPgEAAADzAAAAAA==\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}}
?


kernel
bias
F	variables
Gregularization_losses
Htrainable_variables
I	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [8, 8]}, "strides": {"class_name": "__tuple__", "items": [4, 4]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 2.0, "mode": "fan_in", "distribution": "truncated_normal", "seed": null, "dtype": "float32"}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 4}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 84, 84, 4]}}
?


kernel
	bias
J	variables
Kregularization_losses
Ltrainable_variables
M	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 2.0, "mode": "fan_in", "distribution": "truncated_normal", "seed": null, "dtype": "float32"}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 20, 20, 32]}}
?



kernel
bias
N	variables
Oregularization_losses
Ptrainable_variables
Q	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 2.0, "mode": "fan_in", "distribution": "truncated_normal", "seed": null, "dtype": "float32"}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 9, 9, 64]}}
?
R	variables
Sregularization_losses
Ttrainable_variables
U	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

kernel
bias
V	variables
Wregularization_losses
Xtrainable_variables
Y	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 2.0, "mode": "fan_in", "distribution": "truncated_normal", "seed": null, "dtype": "float32"}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 3136}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 3136]}}
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
J
20
31
42
53
64
75"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Zlayer_metrics
B	variables
[non_trainable_variables
Cregularization_losses
Dtrainable_variables
\layer_regularization_losses

]layers
^metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
_layer_metrics
F	variables
`non_trainable_variables
Gregularization_losses
Htrainable_variables
alayer_regularization_losses

blayers
cmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
0
	1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
	1"
trackable_list_wrapper
?
dlayer_metrics
J	variables
enon_trainable_variables
Kregularization_losses
Ltrainable_variables
flayer_regularization_losses

glayers
hmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.

0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.

0
1"
trackable_list_wrapper
?
ilayer_metrics
N	variables
jnon_trainable_variables
Oregularization_losses
Ptrainable_variables
klayer_regularization_losses

llayers
mmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
nlayer_metrics
R	variables
onon_trainable_variables
Sregularization_losses
Ttrainable_variables
player_regularization_losses

qlayers
rmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
slayer_metrics
V	variables
tnon_trainable_variables
Wregularization_losses
Xtrainable_variables
ulayer_regularization_losses

vlayers
wmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?2?
)__inference_polymorphic_action_fn_1638632
)__inference_polymorphic_action_fn_1638710?
???
FullArgSpec(
args ?
j	time_step
jpolicy_state
varargs
 
varkw
 
defaults?
? 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_polymorphic_distribution_fn_1638771?
???
FullArgSpec(
args ?
j	time_step
jpolicy_state
varargs
 
varkw
 
defaults?
? 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_get_initial_state_1638774?
???
FullArgSpec!
args?
jself
j
batch_size
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
__inference_<lambda>_1485842"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
__inference_<lambda>_1485839"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
&__inference_signature_wrapper_25781443
0/discount0/observation0/reward0/step_type"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
&__inference_signature_wrapper_25781448
batch_size"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
&__inference_signature_wrapper_25781456"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
&__inference_signature_wrapper_25781460"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpecL
argsD?A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults?

 
? 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpecL
argsD?A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults?

 
? 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpecL
argsD?A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults?

 
? 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpecL
argsD?A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults?

 
? 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpecL
argsD?A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults?

 
? 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpecL
argsD?A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults?

 
? 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
	J
Const;
__inference_<lambda>_1485839?

? 
? "? 	4
__inference_<lambda>_1485842?

? 
? "? R
%__inference_get_initial_state_1638774)"?
?
?

batch_size 
? "? ?
)__inference_polymorphic_action_fn_1638632?	
????
???
???
TimeStep,
	step_type?
	step_type?????????&
reward?
reward?????????*
discount?
discount?????????<
observation-?*
observation?????????TT
? 
? "R?O

PolicyStep&
action?
action?????????	
state? 
info? ?
)__inference_polymorphic_action_fn_1638710?	
????
???
???
TimeStep6
	step_type)?&
time_step/step_type?????????0
reward&?#
time_step/reward?????????4
discount(?%
time_step/discount?????????F
observation7?4
time_step/observation?????????TT
? 
? "R?O

PolicyStep&
action?
action?????????	
state? 
info? ?
/__inference_polymorphic_distribution_fn_1638771?	
????
???
???
TimeStep,
	step_type?
	step_type?????????&
reward?
reward?????????*
discount?
discount?????????<
observation-?*
observation?????????TT
? 
? "???

PolicyStep?
action?????Ã}?z
`
C?@
"j tf_agents.policies.greedy_policy
jDeterministicWithLogProb
*?'
%
loc?
Identity?????????	
? _TFPTypeSpec
state? 
info? ?
&__inference_signature_wrapper_25781443?	
????
? 
???
.

0/discount ?

0/discount?????????
@
0/observation/?,
0/observation?????????TT
*
0/reward?
0/reward?????????
0
0/step_type!?
0/step_type?????????"+?(
&
action?
action?????????	a
&__inference_signature_wrapper_2578144870?-
? 
&?#
!

batch_size?

batch_size "? Z
&__inference_signature_wrapper_257814560?

? 
? "?

int64?
int64 	>
&__inference_signature_wrapper_25781460?

? 
? "? 