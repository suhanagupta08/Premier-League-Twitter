хў*
гЄ
B
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
Ѕ
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
О
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
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
і
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
-
Tanh
x"T
y"T"
Ttype:

2

TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintџџџџџџџџџ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.4.02v2.4.0-rc4-71-g582c8d236cb8џ)

embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:ШЃ*'
shared_nameembedding_1/embeddings

*embedding_1/embeddings/Read/ReadVariableOpReadVariableOpembedding_1/embeddings*!
_output_shapes
:ШЃ*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ф*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	Ф*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0

lstm_1/lstm_cell_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
**
shared_namelstm_1/lstm_cell_1/kernel

-lstm_1/lstm_cell_1/kernel/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell_1/kernel* 
_output_shapes
:
*
dtype0
Є
#lstm_1/lstm_cell_1/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ф*4
shared_name%#lstm_1/lstm_cell_1/recurrent_kernel

7lstm_1/lstm_cell_1/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_1/lstm_cell_1/recurrent_kernel* 
_output_shapes
:
Ф*
dtype0

lstm_1/lstm_cell_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_namelstm_1/lstm_cell_1/bias

+lstm_1/lstm_cell_1/bias/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell_1/bias*
_output_shapes	
:*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/embedding_1/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ШЃ*.
shared_nameAdam/embedding_1/embeddings/m

1Adam/embedding_1/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_1/embeddings/m*!
_output_shapes
:ШЃ*
dtype0

Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ф*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes
:	Ф*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0

 Adam/lstm_1/lstm_cell_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*1
shared_name" Adam/lstm_1/lstm_cell_1/kernel/m

4Adam/lstm_1/lstm_cell_1/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_1/lstm_cell_1/kernel/m* 
_output_shapes
:
*
dtype0
В
*Adam/lstm_1/lstm_cell_1/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ф*;
shared_name,*Adam/lstm_1/lstm_cell_1/recurrent_kernel/m
Ћ
>Adam/lstm_1/lstm_cell_1/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_1/lstm_cell_1/recurrent_kernel/m* 
_output_shapes
:
Ф*
dtype0

Adam/lstm_1/lstm_cell_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/lstm_1/lstm_cell_1/bias/m

2Adam/lstm_1/lstm_cell_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_1/lstm_cell_1/bias/m*
_output_shapes	
:*
dtype0

Adam/embedding_1/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ШЃ*.
shared_nameAdam/embedding_1/embeddings/v

1Adam/embedding_1/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_1/embeddings/v*!
_output_shapes
:ШЃ*
dtype0

Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ф*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes
:	Ф*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0

 Adam/lstm_1/lstm_cell_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*1
shared_name" Adam/lstm_1/lstm_cell_1/kernel/v

4Adam/lstm_1/lstm_cell_1/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_1/lstm_cell_1/kernel/v* 
_output_shapes
:
*
dtype0
В
*Adam/lstm_1/lstm_cell_1/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ф*;
shared_name,*Adam/lstm_1/lstm_cell_1/recurrent_kernel/v
Ћ
>Adam/lstm_1/lstm_cell_1/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_1/lstm_cell_1/recurrent_kernel/v* 
_output_shapes
:
Ф*
dtype0

Adam/lstm_1/lstm_cell_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/lstm_1/lstm_cell_1/bias/v

2Adam/lstm_1/lstm_cell_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_1/lstm_cell_1/bias/v*
_output_shapes	
:*
dtype0

NoOpNoOp
р*
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0**
value*B* B*
ѓ
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
	variables
regularization_losses
trainable_variables
		keras_api


signatures
b

embeddings
	variables
regularization_losses
trainable_variables
	keras_api
R
	variables
regularization_losses
trainable_variables
	keras_api
l
cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
Ќ
 iter

!beta_1

"beta_2
	#decay
$learning_ratemVmWmX%mY&mZ'm[v\v]v^%v_&v`'va
*
0
%1
&2
'3
4
5
 
*
0
%1
&2
'3
4
5
­
(layer_metrics
	variables
regularization_losses

)layers
*non_trainable_variables
trainable_variables
+layer_regularization_losses
,metrics
 
fd
VARIABLE_VALUEembedding_1/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
­
-layer_metrics
	variables
regularization_losses

.layers
/non_trainable_variables
trainable_variables
0layer_regularization_losses
1metrics
 
 
 
­
2layer_metrics
	variables
regularization_losses

3layers
4non_trainable_variables
trainable_variables
5layer_regularization_losses
6metrics
~

%kernel
&recurrent_kernel
'bias
7	variables
8regularization_losses
9trainable_variables
:	keras_api
 

%0
&1
'2
 

%0
&1
'2
Й
;layer_metrics
	variables
regularization_losses

<layers
=non_trainable_variables

>states
trainable_variables
?layer_regularization_losses
@metrics
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
Alayer_metrics
	variables
regularization_losses

Blayers
Cnon_trainable_variables
trainable_variables
Dlayer_regularization_losses
Emetrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_1/lstm_cell_1/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE#lstm_1/lstm_cell_1/recurrent_kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUElstm_1/lstm_cell_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
3
 
 

F0
G1
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

%0
&1
'2
 

%0
&1
'2
­
Hlayer_metrics
7	variables
8regularization_losses

Ilayers
Jnon_trainable_variables
9trainable_variables
Klayer_regularization_losses
Lmetrics
 

0
 
 
 
 
 
 
 
 
 
4
	Mtotal
	Ncount
O	variables
P	keras_api
D
	Qtotal
	Rcount
S
_fn_kwargs
T	variables
U	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

M0
N1

O	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

Q0
R1

T	variables

VARIABLE_VALUEAdam/embedding_1/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_1/lstm_cell_1/kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/lstm_1/lstm_cell_1/recurrent_kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/lstm_1/lstm_cell_1/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/embedding_1/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_1/lstm_cell_1/kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/lstm_1/lstm_cell_1/recurrent_kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/lstm_1/lstm_cell_1/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

!serving_default_embedding_1_inputPlaceholder*'
_output_shapes
:џџџџџџџџџ+*
dtype0*
shape:џџџџџџџџџ+
ж
StatefulPartitionedCallStatefulPartitionedCall!serving_default_embedding_1_inputembedding_1/embeddingslstm_1/lstm_cell_1/kernellstm_1/lstm_cell_1/bias#lstm_1/lstm_cell_1/recurrent_kerneldense_1/kerneldense_1/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_48733
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
З
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*embedding_1/embeddings/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp-lstm_1/lstm_cell_1/kernel/Read/ReadVariableOp7lstm_1/lstm_cell_1/recurrent_kernel/Read/ReadVariableOp+lstm_1/lstm_cell_1/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp1Adam/embedding_1/embeddings/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp4Adam/lstm_1/lstm_cell_1/kernel/m/Read/ReadVariableOp>Adam/lstm_1/lstm_cell_1/recurrent_kernel/m/Read/ReadVariableOp2Adam/lstm_1/lstm_cell_1/bias/m/Read/ReadVariableOp1Adam/embedding_1/embeddings/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp4Adam/lstm_1/lstm_cell_1/kernel/v/Read/ReadVariableOp>Adam/lstm_1/lstm_cell_1/recurrent_kernel/v/Read/ReadVariableOp2Adam/lstm_1/lstm_cell_1/bias/v/Read/ReadVariableOpConst*(
Tin!
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference__traced_save_51251

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_1/embeddingsdense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_1/lstm_cell_1/kernel#lstm_1/lstm_cell_1/recurrent_kernellstm_1/lstm_cell_1/biastotalcounttotal_1count_1Adam/embedding_1/embeddings/mAdam/dense_1/kernel/mAdam/dense_1/bias/m Adam/lstm_1/lstm_cell_1/kernel/m*Adam/lstm_1/lstm_cell_1/recurrent_kernel/mAdam/lstm_1/lstm_cell_1/bias/mAdam/embedding_1/embeddings/vAdam/dense_1/kernel/vAdam/dense_1/bias/v Adam/lstm_1/lstm_cell_1/kernel/v*Adam/lstm_1/lstm_cell_1/recurrent_kernel/vAdam/lstm_1/lstm_cell_1/bias/v*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__traced_restore_51342(
Ц
l
3__inference_spatial_dropout1d_1_layer_call_fn_49499

inputs
identityЂStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ+* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_478992
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:џџџџџџџџџ+2

Identity"
identityIdentity:output:0*+
_input_shapes
:џџџџџџџџџ+22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџ+
 
_user_specified_nameinputs
іѕ
Х
while_body_50384
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
1while_lstm_cell_1_split_readvariableop_resource_07
3while_lstm_cell_1_split_1_readvariableop_resource_0/
+while_lstm_cell_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
/while_lstm_cell_1_split_readvariableop_resource5
1while_lstm_cell_1_split_1_readvariableop_resource-
)while_lstm_cell_1_readvariableop_resourceЂ while/lstm_cell_1/ReadVariableOpЂ"while/lstm_cell_1/ReadVariableOp_1Ђ"while/lstm_cell_1/ReadVariableOp_2Ђ"while/lstm_cell_1/ReadVariableOp_3Ђ&while/lstm_cell_1/split/ReadVariableOpЂ(while/lstm_cell_1/split_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeд
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemІ
!while/lstm_cell_1/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/ones_like/Shape
!while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_1/ones_like/ConstЭ
while/lstm_cell_1/ones_likeFill*while/lstm_cell_1/ones_like/Shape:output:0*while/lstm_cell_1/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_1/ones_like
while/lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2!
while/lstm_cell_1/dropout/ConstШ
while/lstm_cell_1/dropout/MulMul$while/lstm_cell_1/ones_like:output:0(while/lstm_cell_1/dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_1/dropout/Mul
while/lstm_cell_1/dropout/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_1/dropout/Shape
6while/lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_1/dropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2ЮиЉ28
6while/lstm_cell_1/dropout/random_uniform/RandomUniform
(while/lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2*
(while/lstm_cell_1/dropout/GreaterEqual/y
&while/lstm_cell_1/dropout/GreaterEqualGreaterEqual?while/lstm_cell_1/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2(
&while/lstm_cell_1/dropout/GreaterEqualЖ
while/lstm_cell_1/dropout/CastCast*while/lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2 
while/lstm_cell_1/dropout/CastУ
while/lstm_cell_1/dropout/Mul_1Mul!while/lstm_cell_1/dropout/Mul:z:0"while/lstm_cell_1/dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2!
while/lstm_cell_1/dropout/Mul_1
!while/lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_1/dropout_1/ConstЮ
while/lstm_cell_1/dropout_1/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2!
while/lstm_cell_1/dropout_1/Mul
!while/lstm_cell_1/dropout_1/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_1/Shape
8while/lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_1/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2иЊ2:
8while/lstm_cell_1/dropout_1/random_uniform/RandomUniform
*while/lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_1/dropout_1/GreaterEqual/y
(while/lstm_cell_1/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2*
(while/lstm_cell_1/dropout_1/GreaterEqualМ
 while/lstm_cell_1/dropout_1/CastCast,while/lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2"
 while/lstm_cell_1/dropout_1/CastЫ
!while/lstm_cell_1/dropout_1/Mul_1Mul#while/lstm_cell_1/dropout_1/Mul:z:0$while/lstm_cell_1/dropout_1/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2#
!while/lstm_cell_1/dropout_1/Mul_1
!while/lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_1/dropout_2/ConstЮ
while/lstm_cell_1/dropout_2/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_2/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2!
while/lstm_cell_1/dropout_2/Mul
!while/lstm_cell_1/dropout_2/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_2/Shape
8while/lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_2/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2бџР2:
8while/lstm_cell_1/dropout_2/random_uniform/RandomUniform
*while/lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_1/dropout_2/GreaterEqual/y
(while/lstm_cell_1/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2*
(while/lstm_cell_1/dropout_2/GreaterEqualМ
 while/lstm_cell_1/dropout_2/CastCast,while/lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2"
 while/lstm_cell_1/dropout_2/CastЫ
!while/lstm_cell_1/dropout_2/Mul_1Mul#while/lstm_cell_1/dropout_2/Mul:z:0$while/lstm_cell_1/dropout_2/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2#
!while/lstm_cell_1/dropout_2/Mul_1
!while/lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_1/dropout_3/ConstЮ
while/lstm_cell_1/dropout_3/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_3/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2!
while/lstm_cell_1/dropout_3/Mul
!while/lstm_cell_1/dropout_3/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_3/Shape
8while/lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_3/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2Нe2:
8while/lstm_cell_1/dropout_3/random_uniform/RandomUniform
*while/lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_1/dropout_3/GreaterEqual/y
(while/lstm_cell_1/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2*
(while/lstm_cell_1/dropout_3/GreaterEqualМ
 while/lstm_cell_1/dropout_3/CastCast,while/lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2"
 while/lstm_cell_1/dropout_3/CastЫ
!while/lstm_cell_1/dropout_3/Mul_1Mul#while/lstm_cell_1/dropout_3/Mul:z:0$while/lstm_cell_1/dropout_3/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2#
!while/lstm_cell_1/dropout_3/Mul_1
#while/lstm_cell_1/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_1/ones_like_1/Shape
#while/lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_1/ones_like_1/Constе
while/lstm_cell_1/ones_like_1Fill,while/lstm_cell_1/ones_like_1/Shape:output:0,while/lstm_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/ones_like_1
!while/lstm_cell_1/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_1/dropout_4/Constа
while/lstm_cell_1/dropout_4/MulMul&while/lstm_cell_1/ones_like_1:output:0*while/lstm_cell_1/dropout_4/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2!
while/lstm_cell_1/dropout_4/Mul
!while/lstm_cell_1/dropout_4/ShapeShape&while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_4/Shape
8while/lstm_cell_1/dropout_4/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_4/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2јм2:
8while/lstm_cell_1/dropout_4/random_uniform/RandomUniform
*while/lstm_cell_1/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_1/dropout_4/GreaterEqual/y
(while/lstm_cell_1/dropout_4/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_4/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2*
(while/lstm_cell_1/dropout_4/GreaterEqualМ
 while/lstm_cell_1/dropout_4/CastCast,while/lstm_cell_1/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2"
 while/lstm_cell_1/dropout_4/CastЫ
!while/lstm_cell_1/dropout_4/Mul_1Mul#while/lstm_cell_1/dropout_4/Mul:z:0$while/lstm_cell_1/dropout_4/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2#
!while/lstm_cell_1/dropout_4/Mul_1
!while/lstm_cell_1/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_1/dropout_5/Constа
while/lstm_cell_1/dropout_5/MulMul&while/lstm_cell_1/ones_like_1:output:0*while/lstm_cell_1/dropout_5/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2!
while/lstm_cell_1/dropout_5/Mul
!while/lstm_cell_1/dropout_5/ShapeShape&while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_5/Shape
8while/lstm_cell_1/dropout_5/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_5/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2Ю$2:
8while/lstm_cell_1/dropout_5/random_uniform/RandomUniform
*while/lstm_cell_1/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_1/dropout_5/GreaterEqual/y
(while/lstm_cell_1/dropout_5/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_5/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2*
(while/lstm_cell_1/dropout_5/GreaterEqualМ
 while/lstm_cell_1/dropout_5/CastCast,while/lstm_cell_1/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2"
 while/lstm_cell_1/dropout_5/CastЫ
!while/lstm_cell_1/dropout_5/Mul_1Mul#while/lstm_cell_1/dropout_5/Mul:z:0$while/lstm_cell_1/dropout_5/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2#
!while/lstm_cell_1/dropout_5/Mul_1
!while/lstm_cell_1/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_1/dropout_6/Constа
while/lstm_cell_1/dropout_6/MulMul&while/lstm_cell_1/ones_like_1:output:0*while/lstm_cell_1/dropout_6/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2!
while/lstm_cell_1/dropout_6/Mul
!while/lstm_cell_1/dropout_6/ShapeShape&while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_6/Shape
8while/lstm_cell_1/dropout_6/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_6/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2ІЅ2:
8while/lstm_cell_1/dropout_6/random_uniform/RandomUniform
*while/lstm_cell_1/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_1/dropout_6/GreaterEqual/y
(while/lstm_cell_1/dropout_6/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_6/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2*
(while/lstm_cell_1/dropout_6/GreaterEqualМ
 while/lstm_cell_1/dropout_6/CastCast,while/lstm_cell_1/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2"
 while/lstm_cell_1/dropout_6/CastЫ
!while/lstm_cell_1/dropout_6/Mul_1Mul#while/lstm_cell_1/dropout_6/Mul:z:0$while/lstm_cell_1/dropout_6/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2#
!while/lstm_cell_1/dropout_6/Mul_1
!while/lstm_cell_1/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_1/dropout_7/Constа
while/lstm_cell_1/dropout_7/MulMul&while/lstm_cell_1/ones_like_1:output:0*while/lstm_cell_1/dropout_7/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2!
while/lstm_cell_1/dropout_7/Mul
!while/lstm_cell_1/dropout_7/ShapeShape&while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_7/Shape
8while/lstm_cell_1/dropout_7/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_7/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2яЃ2:
8while/lstm_cell_1/dropout_7/random_uniform/RandomUniform
*while/lstm_cell_1/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_1/dropout_7/GreaterEqual/y
(while/lstm_cell_1/dropout_7/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_7/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2*
(while/lstm_cell_1/dropout_7/GreaterEqualМ
 while/lstm_cell_1/dropout_7/CastCast,while/lstm_cell_1/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2"
 while/lstm_cell_1/dropout_7/CastЫ
!while/lstm_cell_1/dropout_7/Mul_1Mul#while/lstm_cell_1/dropout_7/Mul:z:0$while/lstm_cell_1/dropout_7/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2#
!while/lstm_cell_1/dropout_7/Mul_1П
while/lstm_cell_1/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_1/dropout/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_1/mulХ
while/lstm_cell_1/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_1/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_1/mul_1Х
while/lstm_cell_1/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_1/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_1/mul_2Х
while/lstm_cell_1/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_1/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_1/mul_3t
while/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_1/Const
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_1/split/split_dimФ
&while/lstm_cell_1/split/ReadVariableOpReadVariableOp1while_lstm_cell_1_split_readvariableop_resource_0* 
_output_shapes
:
*
dtype02(
&while/lstm_cell_1/split/ReadVariableOpї
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0.while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ф:
Ф:
Ф:
Ф*
	num_split2
while/lstm_cell_1/splitЎ
while/lstm_cell_1/MatMulMatMulwhile/lstm_cell_1/mul:z:0 while/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMulД
while/lstm_cell_1/MatMul_1MatMulwhile/lstm_cell_1/mul_1:z:0 while/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_1Д
while/lstm_cell_1/MatMul_2MatMulwhile/lstm_cell_1/mul_2:z:0 while/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_2Д
while/lstm_cell_1/MatMul_3MatMulwhile/lstm_cell_1/mul_3:z:0 while/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_3x
while/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_1/Const_1
#while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_1/split_1/split_dimХ
(while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02*
(while/lstm_cell_1/split_1/ReadVariableOpы
while/lstm_cell_1/split_1Split,while/lstm_cell_1/split_1/split_dim:output:00while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ф:Ф:Ф:Ф*
	num_split2
while/lstm_cell_1/split_1М
while/lstm_cell_1/BiasAddBiasAdd"while/lstm_cell_1/MatMul:product:0"while/lstm_cell_1/split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/BiasAddТ
while/lstm_cell_1/BiasAdd_1BiasAdd$while/lstm_cell_1/MatMul_1:product:0"while/lstm_cell_1/split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/BiasAdd_1Т
while/lstm_cell_1/BiasAdd_2BiasAdd$while/lstm_cell_1/MatMul_2:product:0"while/lstm_cell_1/split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/BiasAdd_2Т
while/lstm_cell_1/BiasAdd_3BiasAdd$while/lstm_cell_1/MatMul_3:product:0"while/lstm_cell_1/split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/BiasAdd_3Ј
while/lstm_cell_1/mul_4Mulwhile_placeholder_2%while/lstm_cell_1/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_4Ј
while/lstm_cell_1/mul_5Mulwhile_placeholder_2%while/lstm_cell_1/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_5Ј
while/lstm_cell_1/mul_6Mulwhile_placeholder_2%while/lstm_cell_1/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_6Ј
while/lstm_cell_1/mul_7Mulwhile_placeholder_2%while/lstm_cell_1/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_7В
 while/lstm_cell_1/ReadVariableOpReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
Ф*
dtype02"
 while/lstm_cell_1/ReadVariableOp
%while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_1/strided_slice/stackЃ
'while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ф   2)
'while/lstm_cell_1/strided_slice/stack_1Ѓ
'while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_1/strided_slice/stack_2ъ
while/lstm_cell_1/strided_sliceStridedSlice(while/lstm_cell_1/ReadVariableOp:value:0.while/lstm_cell_1/strided_slice/stack:output:00while/lstm_cell_1/strided_slice/stack_1:output:00while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2!
while/lstm_cell_1/strided_sliceМ
while/lstm_cell_1/MatMul_4MatMulwhile/lstm_cell_1/mul_4:z:0(while/lstm_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_4Д
while/lstm_cell_1/addAddV2"while/lstm_cell_1/BiasAdd:output:0$while/lstm_cell_1/MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/add
while/lstm_cell_1/SigmoidSigmoidwhile/lstm_cell_1/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/SigmoidЖ
"while/lstm_cell_1/ReadVariableOp_1ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
Ф*
dtype02$
"while/lstm_cell_1/ReadVariableOp_1Ѓ
'while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ф   2)
'while/lstm_cell_1/strided_slice_1/stackЇ
)while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_1/stack_1Ї
)while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_1/stack_2і
!while/lstm_cell_1/strided_slice_1StridedSlice*while/lstm_cell_1/ReadVariableOp_1:value:00while/lstm_cell_1/strided_slice_1/stack:output:02while/lstm_cell_1/strided_slice_1/stack_1:output:02while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_1О
while/lstm_cell_1/MatMul_5MatMulwhile/lstm_cell_1/mul_5:z:0*while/lstm_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_5К
while/lstm_cell_1/add_1AddV2$while/lstm_cell_1/BiasAdd_1:output:0$while/lstm_cell_1/MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/add_1
while/lstm_cell_1/Sigmoid_1Sigmoidwhile/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/Sigmoid_1Ђ
while/lstm_cell_1/mul_8Mulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_8Ж
"while/lstm_cell_1/ReadVariableOp_2ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
Ф*
dtype02$
"while/lstm_cell_1/ReadVariableOp_2Ѓ
'while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_1/strided_slice_2/stackЇ
)while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2+
)while/lstm_cell_1/strided_slice_2/stack_1Ї
)while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_2/stack_2і
!while/lstm_cell_1/strided_slice_2StridedSlice*while/lstm_cell_1/ReadVariableOp_2:value:00while/lstm_cell_1/strided_slice_2/stack:output:02while/lstm_cell_1/strided_slice_2/stack_1:output:02while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_2О
while/lstm_cell_1/MatMul_6MatMulwhile/lstm_cell_1/mul_6:z:0*while/lstm_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_6К
while/lstm_cell_1/add_2AddV2$while/lstm_cell_1/BiasAdd_2:output:0$while/lstm_cell_1/MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/add_2
while/lstm_cell_1/TanhTanhwhile/lstm_cell_1/add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/TanhЇ
while/lstm_cell_1/mul_9Mulwhile/lstm_cell_1/Sigmoid:y:0while/lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_9Ј
while/lstm_cell_1/add_3AddV2while/lstm_cell_1/mul_8:z:0while/lstm_cell_1/mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/add_3Ж
"while/lstm_cell_1/ReadVariableOp_3ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
Ф*
dtype02$
"while/lstm_cell_1/ReadVariableOp_3Ѓ
'while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2)
'while/lstm_cell_1/strided_slice_3/stackЇ
)while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_1/strided_slice_3/stack_1Ї
)while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_3/stack_2і
!while/lstm_cell_1/strided_slice_3StridedSlice*while/lstm_cell_1/ReadVariableOp_3:value:00while/lstm_cell_1/strided_slice_3/stack:output:02while/lstm_cell_1/strided_slice_3/stack_1:output:02while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_3О
while/lstm_cell_1/MatMul_7MatMulwhile/lstm_cell_1/mul_7:z:0*while/lstm_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_7К
while/lstm_cell_1/add_4AddV2$while/lstm_cell_1/BiasAdd_3:output:0$while/lstm_cell_1/MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/add_4
while/lstm_cell_1/Sigmoid_2Sigmoidwhile/lstm_cell_1/add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/Sigmoid_2
while/lstm_cell_1/Tanh_1Tanhwhile/lstm_cell_1/add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/Tanh_1­
while/lstm_cell_1/mul_10Mulwhile/lstm_cell_1/Sigmoid_2:y:0while/lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_10р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ф
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityз
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Ц
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ѓ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3ч
while/Identity_4Identitywhile/lstm_cell_1/mul_10:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/Identity_4ц
while/Identity_5Identitywhile/lstm_cell_1/add_3:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_1_readvariableop_resource+while_lstm_cell_1_readvariableop_resource_0"h
1while_lstm_cell_1_split_1_readvariableop_resource3while_lstm_cell_1_split_1_readvariableop_resource_0"d
/while_lstm_cell_1_split_readvariableop_resource1while_lstm_cell_1_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :џџџџџџџџџФ:џџџџџџџџџФ: : :::2D
 while/lstm_cell_1/ReadVariableOp while/lstm_cell_1/ReadVariableOp2H
"while/lstm_cell_1/ReadVariableOp_1"while/lstm_cell_1/ReadVariableOp_12H
"while/lstm_cell_1/ReadVariableOp_2"while/lstm_cell_1/ReadVariableOp_22H
"while/lstm_cell_1/ReadVariableOp_3"while/lstm_cell_1/ReadVariableOp_32P
&while/lstm_cell_1/split/ReadVariableOp&while/lstm_cell_1/split/ReadVariableOp2T
(while/lstm_cell_1/split_1/ReadVariableOp(while/lstm_cell_1/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџФ:.*
(
_output_shapes
:џџџџџџџџџФ:

_output_shapes
: :

_output_shapes
: 
Њ
m
N__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_49526

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ2
dropout/Mul
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1Э
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shapeа
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2
dropout/GreaterEqual/yЫ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ2
dropout/Mul_1{
IdentityIdentitydropout/Mul_1:z:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Њ
О
while_cond_50042
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_50042___redundant_placeholder03
/while_while_cond_50042___redundant_placeholder13
/while_while_cond_50042___redundant_placeholder23
/while_while_cond_50042___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :џџџџџџџџџФ:џџџџџџџџџФ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџФ:.*
(
_output_shapes
:џџџџџџџџџФ:

_output_shapes
: :

_output_shapes
:
Њ
m
N__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_47063

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ2
dropout/Mul
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1Э
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shapeа
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2
dropout/GreaterEqual/yЫ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ2
dropout/Mul_1{
IdentityIdentitydropout/Mul_1:z:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
t
№
!__inference__traced_restore_51342
file_prefix+
'assignvariableop_embedding_1_embeddings%
!assignvariableop_1_dense_1_kernel#
assignvariableop_2_dense_1_bias 
assignvariableop_3_adam_iter"
assignvariableop_4_adam_beta_1"
assignvariableop_5_adam_beta_2!
assignvariableop_6_adam_decay)
%assignvariableop_7_adam_learning_rate0
,assignvariableop_8_lstm_1_lstm_cell_1_kernel:
6assignvariableop_9_lstm_1_lstm_cell_1_recurrent_kernel/
+assignvariableop_10_lstm_1_lstm_cell_1_bias
assignvariableop_11_total
assignvariableop_12_count
assignvariableop_13_total_1
assignvariableop_14_count_15
1assignvariableop_15_adam_embedding_1_embeddings_m-
)assignvariableop_16_adam_dense_1_kernel_m+
'assignvariableop_17_adam_dense_1_bias_m8
4assignvariableop_18_adam_lstm_1_lstm_cell_1_kernel_mB
>assignvariableop_19_adam_lstm_1_lstm_cell_1_recurrent_kernel_m6
2assignvariableop_20_adam_lstm_1_lstm_cell_1_bias_m5
1assignvariableop_21_adam_embedding_1_embeddings_v-
)assignvariableop_22_adam_dense_1_kernel_v+
'assignvariableop_23_adam_dense_1_bias_v8
4assignvariableop_24_adam_lstm_1_lstm_cell_1_kernel_vB
>assignvariableop_25_adam_lstm_1_lstm_cell_1_recurrent_kernel_v6
2assignvariableop_26_adam_lstm_1_lstm_cell_1_bias_v
identity_28ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*І
valueBB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesЦ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesИ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityІ
AssignVariableOpAssignVariableOp'assignvariableop_embedding_1_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1І
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_1_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Є
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_1_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_3Ё
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_iterIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Ѓ
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_1Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ѓ
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_2Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Ђ
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_decayIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Њ
AssignVariableOp_7AssignVariableOp%assignvariableop_7_adam_learning_rateIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Б
AssignVariableOp_8AssignVariableOp,assignvariableop_8_lstm_1_lstm_cell_1_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Л
AssignVariableOp_9AssignVariableOp6assignvariableop_9_lstm_1_lstm_cell_1_recurrent_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Г
AssignVariableOp_10AssignVariableOp+assignvariableop_10_lstm_1_lstm_cell_1_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Ё
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Ё
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Ѓ
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Ѓ
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Й
AssignVariableOp_15AssignVariableOp1assignvariableop_15_adam_embedding_1_embeddings_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Б
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adam_dense_1_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Џ
AssignVariableOp_17AssignVariableOp'assignvariableop_17_adam_dense_1_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18М
AssignVariableOp_18AssignVariableOp4assignvariableop_18_adam_lstm_1_lstm_cell_1_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Ц
AssignVariableOp_19AssignVariableOp>assignvariableop_19_adam_lstm_1_lstm_cell_1_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20К
AssignVariableOp_20AssignVariableOp2assignvariableop_20_adam_lstm_1_lstm_cell_1_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Й
AssignVariableOp_21AssignVariableOp1assignvariableop_21_adam_embedding_1_embeddings_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22Б
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_dense_1_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23Џ
AssignVariableOp_23AssignVariableOp'assignvariableop_23_adam_dense_1_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24М
AssignVariableOp_24AssignVariableOp4assignvariableop_24_adam_lstm_1_lstm_cell_1_kernel_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25Ц
AssignVariableOp_25AssignVariableOp>assignvariableop_25_adam_lstm_1_lstm_cell_1_recurrent_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26К
AssignVariableOp_26AssignVariableOp2assignvariableop_26_adam_lstm_1_lstm_cell_1_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_269
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpА
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_27Ѓ
Identity_28IdentityIdentity_27:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_28"#
identity_28Identity_28:output:0*
_input_shapesp
n: :::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262(
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
Њ
О
while_cond_50702
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_50702___redundant_placeholder03
/while_while_cond_50702___redundant_placeholder13
/while_while_cond_50702___redundant_placeholder23
/while_while_cond_50702___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :џџџџџџџџџФ:џџџџџџџџџФ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџФ:.*
(
_output_shapes
:џџџџџџџџџФ:

_output_shapes
: :

_output_shapes
:

l
3__inference_spatial_dropout1d_1_layer_call_fn_49536

inputs
identityЂStatefulPartitionedCallњ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_470632
StatefulPartitionedCallЄ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

ў
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_47264

inputs

states
states_1!
split_readvariableop_resource#
split_1_readvariableop_resource
readvariableop_resource
identity

identity_1

identity_2ЂReadVariableOpЂReadVariableOp_1ЂReadVariableOp_2ЂReadVariableOp_3Ђsplit/ReadVariableOpЂsplit_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shapeд
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2№ОЕ2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout/GreaterEqual/yП
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_1/Const
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shapeк
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2ЋЖ2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_1/GreaterEqual/yЧ
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout_1/GreaterEqual
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
dropout_1/Cast
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_2/Const
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shapeк
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2йіЁ2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_2/GreaterEqual/yЧ
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout_2/GreaterEqual
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
dropout_2/Cast
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_3/Const
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/Shapeк
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2ЕМ2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_3/GreaterEqual/yЧ
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout_3/GreaterEqual
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
dropout_3/Cast
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout_3/Mul_1\
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like_1/Const
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
ones_like_1g
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_4/Const
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
dropout_4/Mulf
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_4/Shapeк
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2п2(
&dropout_4/random_uniform/RandomUniformy
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_4/GreaterEqual/yЧ
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
dropout_4/GreaterEqual
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2
dropout_4/Cast
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
dropout_4/Mul_1g
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_5/Const
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
dropout_5/Mulf
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_5/Shapeк
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2ТЗ2(
&dropout_5/random_uniform/RandomUniformy
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_5/GreaterEqual/yЧ
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
dropout_5/GreaterEqual
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2
dropout_5/Cast
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
dropout_5/Mul_1g
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_6/Const
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
dropout_6/Mulf
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_6/Shapeк
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2вЛЁ2(
&dropout_6/random_uniform/RandomUniformy
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_6/GreaterEqual/yЧ
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
dropout_6/GreaterEqual
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2
dropout_6/Cast
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
dropout_6/Mul_1g
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_7/Const
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
dropout_7/Mulf
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_7/Shapeк
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2Е К2(
&dropout_7/random_uniform/RandomUniformy
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_7/GreaterEqual/yЧ
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
dropout_7/GreaterEqual
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2
dropout_7/Cast
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
dropout_7/Mul_1_
mulMulinputsdropout/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
mule
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
mul_1e
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
mul_2e
mul_3Mulinputsdropout_3/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
mul_3P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
*
dtype02
split/ReadVariableOpЏ
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ф:
Ф:
Ф:
Ф*
	num_split2
splitf
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
MatMull
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2

MatMul_1l
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2

MatMul_2l
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2

MatMul_3T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype02
split_1/ReadVariableOpЃ
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ф:Ф:Ф:Ф*
	num_split2	
split_1t
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2	
BiasAddz
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2
	BiasAdd_1z
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2
	BiasAdd_2z
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2
	BiasAdd_3e
mul_4Mulstatesdropout_4/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
mul_4e
mul_5Mulstatesdropout_5/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
mul_5e
mul_6Mulstatesdropout_6/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
mul_6e
mul_7Mulstatesdropout_7/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
mul_7z
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ф*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ф   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2ў
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
strided_slicet
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2

MatMul_4l
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2	
Sigmoid~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ф*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ф   2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
strided_slice_1v
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2

MatMul_5r
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
	Sigmoid_1a
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:џџџџџџџџџФ2
mul_8~
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ф*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
strided_slice_2v
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2

MatMul_6r
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
Tanh_
mul_9MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
mul_9`
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
add_3~
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ф*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
strided_slice_3v
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2

MatMul_7r
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
add_4_
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
	Sigmoid_2V
Tanh_1Tanh	add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
Tanh_1e
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
mul_10й
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identityн

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity_1м

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*[
_input_shapesJ
H:џџџџџџџџџ:џџџџџџџџџФ:џџџџџџџџџФ:::2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:PL
(
_output_shapes
:џџџџџџџџџФ
 
_user_specified_namestates:PL
(
_output_shapes
:џџџџџџџџџФ
 
_user_specified_namestates
г
m
N__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_49489

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:џџџџџџџџџ+2
dropout/Mul
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1Э
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shapeа
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2
dropout/GreaterEqual/yЫ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:џџџџџџџџџ+2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:џџџџџџџџџ+2

Identity"
identityIdentity:output:0*+
_input_shapes
:џџџџџџџџџ+:T P
,
_output_shapes
:џџџџџџџџџ+
 
_user_specified_nameinputs
У
Ы
+__inference_lstm_cell_1_layer_call_fn_51147

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2ЂStatefulPartitionedCallФ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџФ:џџџџџџџџџФ:џџџџџџџџџФ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_473482
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*[
_input_shapesJ
H:џџџџџџџџџ:џџџџџџџџџФ:џџџџџџџџџФ:::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:RN
(
_output_shapes
:џџџџџџџџџФ
"
_user_specified_name
states/0:RN
(
_output_shapes
:џџџџџџџџџФ
"
_user_specified_name
states/1
ї

 __inference__wrapped_model_47010
embedding_1_input3
/sequential_1_embedding_1_embedding_lookup_46745A
=sequential_1_lstm_1_lstm_cell_1_split_readvariableop_resourceC
?sequential_1_lstm_1_lstm_cell_1_split_1_readvariableop_resource;
7sequential_1_lstm_1_lstm_cell_1_readvariableop_resource7
3sequential_1_dense_1_matmul_readvariableop_resource8
4sequential_1_dense_1_biasadd_readvariableop_resource
identityЂ+sequential_1/dense_1/BiasAdd/ReadVariableOpЂ*sequential_1/dense_1/MatMul/ReadVariableOpЂ)sequential_1/embedding_1/embedding_lookupЂ.sequential_1/lstm_1/lstm_cell_1/ReadVariableOpЂ0sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_1Ђ0sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_2Ђ0sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_3Ђ4sequential_1/lstm_1/lstm_cell_1/split/ReadVariableOpЂ6sequential_1/lstm_1/lstm_cell_1/split_1/ReadVariableOpЂsequential_1/lstm_1/while
sequential_1/embedding_1/CastCastembedding_1_input*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџ+2
sequential_1/embedding_1/Castљ
)sequential_1/embedding_1/embedding_lookupResourceGather/sequential_1_embedding_1_embedding_lookup_46745!sequential_1/embedding_1/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*B
_class8
64loc:@sequential_1/embedding_1/embedding_lookup/46745*,
_output_shapes
:џџџџџџџџџ+*
dtype02+
)sequential_1/embedding_1/embedding_lookupб
2sequential_1/embedding_1/embedding_lookup/IdentityIdentity2sequential_1/embedding_1/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*B
_class8
64loc:@sequential_1/embedding_1/embedding_lookup/46745*,
_output_shapes
:џџџџџџџџџ+24
2sequential_1/embedding_1/embedding_lookup/Identityь
4sequential_1/embedding_1/embedding_lookup/Identity_1Identity;sequential_1/embedding_1/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:џџџџџџџџџ+26
4sequential_1/embedding_1/embedding_lookup/Identity_1и
)sequential_1/spatial_dropout1d_1/IdentityIdentity=sequential_1/embedding_1/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:џџџџџџџџџ+2+
)sequential_1/spatial_dropout1d_1/Identity
sequential_1/lstm_1/ShapeShape2sequential_1/spatial_dropout1d_1/Identity:output:0*
T0*
_output_shapes
:2
sequential_1/lstm_1/Shape
'sequential_1/lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_1/lstm_1/strided_slice/stack 
)sequential_1/lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_1/lstm_1/strided_slice/stack_1 
)sequential_1/lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_1/lstm_1/strided_slice/stack_2к
!sequential_1/lstm_1/strided_sliceStridedSlice"sequential_1/lstm_1/Shape:output:00sequential_1/lstm_1/strided_slice/stack:output:02sequential_1/lstm_1/strided_slice/stack_1:output:02sequential_1/lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!sequential_1/lstm_1/strided_slice
sequential_1/lstm_1/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ф2!
sequential_1/lstm_1/zeros/mul/yМ
sequential_1/lstm_1/zeros/mulMul*sequential_1/lstm_1/strided_slice:output:0(sequential_1/lstm_1/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_1/lstm_1/zeros/mul
 sequential_1/lstm_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2"
 sequential_1/lstm_1/zeros/Less/yЗ
sequential_1/lstm_1/zeros/LessLess!sequential_1/lstm_1/zeros/mul:z:0)sequential_1/lstm_1/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
sequential_1/lstm_1/zeros/Less
"sequential_1/lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ф2$
"sequential_1/lstm_1/zeros/packed/1г
 sequential_1/lstm_1/zeros/packedPack*sequential_1/lstm_1/strided_slice:output:0+sequential_1/lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 sequential_1/lstm_1/zeros/packed
sequential_1/lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_1/lstm_1/zeros/ConstЦ
sequential_1/lstm_1/zerosFill)sequential_1/lstm_1/zeros/packed:output:0(sequential_1/lstm_1/zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
sequential_1/lstm_1/zeros
!sequential_1/lstm_1/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ф2#
!sequential_1/lstm_1/zeros_1/mul/yТ
sequential_1/lstm_1/zeros_1/mulMul*sequential_1/lstm_1/strided_slice:output:0*sequential_1/lstm_1/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_1/lstm_1/zeros_1/mul
"sequential_1/lstm_1/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2$
"sequential_1/lstm_1/zeros_1/Less/yП
 sequential_1/lstm_1/zeros_1/LessLess#sequential_1/lstm_1/zeros_1/mul:z:0+sequential_1/lstm_1/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_1/lstm_1/zeros_1/Less
$sequential_1/lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ф2&
$sequential_1/lstm_1/zeros_1/packed/1й
"sequential_1/lstm_1/zeros_1/packedPack*sequential_1/lstm_1/strided_slice:output:0-sequential_1/lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_1/lstm_1/zeros_1/packed
!sequential_1/lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_1/lstm_1/zeros_1/ConstЮ
sequential_1/lstm_1/zeros_1Fill+sequential_1/lstm_1/zeros_1/packed:output:0*sequential_1/lstm_1/zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
sequential_1/lstm_1/zeros_1
"sequential_1/lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"sequential_1/lstm_1/transpose/permу
sequential_1/lstm_1/transpose	Transpose2sequential_1/spatial_dropout1d_1/Identity:output:0+sequential_1/lstm_1/transpose/perm:output:0*
T0*,
_output_shapes
:+џџџџџџџџџ2
sequential_1/lstm_1/transpose
sequential_1/lstm_1/Shape_1Shape!sequential_1/lstm_1/transpose:y:0*
T0*
_output_shapes
:2
sequential_1/lstm_1/Shape_1 
)sequential_1/lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_1/lstm_1/strided_slice_1/stackЄ
+sequential_1/lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_1/strided_slice_1/stack_1Є
+sequential_1/lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_1/strided_slice_1/stack_2ц
#sequential_1/lstm_1/strided_slice_1StridedSlice$sequential_1/lstm_1/Shape_1:output:02sequential_1/lstm_1/strided_slice_1/stack:output:04sequential_1/lstm_1/strided_slice_1/stack_1:output:04sequential_1/lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_1/lstm_1/strided_slice_1­
/sequential_1/lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ21
/sequential_1/lstm_1/TensorArrayV2/element_shape
!sequential_1/lstm_1/TensorArrayV2TensorListReserve8sequential_1/lstm_1/TensorArrayV2/element_shape:output:0,sequential_1/lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!sequential_1/lstm_1/TensorArrayV2ч
Isequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2K
Isequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeШ
;sequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_1/lstm_1/transpose:y:0Rsequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;sequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor 
)sequential_1/lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_1/lstm_1/strided_slice_2/stackЄ
+sequential_1/lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_1/strided_slice_2/stack_1Є
+sequential_1/lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_1/strided_slice_2/stack_2ѕ
#sequential_1/lstm_1/strided_slice_2StridedSlice!sequential_1/lstm_1/transpose:y:02sequential_1/lstm_1/strided_slice_2/stack:output:04sequential_1/lstm_1/strided_slice_2/stack_1:output:04sequential_1/lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2%
#sequential_1/lstm_1/strided_slice_2О
/sequential_1/lstm_1/lstm_cell_1/ones_like/ShapeShape,sequential_1/lstm_1/strided_slice_2:output:0*
T0*
_output_shapes
:21
/sequential_1/lstm_1/lstm_cell_1/ones_like/ShapeЇ
/sequential_1/lstm_1/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?21
/sequential_1/lstm_1/lstm_cell_1/ones_like/Const
)sequential_1/lstm_1/lstm_cell_1/ones_likeFill8sequential_1/lstm_1/lstm_cell_1/ones_like/Shape:output:08sequential_1/lstm_1/lstm_cell_1/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2+
)sequential_1/lstm_1/lstm_cell_1/ones_likeИ
1sequential_1/lstm_1/lstm_cell_1/ones_like_1/ShapeShape"sequential_1/lstm_1/zeros:output:0*
T0*
_output_shapes
:23
1sequential_1/lstm_1/lstm_cell_1/ones_like_1/ShapeЋ
1sequential_1/lstm_1/lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?23
1sequential_1/lstm_1/lstm_cell_1/ones_like_1/Const
+sequential_1/lstm_1/lstm_cell_1/ones_like_1Fill:sequential_1/lstm_1/lstm_cell_1/ones_like_1/Shape:output:0:sequential_1/lstm_1/lstm_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2-
+sequential_1/lstm_1/lstm_cell_1/ones_like_1ц
#sequential_1/lstm_1/lstm_cell_1/mulMul,sequential_1/lstm_1/strided_slice_2:output:02sequential_1/lstm_1/lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2%
#sequential_1/lstm_1/lstm_cell_1/mulъ
%sequential_1/lstm_1/lstm_cell_1/mul_1Mul,sequential_1/lstm_1/strided_slice_2:output:02sequential_1/lstm_1/lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2'
%sequential_1/lstm_1/lstm_cell_1/mul_1ъ
%sequential_1/lstm_1/lstm_cell_1/mul_2Mul,sequential_1/lstm_1/strided_slice_2:output:02sequential_1/lstm_1/lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2'
%sequential_1/lstm_1/lstm_cell_1/mul_2ъ
%sequential_1/lstm_1/lstm_cell_1/mul_3Mul,sequential_1/lstm_1/strided_slice_2:output:02sequential_1/lstm_1/lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2'
%sequential_1/lstm_1/lstm_cell_1/mul_3
%sequential_1/lstm_1/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_1/lstm_1/lstm_cell_1/ConstЄ
/sequential_1/lstm_1/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :21
/sequential_1/lstm_1/lstm_cell_1/split/split_dimь
4sequential_1/lstm_1/lstm_cell_1/split/ReadVariableOpReadVariableOp=sequential_1_lstm_1_lstm_cell_1_split_readvariableop_resource* 
_output_shapes
:
*
dtype026
4sequential_1/lstm_1/lstm_cell_1/split/ReadVariableOpЏ
%sequential_1/lstm_1/lstm_cell_1/splitSplit8sequential_1/lstm_1/lstm_cell_1/split/split_dim:output:0<sequential_1/lstm_1/lstm_cell_1/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ф:
Ф:
Ф:
Ф*
	num_split2'
%sequential_1/lstm_1/lstm_cell_1/splitц
&sequential_1/lstm_1/lstm_cell_1/MatMulMatMul'sequential_1/lstm_1/lstm_cell_1/mul:z:0.sequential_1/lstm_1/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2(
&sequential_1/lstm_1/lstm_cell_1/MatMulь
(sequential_1/lstm_1/lstm_cell_1/MatMul_1MatMul)sequential_1/lstm_1/lstm_cell_1/mul_1:z:0.sequential_1/lstm_1/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2*
(sequential_1/lstm_1/lstm_cell_1/MatMul_1ь
(sequential_1/lstm_1/lstm_cell_1/MatMul_2MatMul)sequential_1/lstm_1/lstm_cell_1/mul_2:z:0.sequential_1/lstm_1/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2*
(sequential_1/lstm_1/lstm_cell_1/MatMul_2ь
(sequential_1/lstm_1/lstm_cell_1/MatMul_3MatMul)sequential_1/lstm_1/lstm_cell_1/mul_3:z:0.sequential_1/lstm_1/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2*
(sequential_1/lstm_1/lstm_cell_1/MatMul_3
'sequential_1/lstm_1/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_1/lstm_1/lstm_cell_1/Const_1Ј
1sequential_1/lstm_1/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 23
1sequential_1/lstm_1/lstm_cell_1/split_1/split_dimэ
6sequential_1/lstm_1/lstm_cell_1/split_1/ReadVariableOpReadVariableOp?sequential_1_lstm_1_lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:*
dtype028
6sequential_1/lstm_1/lstm_cell_1/split_1/ReadVariableOpЃ
'sequential_1/lstm_1/lstm_cell_1/split_1Split:sequential_1/lstm_1/lstm_cell_1/split_1/split_dim:output:0>sequential_1/lstm_1/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ф:Ф:Ф:Ф*
	num_split2)
'sequential_1/lstm_1/lstm_cell_1/split_1є
'sequential_1/lstm_1/lstm_cell_1/BiasAddBiasAdd0sequential_1/lstm_1/lstm_cell_1/MatMul:product:00sequential_1/lstm_1/lstm_cell_1/split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2)
'sequential_1/lstm_1/lstm_cell_1/BiasAddњ
)sequential_1/lstm_1/lstm_cell_1/BiasAdd_1BiasAdd2sequential_1/lstm_1/lstm_cell_1/MatMul_1:product:00sequential_1/lstm_1/lstm_cell_1/split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2+
)sequential_1/lstm_1/lstm_cell_1/BiasAdd_1њ
)sequential_1/lstm_1/lstm_cell_1/BiasAdd_2BiasAdd2sequential_1/lstm_1/lstm_cell_1/MatMul_2:product:00sequential_1/lstm_1/lstm_cell_1/split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2+
)sequential_1/lstm_1/lstm_cell_1/BiasAdd_2њ
)sequential_1/lstm_1/lstm_cell_1/BiasAdd_3BiasAdd2sequential_1/lstm_1/lstm_cell_1/MatMul_3:product:00sequential_1/lstm_1/lstm_cell_1/split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2+
)sequential_1/lstm_1/lstm_cell_1/BiasAdd_3т
%sequential_1/lstm_1/lstm_cell_1/mul_4Mul"sequential_1/lstm_1/zeros:output:04sequential_1/lstm_1/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2'
%sequential_1/lstm_1/lstm_cell_1/mul_4т
%sequential_1/lstm_1/lstm_cell_1/mul_5Mul"sequential_1/lstm_1/zeros:output:04sequential_1/lstm_1/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2'
%sequential_1/lstm_1/lstm_cell_1/mul_5т
%sequential_1/lstm_1/lstm_cell_1/mul_6Mul"sequential_1/lstm_1/zeros:output:04sequential_1/lstm_1/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2'
%sequential_1/lstm_1/lstm_cell_1/mul_6т
%sequential_1/lstm_1/lstm_cell_1/mul_7Mul"sequential_1/lstm_1/zeros:output:04sequential_1/lstm_1/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2'
%sequential_1/lstm_1/lstm_cell_1/mul_7к
.sequential_1/lstm_1/lstm_cell_1/ReadVariableOpReadVariableOp7sequential_1_lstm_1_lstm_cell_1_readvariableop_resource* 
_output_shapes
:
Ф*
dtype020
.sequential_1/lstm_1/lstm_cell_1/ReadVariableOpЛ
3sequential_1/lstm_1/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        25
3sequential_1/lstm_1/lstm_cell_1/strided_slice/stackП
5sequential_1/lstm_1/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ф   27
5sequential_1/lstm_1/lstm_cell_1/strided_slice/stack_1П
5sequential_1/lstm_1/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      27
5sequential_1/lstm_1/lstm_cell_1/strided_slice/stack_2О
-sequential_1/lstm_1/lstm_cell_1/strided_sliceStridedSlice6sequential_1/lstm_1/lstm_cell_1/ReadVariableOp:value:0<sequential_1/lstm_1/lstm_cell_1/strided_slice/stack:output:0>sequential_1/lstm_1/lstm_cell_1/strided_slice/stack_1:output:0>sequential_1/lstm_1/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2/
-sequential_1/lstm_1/lstm_cell_1/strided_sliceє
(sequential_1/lstm_1/lstm_cell_1/MatMul_4MatMul)sequential_1/lstm_1/lstm_cell_1/mul_4:z:06sequential_1/lstm_1/lstm_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2*
(sequential_1/lstm_1/lstm_cell_1/MatMul_4ь
#sequential_1/lstm_1/lstm_cell_1/addAddV20sequential_1/lstm_1/lstm_cell_1/BiasAdd:output:02sequential_1/lstm_1/lstm_cell_1/MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2%
#sequential_1/lstm_1/lstm_cell_1/addЙ
'sequential_1/lstm_1/lstm_cell_1/SigmoidSigmoid'sequential_1/lstm_1/lstm_cell_1/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2)
'sequential_1/lstm_1/lstm_cell_1/Sigmoidо
0sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_1ReadVariableOp7sequential_1_lstm_1_lstm_cell_1_readvariableop_resource* 
_output_shapes
:
Ф*
dtype022
0sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_1П
5sequential_1/lstm_1/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ф   27
5sequential_1/lstm_1/lstm_cell_1/strided_slice_1/stackУ
7sequential_1/lstm_1/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_1/lstm_1/lstm_cell_1/strided_slice_1/stack_1У
7sequential_1/lstm_1/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_1/lstm_1/lstm_cell_1/strided_slice_1/stack_2Ъ
/sequential_1/lstm_1/lstm_cell_1/strided_slice_1StridedSlice8sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_1:value:0>sequential_1/lstm_1/lstm_cell_1/strided_slice_1/stack:output:0@sequential_1/lstm_1/lstm_cell_1/strided_slice_1/stack_1:output:0@sequential_1/lstm_1/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask21
/sequential_1/lstm_1/lstm_cell_1/strided_slice_1і
(sequential_1/lstm_1/lstm_cell_1/MatMul_5MatMul)sequential_1/lstm_1/lstm_cell_1/mul_5:z:08sequential_1/lstm_1/lstm_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2*
(sequential_1/lstm_1/lstm_cell_1/MatMul_5ђ
%sequential_1/lstm_1/lstm_cell_1/add_1AddV22sequential_1/lstm_1/lstm_cell_1/BiasAdd_1:output:02sequential_1/lstm_1/lstm_cell_1/MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2'
%sequential_1/lstm_1/lstm_cell_1/add_1П
)sequential_1/lstm_1/lstm_cell_1/Sigmoid_1Sigmoid)sequential_1/lstm_1/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2+
)sequential_1/lstm_1/lstm_cell_1/Sigmoid_1н
%sequential_1/lstm_1/lstm_cell_1/mul_8Mul-sequential_1/lstm_1/lstm_cell_1/Sigmoid_1:y:0$sequential_1/lstm_1/zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2'
%sequential_1/lstm_1/lstm_cell_1/mul_8о
0sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_2ReadVariableOp7sequential_1_lstm_1_lstm_cell_1_readvariableop_resource* 
_output_shapes
:
Ф*
dtype022
0sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_2П
5sequential_1/lstm_1/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      27
5sequential_1/lstm_1/lstm_cell_1/strided_slice_2/stackУ
7sequential_1/lstm_1/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  29
7sequential_1/lstm_1/lstm_cell_1/strided_slice_2/stack_1У
7sequential_1/lstm_1/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_1/lstm_1/lstm_cell_1/strided_slice_2/stack_2Ъ
/sequential_1/lstm_1/lstm_cell_1/strided_slice_2StridedSlice8sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_2:value:0>sequential_1/lstm_1/lstm_cell_1/strided_slice_2/stack:output:0@sequential_1/lstm_1/lstm_cell_1/strided_slice_2/stack_1:output:0@sequential_1/lstm_1/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask21
/sequential_1/lstm_1/lstm_cell_1/strided_slice_2і
(sequential_1/lstm_1/lstm_cell_1/MatMul_6MatMul)sequential_1/lstm_1/lstm_cell_1/mul_6:z:08sequential_1/lstm_1/lstm_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2*
(sequential_1/lstm_1/lstm_cell_1/MatMul_6ђ
%sequential_1/lstm_1/lstm_cell_1/add_2AddV22sequential_1/lstm_1/lstm_cell_1/BiasAdd_2:output:02sequential_1/lstm_1/lstm_cell_1/MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2'
%sequential_1/lstm_1/lstm_cell_1/add_2В
$sequential_1/lstm_1/lstm_cell_1/TanhTanh)sequential_1/lstm_1/lstm_cell_1/add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2&
$sequential_1/lstm_1/lstm_cell_1/Tanhп
%sequential_1/lstm_1/lstm_cell_1/mul_9Mul+sequential_1/lstm_1/lstm_cell_1/Sigmoid:y:0(sequential_1/lstm_1/lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2'
%sequential_1/lstm_1/lstm_cell_1/mul_9р
%sequential_1/lstm_1/lstm_cell_1/add_3AddV2)sequential_1/lstm_1/lstm_cell_1/mul_8:z:0)sequential_1/lstm_1/lstm_cell_1/mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2'
%sequential_1/lstm_1/lstm_cell_1/add_3о
0sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_3ReadVariableOp7sequential_1_lstm_1_lstm_cell_1_readvariableop_resource* 
_output_shapes
:
Ф*
dtype022
0sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_3П
5sequential_1/lstm_1/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  27
5sequential_1/lstm_1/lstm_cell_1/strided_slice_3/stackУ
7sequential_1/lstm_1/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7sequential_1/lstm_1/lstm_cell_1/strided_slice_3/stack_1У
7sequential_1/lstm_1/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_1/lstm_1/lstm_cell_1/strided_slice_3/stack_2Ъ
/sequential_1/lstm_1/lstm_cell_1/strided_slice_3StridedSlice8sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_3:value:0>sequential_1/lstm_1/lstm_cell_1/strided_slice_3/stack:output:0@sequential_1/lstm_1/lstm_cell_1/strided_slice_3/stack_1:output:0@sequential_1/lstm_1/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask21
/sequential_1/lstm_1/lstm_cell_1/strided_slice_3і
(sequential_1/lstm_1/lstm_cell_1/MatMul_7MatMul)sequential_1/lstm_1/lstm_cell_1/mul_7:z:08sequential_1/lstm_1/lstm_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2*
(sequential_1/lstm_1/lstm_cell_1/MatMul_7ђ
%sequential_1/lstm_1/lstm_cell_1/add_4AddV22sequential_1/lstm_1/lstm_cell_1/BiasAdd_3:output:02sequential_1/lstm_1/lstm_cell_1/MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2'
%sequential_1/lstm_1/lstm_cell_1/add_4П
)sequential_1/lstm_1/lstm_cell_1/Sigmoid_2Sigmoid)sequential_1/lstm_1/lstm_cell_1/add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2+
)sequential_1/lstm_1/lstm_cell_1/Sigmoid_2Ж
&sequential_1/lstm_1/lstm_cell_1/Tanh_1Tanh)sequential_1/lstm_1/lstm_cell_1/add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2(
&sequential_1/lstm_1/lstm_cell_1/Tanh_1х
&sequential_1/lstm_1/lstm_cell_1/mul_10Mul-sequential_1/lstm_1/lstm_cell_1/Sigmoid_2:y:0*sequential_1/lstm_1/lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2(
&sequential_1/lstm_1/lstm_cell_1/mul_10З
1sequential_1/lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџФ   23
1sequential_1/lstm_1/TensorArrayV2_1/element_shape
#sequential_1/lstm_1/TensorArrayV2_1TensorListReserve:sequential_1/lstm_1/TensorArrayV2_1/element_shape:output:0,sequential_1/lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_1/lstm_1/TensorArrayV2_1v
sequential_1/lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_1/lstm_1/timeЇ
,sequential_1/lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2.
,sequential_1/lstm_1/while/maximum_iterations
&sequential_1/lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_1/lstm_1/while/loop_counter
sequential_1/lstm_1/whileWhile/sequential_1/lstm_1/while/loop_counter:output:05sequential_1/lstm_1/while/maximum_iterations:output:0!sequential_1/lstm_1/time:output:0,sequential_1/lstm_1/TensorArrayV2_1:handle:0"sequential_1/lstm_1/zeros:output:0$sequential_1/lstm_1/zeros_1:output:0,sequential_1/lstm_1/strided_slice_1:output:0Ksequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0=sequential_1_lstm_1_lstm_cell_1_split_readvariableop_resource?sequential_1_lstm_1_lstm_cell_1_split_1_readvariableop_resource7sequential_1_lstm_1_lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџФ:џџџџџџџџџФ: : : : : *%
_read_only_resource_inputs
	
*0
body(R&
$sequential_1_lstm_1_while_body_46867*0
cond(R&
$sequential_1_lstm_1_while_cond_46866*M
output_shapes<
:: : : : :џџџџџџџџџФ:џџџџџџџџџФ: : : : : *
parallel_iterations 2
sequential_1/lstm_1/whileн
Dsequential_1/lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџФ   2F
Dsequential_1/lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeЙ
6sequential_1/lstm_1/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_1/lstm_1/while:output:3Msequential_1/lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:+џџџџџџџџџФ*
element_dtype028
6sequential_1/lstm_1/TensorArrayV2Stack/TensorListStackЉ
)sequential_1/lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2+
)sequential_1/lstm_1/strided_slice_3/stackЄ
+sequential_1/lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_1/lstm_1/strided_slice_3/stack_1Є
+sequential_1/lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_1/strided_slice_3/stack_2
#sequential_1/lstm_1/strided_slice_3StridedSlice?sequential_1/lstm_1/TensorArrayV2Stack/TensorListStack:tensor:02sequential_1/lstm_1/strided_slice_3/stack:output:04sequential_1/lstm_1/strided_slice_3/stack_1:output:04sequential_1/lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџФ*
shrink_axis_mask2%
#sequential_1/lstm_1/strided_slice_3Ё
$sequential_1/lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_1/lstm_1/transpose_1/permі
sequential_1/lstm_1/transpose_1	Transpose?sequential_1/lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_1/lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџ+Ф2!
sequential_1/lstm_1/transpose_1
sequential_1/lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_1/lstm_1/runtimeЭ
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	Ф*
dtype02,
*sequential_1/dense_1/MatMul/ReadVariableOpи
sequential_1/dense_1/MatMulMatMul,sequential_1/lstm_1/strided_slice_3:output:02sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_1/dense_1/MatMulЫ
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential_1/dense_1/BiasAdd/ReadVariableOpе
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_1/dense_1/BiasAdd 
sequential_1/dense_1/SoftmaxSoftmax%sequential_1/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_1/dense_1/Softmaxз
IdentityIdentity&sequential_1/dense_1/Softmax:softmax:0,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp*^sequential_1/embedding_1/embedding_lookup/^sequential_1/lstm_1/lstm_cell_1/ReadVariableOp1^sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_11^sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_21^sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_35^sequential_1/lstm_1/lstm_cell_1/split/ReadVariableOp7^sequential_1/lstm_1/lstm_cell_1/split_1/ReadVariableOp^sequential_1/lstm_1/while*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ+::::::2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp2V
)sequential_1/embedding_1/embedding_lookup)sequential_1/embedding_1/embedding_lookup2`
.sequential_1/lstm_1/lstm_cell_1/ReadVariableOp.sequential_1/lstm_1/lstm_cell_1/ReadVariableOp2d
0sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_10sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_12d
0sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_20sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_22d
0sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_30sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_32l
4sequential_1/lstm_1/lstm_cell_1/split/ReadVariableOp4sequential_1/lstm_1/lstm_cell_1/split/ReadVariableOp2p
6sequential_1/lstm_1/lstm_cell_1/split_1/ReadVariableOp6sequential_1/lstm_1/lstm_cell_1/split_1/ReadVariableOp26
sequential_1/lstm_1/whilesequential_1/lstm_1/while:Z V
'
_output_shapes
:џџџџџџџџџ+
+
_user_specified_nameembedding_1_input
Њ
О
while_cond_50383
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_50383___redundant_placeholder03
/while_while_cond_50383___redundant_placeholder13
/while_while_cond_50383___redundant_placeholder23
/while_while_cond_50383___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :џџџџџџџџџФ:џџџџџџџџџФ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџФ:.*
(
_output_shapes
:џџџџџџџџџФ:

_output_shapes
: :

_output_shapes
:
Ј
Х
while_body_50703
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
1while_lstm_cell_1_split_readvariableop_resource_07
3while_lstm_cell_1_split_1_readvariableop_resource_0/
+while_lstm_cell_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
/while_lstm_cell_1_split_readvariableop_resource5
1while_lstm_cell_1_split_1_readvariableop_resource-
)while_lstm_cell_1_readvariableop_resourceЂ while/lstm_cell_1/ReadVariableOpЂ"while/lstm_cell_1/ReadVariableOp_1Ђ"while/lstm_cell_1/ReadVariableOp_2Ђ"while/lstm_cell_1/ReadVariableOp_3Ђ&while/lstm_cell_1/split/ReadVariableOpЂ(while/lstm_cell_1/split_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeд
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemІ
!while/lstm_cell_1/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/ones_like/Shape
!while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_1/ones_like/ConstЭ
while/lstm_cell_1/ones_likeFill*while/lstm_cell_1/ones_like/Shape:output:0*while/lstm_cell_1/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_1/ones_like
#while/lstm_cell_1/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_1/ones_like_1/Shape
#while/lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_1/ones_like_1/Constе
while/lstm_cell_1/ones_like_1Fill,while/lstm_cell_1/ones_like_1/Shape:output:0,while/lstm_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/ones_like_1Р
while/lstm_cell_1/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_1/mulФ
while/lstm_cell_1/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_1/mul_1Ф
while/lstm_cell_1/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_1/mul_2Ф
while/lstm_cell_1/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_1/mul_3t
while/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_1/Const
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_1/split/split_dimФ
&while/lstm_cell_1/split/ReadVariableOpReadVariableOp1while_lstm_cell_1_split_readvariableop_resource_0* 
_output_shapes
:
*
dtype02(
&while/lstm_cell_1/split/ReadVariableOpї
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0.while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ф:
Ф:
Ф:
Ф*
	num_split2
while/lstm_cell_1/splitЎ
while/lstm_cell_1/MatMulMatMulwhile/lstm_cell_1/mul:z:0 while/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMulД
while/lstm_cell_1/MatMul_1MatMulwhile/lstm_cell_1/mul_1:z:0 while/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_1Д
while/lstm_cell_1/MatMul_2MatMulwhile/lstm_cell_1/mul_2:z:0 while/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_2Д
while/lstm_cell_1/MatMul_3MatMulwhile/lstm_cell_1/mul_3:z:0 while/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_3x
while/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_1/Const_1
#while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_1/split_1/split_dimХ
(while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02*
(while/lstm_cell_1/split_1/ReadVariableOpы
while/lstm_cell_1/split_1Split,while/lstm_cell_1/split_1/split_dim:output:00while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ф:Ф:Ф:Ф*
	num_split2
while/lstm_cell_1/split_1М
while/lstm_cell_1/BiasAddBiasAdd"while/lstm_cell_1/MatMul:product:0"while/lstm_cell_1/split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/BiasAddТ
while/lstm_cell_1/BiasAdd_1BiasAdd$while/lstm_cell_1/MatMul_1:product:0"while/lstm_cell_1/split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/BiasAdd_1Т
while/lstm_cell_1/BiasAdd_2BiasAdd$while/lstm_cell_1/MatMul_2:product:0"while/lstm_cell_1/split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/BiasAdd_2Т
while/lstm_cell_1/BiasAdd_3BiasAdd$while/lstm_cell_1/MatMul_3:product:0"while/lstm_cell_1/split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/BiasAdd_3Љ
while/lstm_cell_1/mul_4Mulwhile_placeholder_2&while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_4Љ
while/lstm_cell_1/mul_5Mulwhile_placeholder_2&while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_5Љ
while/lstm_cell_1/mul_6Mulwhile_placeholder_2&while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_6Љ
while/lstm_cell_1/mul_7Mulwhile_placeholder_2&while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_7В
 while/lstm_cell_1/ReadVariableOpReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
Ф*
dtype02"
 while/lstm_cell_1/ReadVariableOp
%while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_1/strided_slice/stackЃ
'while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ф   2)
'while/lstm_cell_1/strided_slice/stack_1Ѓ
'while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_1/strided_slice/stack_2ъ
while/lstm_cell_1/strided_sliceStridedSlice(while/lstm_cell_1/ReadVariableOp:value:0.while/lstm_cell_1/strided_slice/stack:output:00while/lstm_cell_1/strided_slice/stack_1:output:00while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2!
while/lstm_cell_1/strided_sliceМ
while/lstm_cell_1/MatMul_4MatMulwhile/lstm_cell_1/mul_4:z:0(while/lstm_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_4Д
while/lstm_cell_1/addAddV2"while/lstm_cell_1/BiasAdd:output:0$while/lstm_cell_1/MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/add
while/lstm_cell_1/SigmoidSigmoidwhile/lstm_cell_1/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/SigmoidЖ
"while/lstm_cell_1/ReadVariableOp_1ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
Ф*
dtype02$
"while/lstm_cell_1/ReadVariableOp_1Ѓ
'while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ф   2)
'while/lstm_cell_1/strided_slice_1/stackЇ
)while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_1/stack_1Ї
)while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_1/stack_2і
!while/lstm_cell_1/strided_slice_1StridedSlice*while/lstm_cell_1/ReadVariableOp_1:value:00while/lstm_cell_1/strided_slice_1/stack:output:02while/lstm_cell_1/strided_slice_1/stack_1:output:02while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_1О
while/lstm_cell_1/MatMul_5MatMulwhile/lstm_cell_1/mul_5:z:0*while/lstm_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_5К
while/lstm_cell_1/add_1AddV2$while/lstm_cell_1/BiasAdd_1:output:0$while/lstm_cell_1/MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/add_1
while/lstm_cell_1/Sigmoid_1Sigmoidwhile/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/Sigmoid_1Ђ
while/lstm_cell_1/mul_8Mulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_8Ж
"while/lstm_cell_1/ReadVariableOp_2ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
Ф*
dtype02$
"while/lstm_cell_1/ReadVariableOp_2Ѓ
'while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_1/strided_slice_2/stackЇ
)while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2+
)while/lstm_cell_1/strided_slice_2/stack_1Ї
)while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_2/stack_2і
!while/lstm_cell_1/strided_slice_2StridedSlice*while/lstm_cell_1/ReadVariableOp_2:value:00while/lstm_cell_1/strided_slice_2/stack:output:02while/lstm_cell_1/strided_slice_2/stack_1:output:02while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_2О
while/lstm_cell_1/MatMul_6MatMulwhile/lstm_cell_1/mul_6:z:0*while/lstm_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_6К
while/lstm_cell_1/add_2AddV2$while/lstm_cell_1/BiasAdd_2:output:0$while/lstm_cell_1/MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/add_2
while/lstm_cell_1/TanhTanhwhile/lstm_cell_1/add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/TanhЇ
while/lstm_cell_1/mul_9Mulwhile/lstm_cell_1/Sigmoid:y:0while/lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_9Ј
while/lstm_cell_1/add_3AddV2while/lstm_cell_1/mul_8:z:0while/lstm_cell_1/mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/add_3Ж
"while/lstm_cell_1/ReadVariableOp_3ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
Ф*
dtype02$
"while/lstm_cell_1/ReadVariableOp_3Ѓ
'while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2)
'while/lstm_cell_1/strided_slice_3/stackЇ
)while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_1/strided_slice_3/stack_1Ї
)while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_3/stack_2і
!while/lstm_cell_1/strided_slice_3StridedSlice*while/lstm_cell_1/ReadVariableOp_3:value:00while/lstm_cell_1/strided_slice_3/stack:output:02while/lstm_cell_1/strided_slice_3/stack_1:output:02while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_3О
while/lstm_cell_1/MatMul_7MatMulwhile/lstm_cell_1/mul_7:z:0*while/lstm_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_7К
while/lstm_cell_1/add_4AddV2$while/lstm_cell_1/BiasAdd_3:output:0$while/lstm_cell_1/MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/add_4
while/lstm_cell_1/Sigmoid_2Sigmoidwhile/lstm_cell_1/add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/Sigmoid_2
while/lstm_cell_1/Tanh_1Tanhwhile/lstm_cell_1/add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/Tanh_1­
while/lstm_cell_1/mul_10Mulwhile/lstm_cell_1/Sigmoid_2:y:0while/lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_10р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ф
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityз
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Ц
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ѓ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3ч
while/Identity_4Identitywhile/lstm_cell_1/mul_10:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/Identity_4ц
while/Identity_5Identitywhile/lstm_cell_1/add_3:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_1_readvariableop_resource+while_lstm_cell_1_readvariableop_resource_0"h
1while_lstm_cell_1_split_1_readvariableop_resource3while_lstm_cell_1_split_1_readvariableop_resource_0"d
/while_lstm_cell_1_split_readvariableop_resource1while_lstm_cell_1_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :џџџџџџџџџФ:џџџџџџџџџФ: : :::2D
 while/lstm_cell_1/ReadVariableOp while/lstm_cell_1/ReadVariableOp2H
"while/lstm_cell_1/ReadVariableOp_1"while/lstm_cell_1/ReadVariableOp_12H
"while/lstm_cell_1/ReadVariableOp_2"while/lstm_cell_1/ReadVariableOp_22H
"while/lstm_cell_1/ReadVariableOp_3"while/lstm_cell_1/ReadVariableOp_32P
&while/lstm_cell_1/split/ReadVariableOp&while/lstm_cell_1/split/ReadVariableOp2T
(while/lstm_cell_1/split_1/ReadVariableOp(while/lstm_cell_1/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџФ:.*
(
_output_shapes
:џџџџџџџџџФ:

_output_shapes
: :

_output_shapes
: 
о	

F__inference_embedding_1_layer_call_and_return_conditional_losses_47866

inputs
embedding_lookup_47860
identityЂembedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџ+2
Castќ
embedding_lookupResourceGatherembedding_lookup_47860Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/47860*,
_output_shapes
:џџџџџџџџџ+*
dtype02
embedding_lookupэ
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/47860*,
_output_shapes
:џџџџџџџџџ+2
embedding_lookup/IdentityЁ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:џџџџџџџџџ+2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*,
_output_shapes
:џџџџџџџџџ+2

Identity"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ+:2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:џџџџџџџџџ+
 
_user_specified_nameinputs

Ш
,__inference_sequential_1_layer_call_fn_48706
embedding_1_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityЂStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallembedding_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_486912
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ+::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
'
_output_shapes
:џџџџџџџџџ+
+
_user_specified_nameembedding_1_input
Њ
О
while_cond_48097
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_48097___redundant_placeholder03
/while_while_cond_48097___redundant_placeholder13
/while_while_cond_48097___redundant_placeholder23
/while_while_cond_48097___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :џџџџџџџџџФ:џџџџџџџџџФ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџФ:.*
(
_output_shapes
:џџџџџџџџџФ:

_output_shapes
: :

_output_shapes
:
п
К

lstm_1_while_body_48940*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3)
%lstm_1_while_lstm_1_strided_slice_1_0e
alstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0<
8lstm_1_while_lstm_cell_1_split_readvariableop_resource_0>
:lstm_1_while_lstm_cell_1_split_1_readvariableop_resource_06
2lstm_1_while_lstm_cell_1_readvariableop_resource_0
lstm_1_while_identity
lstm_1_while_identity_1
lstm_1_while_identity_2
lstm_1_while_identity_3
lstm_1_while_identity_4
lstm_1_while_identity_5'
#lstm_1_while_lstm_1_strided_slice_1c
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor:
6lstm_1_while_lstm_cell_1_split_readvariableop_resource<
8lstm_1_while_lstm_cell_1_split_1_readvariableop_resource4
0lstm_1_while_lstm_cell_1_readvariableop_resourceЂ'lstm_1/while/lstm_cell_1/ReadVariableOpЂ)lstm_1/while/lstm_cell_1/ReadVariableOp_1Ђ)lstm_1/while/lstm_cell_1/ReadVariableOp_2Ђ)lstm_1/while/lstm_cell_1/ReadVariableOp_3Ђ-lstm_1/while/lstm_cell_1/split/ReadVariableOpЂ/lstm_1/while/lstm_cell_1/split_1/ReadVariableOpб
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2@
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeў
0lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0lstm_1_while_placeholderGlstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype022
0lstm_1/while/TensorArrayV2Read/TensorListGetItemЛ
(lstm_1/while/lstm_cell_1/ones_like/ShapeShape7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2*
(lstm_1/while/lstm_cell_1/ones_like/Shape
(lstm_1/while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2*
(lstm_1/while/lstm_cell_1/ones_like/Constщ
"lstm_1/while/lstm_cell_1/ones_likeFill1lstm_1/while/lstm_cell_1/ones_like/Shape:output:01lstm_1/while/lstm_cell_1/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2$
"lstm_1/while/lstm_cell_1/ones_like
&lstm_1/while/lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2(
&lstm_1/while/lstm_cell_1/dropout/Constф
$lstm_1/while/lstm_cell_1/dropout/MulMul+lstm_1/while/lstm_cell_1/ones_like:output:0/lstm_1/while/lstm_cell_1/dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2&
$lstm_1/while/lstm_cell_1/dropout/MulЋ
&lstm_1/while/lstm_cell_1/dropout/ShapeShape+lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2(
&lstm_1/while/lstm_cell_1/dropout/Shape
=lstm_1/while/lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform/lstm_1/while/lstm_cell_1/dropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2КНВ2?
=lstm_1/while/lstm_cell_1/dropout/random_uniform/RandomUniformЇ
/lstm_1/while/lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>21
/lstm_1/while/lstm_cell_1/dropout/GreaterEqual/yЃ
-lstm_1/while/lstm_cell_1/dropout/GreaterEqualGreaterEqualFlstm_1/while/lstm_cell_1/dropout/random_uniform/RandomUniform:output:08lstm_1/while/lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2/
-lstm_1/while/lstm_cell_1/dropout/GreaterEqualЫ
%lstm_1/while/lstm_cell_1/dropout/CastCast1lstm_1/while/lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2'
%lstm_1/while/lstm_cell_1/dropout/Castп
&lstm_1/while/lstm_cell_1/dropout/Mul_1Mul(lstm_1/while/lstm_cell_1/dropout/Mul:z:0)lstm_1/while/lstm_cell_1/dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2(
&lstm_1/while/lstm_cell_1/dropout/Mul_1
(lstm_1/while/lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(lstm_1/while/lstm_cell_1/dropout_1/Constъ
&lstm_1/while/lstm_cell_1/dropout_1/MulMul+lstm_1/while/lstm_cell_1/ones_like:output:01lstm_1/while/lstm_cell_1/dropout_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2(
&lstm_1/while/lstm_cell_1/dropout_1/MulЏ
(lstm_1/while/lstm_cell_1/dropout_1/ShapeShape+lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_1/while/lstm_cell_1/dropout_1/ShapeЅ
?lstm_1/while/lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform1lstm_1/while/lstm_cell_1/dropout_1/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2чџу2A
?lstm_1/while/lstm_cell_1/dropout_1/random_uniform/RandomUniformЋ
1lstm_1/while/lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>23
1lstm_1/while/lstm_cell_1/dropout_1/GreaterEqual/yЋ
/lstm_1/while/lstm_cell_1/dropout_1/GreaterEqualGreaterEqualHlstm_1/while/lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:0:lstm_1/while/lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ21
/lstm_1/while/lstm_cell_1/dropout_1/GreaterEqualб
'lstm_1/while/lstm_cell_1/dropout_1/CastCast3lstm_1/while/lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2)
'lstm_1/while/lstm_cell_1/dropout_1/Castч
(lstm_1/while/lstm_cell_1/dropout_1/Mul_1Mul*lstm_1/while/lstm_cell_1/dropout_1/Mul:z:0+lstm_1/while/lstm_cell_1/dropout_1/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2*
(lstm_1/while/lstm_cell_1/dropout_1/Mul_1
(lstm_1/while/lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(lstm_1/while/lstm_cell_1/dropout_2/Constъ
&lstm_1/while/lstm_cell_1/dropout_2/MulMul+lstm_1/while/lstm_cell_1/ones_like:output:01lstm_1/while/lstm_cell_1/dropout_2/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2(
&lstm_1/while/lstm_cell_1/dropout_2/MulЏ
(lstm_1/while/lstm_cell_1/dropout_2/ShapeShape+lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_1/while/lstm_cell_1/dropout_2/ShapeЅ
?lstm_1/while/lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform1lstm_1/while/lstm_cell_1/dropout_2/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2щљ2A
?lstm_1/while/lstm_cell_1/dropout_2/random_uniform/RandomUniformЋ
1lstm_1/while/lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>23
1lstm_1/while/lstm_cell_1/dropout_2/GreaterEqual/yЋ
/lstm_1/while/lstm_cell_1/dropout_2/GreaterEqualGreaterEqualHlstm_1/while/lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:0:lstm_1/while/lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ21
/lstm_1/while/lstm_cell_1/dropout_2/GreaterEqualб
'lstm_1/while/lstm_cell_1/dropout_2/CastCast3lstm_1/while/lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2)
'lstm_1/while/lstm_cell_1/dropout_2/Castч
(lstm_1/while/lstm_cell_1/dropout_2/Mul_1Mul*lstm_1/while/lstm_cell_1/dropout_2/Mul:z:0+lstm_1/while/lstm_cell_1/dropout_2/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2*
(lstm_1/while/lstm_cell_1/dropout_2/Mul_1
(lstm_1/while/lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(lstm_1/while/lstm_cell_1/dropout_3/Constъ
&lstm_1/while/lstm_cell_1/dropout_3/MulMul+lstm_1/while/lstm_cell_1/ones_like:output:01lstm_1/while/lstm_cell_1/dropout_3/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2(
&lstm_1/while/lstm_cell_1/dropout_3/MulЏ
(lstm_1/while/lstm_cell_1/dropout_3/ShapeShape+lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_1/while/lstm_cell_1/dropout_3/ShapeЅ
?lstm_1/while/lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform1lstm_1/while/lstm_cell_1/dropout_3/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2ўю2A
?lstm_1/while/lstm_cell_1/dropout_3/random_uniform/RandomUniformЋ
1lstm_1/while/lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>23
1lstm_1/while/lstm_cell_1/dropout_3/GreaterEqual/yЋ
/lstm_1/while/lstm_cell_1/dropout_3/GreaterEqualGreaterEqualHlstm_1/while/lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:0:lstm_1/while/lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ21
/lstm_1/while/lstm_cell_1/dropout_3/GreaterEqualб
'lstm_1/while/lstm_cell_1/dropout_3/CastCast3lstm_1/while/lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2)
'lstm_1/while/lstm_cell_1/dropout_3/Castч
(lstm_1/while/lstm_cell_1/dropout_3/Mul_1Mul*lstm_1/while/lstm_cell_1/dropout_3/Mul:z:0+lstm_1/while/lstm_cell_1/dropout_3/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2*
(lstm_1/while/lstm_cell_1/dropout_3/Mul_1Ђ
*lstm_1/while/lstm_cell_1/ones_like_1/ShapeShapelstm_1_while_placeholder_2*
T0*
_output_shapes
:2,
*lstm_1/while/lstm_cell_1/ones_like_1/Shape
*lstm_1/while/lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*lstm_1/while/lstm_cell_1/ones_like_1/Constё
$lstm_1/while/lstm_cell_1/ones_like_1Fill3lstm_1/while/lstm_cell_1/ones_like_1/Shape:output:03lstm_1/while/lstm_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2&
$lstm_1/while/lstm_cell_1/ones_like_1
(lstm_1/while/lstm_cell_1/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(lstm_1/while/lstm_cell_1/dropout_4/Constь
&lstm_1/while/lstm_cell_1/dropout_4/MulMul-lstm_1/while/lstm_cell_1/ones_like_1:output:01lstm_1/while/lstm_cell_1/dropout_4/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2(
&lstm_1/while/lstm_cell_1/dropout_4/MulБ
(lstm_1/while/lstm_cell_1/dropout_4/ShapeShape-lstm_1/while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2*
(lstm_1/while/lstm_cell_1/dropout_4/ShapeЅ
?lstm_1/while/lstm_cell_1/dropout_4/random_uniform/RandomUniformRandomUniform1lstm_1/while/lstm_cell_1/dropout_4/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2Жфћ2A
?lstm_1/while/lstm_cell_1/dropout_4/random_uniform/RandomUniformЋ
1lstm_1/while/lstm_cell_1/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>23
1lstm_1/while/lstm_cell_1/dropout_4/GreaterEqual/yЋ
/lstm_1/while/lstm_cell_1/dropout_4/GreaterEqualGreaterEqualHlstm_1/while/lstm_cell_1/dropout_4/random_uniform/RandomUniform:output:0:lstm_1/while/lstm_cell_1/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ21
/lstm_1/while/lstm_cell_1/dropout_4/GreaterEqualб
'lstm_1/while/lstm_cell_1/dropout_4/CastCast3lstm_1/while/lstm_cell_1/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2)
'lstm_1/while/lstm_cell_1/dropout_4/Castч
(lstm_1/while/lstm_cell_1/dropout_4/Mul_1Mul*lstm_1/while/lstm_cell_1/dropout_4/Mul:z:0+lstm_1/while/lstm_cell_1/dropout_4/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2*
(lstm_1/while/lstm_cell_1/dropout_4/Mul_1
(lstm_1/while/lstm_cell_1/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(lstm_1/while/lstm_cell_1/dropout_5/Constь
&lstm_1/while/lstm_cell_1/dropout_5/MulMul-lstm_1/while/lstm_cell_1/ones_like_1:output:01lstm_1/while/lstm_cell_1/dropout_5/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2(
&lstm_1/while/lstm_cell_1/dropout_5/MulБ
(lstm_1/while/lstm_cell_1/dropout_5/ShapeShape-lstm_1/while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2*
(lstm_1/while/lstm_cell_1/dropout_5/ShapeЅ
?lstm_1/while/lstm_cell_1/dropout_5/random_uniform/RandomUniformRandomUniform1lstm_1/while/lstm_cell_1/dropout_5/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed22A
?lstm_1/while/lstm_cell_1/dropout_5/random_uniform/RandomUniformЋ
1lstm_1/while/lstm_cell_1/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>23
1lstm_1/while/lstm_cell_1/dropout_5/GreaterEqual/yЋ
/lstm_1/while/lstm_cell_1/dropout_5/GreaterEqualGreaterEqualHlstm_1/while/lstm_cell_1/dropout_5/random_uniform/RandomUniform:output:0:lstm_1/while/lstm_cell_1/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ21
/lstm_1/while/lstm_cell_1/dropout_5/GreaterEqualб
'lstm_1/while/lstm_cell_1/dropout_5/CastCast3lstm_1/while/lstm_cell_1/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2)
'lstm_1/while/lstm_cell_1/dropout_5/Castч
(lstm_1/while/lstm_cell_1/dropout_5/Mul_1Mul*lstm_1/while/lstm_cell_1/dropout_5/Mul:z:0+lstm_1/while/lstm_cell_1/dropout_5/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2*
(lstm_1/while/lstm_cell_1/dropout_5/Mul_1
(lstm_1/while/lstm_cell_1/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(lstm_1/while/lstm_cell_1/dropout_6/Constь
&lstm_1/while/lstm_cell_1/dropout_6/MulMul-lstm_1/while/lstm_cell_1/ones_like_1:output:01lstm_1/while/lstm_cell_1/dropout_6/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2(
&lstm_1/while/lstm_cell_1/dropout_6/MulБ
(lstm_1/while/lstm_cell_1/dropout_6/ShapeShape-lstm_1/while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2*
(lstm_1/while/lstm_cell_1/dropout_6/ShapeЅ
?lstm_1/while/lstm_cell_1/dropout_6/random_uniform/RandomUniformRandomUniform1lstm_1/while/lstm_cell_1/dropout_6/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2Џ2A
?lstm_1/while/lstm_cell_1/dropout_6/random_uniform/RandomUniformЋ
1lstm_1/while/lstm_cell_1/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>23
1lstm_1/while/lstm_cell_1/dropout_6/GreaterEqual/yЋ
/lstm_1/while/lstm_cell_1/dropout_6/GreaterEqualGreaterEqualHlstm_1/while/lstm_cell_1/dropout_6/random_uniform/RandomUniform:output:0:lstm_1/while/lstm_cell_1/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ21
/lstm_1/while/lstm_cell_1/dropout_6/GreaterEqualб
'lstm_1/while/lstm_cell_1/dropout_6/CastCast3lstm_1/while/lstm_cell_1/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2)
'lstm_1/while/lstm_cell_1/dropout_6/Castч
(lstm_1/while/lstm_cell_1/dropout_6/Mul_1Mul*lstm_1/while/lstm_cell_1/dropout_6/Mul:z:0+lstm_1/while/lstm_cell_1/dropout_6/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2*
(lstm_1/while/lstm_cell_1/dropout_6/Mul_1
(lstm_1/while/lstm_cell_1/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(lstm_1/while/lstm_cell_1/dropout_7/Constь
&lstm_1/while/lstm_cell_1/dropout_7/MulMul-lstm_1/while/lstm_cell_1/ones_like_1:output:01lstm_1/while/lstm_cell_1/dropout_7/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2(
&lstm_1/while/lstm_cell_1/dropout_7/MulБ
(lstm_1/while/lstm_cell_1/dropout_7/ShapeShape-lstm_1/while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2*
(lstm_1/while/lstm_cell_1/dropout_7/ShapeЅ
?lstm_1/while/lstm_cell_1/dropout_7/random_uniform/RandomUniformRandomUniform1lstm_1/while/lstm_cell_1/dropout_7/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2шзЉ2A
?lstm_1/while/lstm_cell_1/dropout_7/random_uniform/RandomUniformЋ
1lstm_1/while/lstm_cell_1/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>23
1lstm_1/while/lstm_cell_1/dropout_7/GreaterEqual/yЋ
/lstm_1/while/lstm_cell_1/dropout_7/GreaterEqualGreaterEqualHlstm_1/while/lstm_cell_1/dropout_7/random_uniform/RandomUniform:output:0:lstm_1/while/lstm_cell_1/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ21
/lstm_1/while/lstm_cell_1/dropout_7/GreaterEqualб
'lstm_1/while/lstm_cell_1/dropout_7/CastCast3lstm_1/while/lstm_cell_1/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2)
'lstm_1/while/lstm_cell_1/dropout_7/Castч
(lstm_1/while/lstm_cell_1/dropout_7/Mul_1Mul*lstm_1/while/lstm_cell_1/dropout_7/Mul:z:0+lstm_1/while/lstm_cell_1/dropout_7/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2*
(lstm_1/while/lstm_cell_1/dropout_7/Mul_1л
lstm_1/while/lstm_cell_1/mulMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0*lstm_1/while/lstm_cell_1/dropout/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_1/while/lstm_cell_1/mulс
lstm_1/while/lstm_cell_1/mul_1Mul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0,lstm_1/while/lstm_cell_1/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2 
lstm_1/while/lstm_cell_1/mul_1с
lstm_1/while/lstm_cell_1/mul_2Mul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0,lstm_1/while/lstm_cell_1/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2 
lstm_1/while/lstm_cell_1/mul_2с
lstm_1/while/lstm_cell_1/mul_3Mul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0,lstm_1/while/lstm_cell_1/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2 
lstm_1/while/lstm_cell_1/mul_3
lstm_1/while/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2 
lstm_1/while/lstm_cell_1/Const
(lstm_1/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_1/while/lstm_cell_1/split/split_dimй
-lstm_1/while/lstm_cell_1/split/ReadVariableOpReadVariableOp8lstm_1_while_lstm_cell_1_split_readvariableop_resource_0* 
_output_shapes
:
*
dtype02/
-lstm_1/while/lstm_cell_1/split/ReadVariableOp
lstm_1/while/lstm_cell_1/splitSplit1lstm_1/while/lstm_cell_1/split/split_dim:output:05lstm_1/while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ф:
Ф:
Ф:
Ф*
	num_split2 
lstm_1/while/lstm_cell_1/splitЪ
lstm_1/while/lstm_cell_1/MatMulMatMul lstm_1/while/lstm_cell_1/mul:z:0'lstm_1/while/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2!
lstm_1/while/lstm_cell_1/MatMulа
!lstm_1/while/lstm_cell_1/MatMul_1MatMul"lstm_1/while/lstm_cell_1/mul_1:z:0'lstm_1/while/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2#
!lstm_1/while/lstm_cell_1/MatMul_1а
!lstm_1/while/lstm_cell_1/MatMul_2MatMul"lstm_1/while/lstm_cell_1/mul_2:z:0'lstm_1/while/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2#
!lstm_1/while/lstm_cell_1/MatMul_2а
!lstm_1/while/lstm_cell_1/MatMul_3MatMul"lstm_1/while/lstm_cell_1/mul_3:z:0'lstm_1/while/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2#
!lstm_1/while/lstm_cell_1/MatMul_3
 lstm_1/while/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2"
 lstm_1/while/lstm_cell_1/Const_1
*lstm_1/while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2,
*lstm_1/while/lstm_cell_1/split_1/split_dimк
/lstm_1/while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp:lstm_1_while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype021
/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp
 lstm_1/while/lstm_cell_1/split_1Split3lstm_1/while/lstm_cell_1/split_1/split_dim:output:07lstm_1/while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ф:Ф:Ф:Ф*
	num_split2"
 lstm_1/while/lstm_cell_1/split_1и
 lstm_1/while/lstm_cell_1/BiasAddBiasAdd)lstm_1/while/lstm_cell_1/MatMul:product:0)lstm_1/while/lstm_cell_1/split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2"
 lstm_1/while/lstm_cell_1/BiasAddо
"lstm_1/while/lstm_cell_1/BiasAdd_1BiasAdd+lstm_1/while/lstm_cell_1/MatMul_1:product:0)lstm_1/while/lstm_cell_1/split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2$
"lstm_1/while/lstm_cell_1/BiasAdd_1о
"lstm_1/while/lstm_cell_1/BiasAdd_2BiasAdd+lstm_1/while/lstm_cell_1/MatMul_2:product:0)lstm_1/while/lstm_cell_1/split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2$
"lstm_1/while/lstm_cell_1/BiasAdd_2о
"lstm_1/while/lstm_cell_1/BiasAdd_3BiasAdd+lstm_1/while/lstm_cell_1/MatMul_3:product:0)lstm_1/while/lstm_cell_1/split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2$
"lstm_1/while/lstm_cell_1/BiasAdd_3Ф
lstm_1/while/lstm_cell_1/mul_4Mullstm_1_while_placeholder_2,lstm_1/while/lstm_cell_1/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2 
lstm_1/while/lstm_cell_1/mul_4Ф
lstm_1/while/lstm_cell_1/mul_5Mullstm_1_while_placeholder_2,lstm_1/while/lstm_cell_1/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2 
lstm_1/while/lstm_cell_1/mul_5Ф
lstm_1/while/lstm_cell_1/mul_6Mullstm_1_while_placeholder_2,lstm_1/while/lstm_cell_1/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2 
lstm_1/while/lstm_cell_1/mul_6Ф
lstm_1/while/lstm_cell_1/mul_7Mullstm_1_while_placeholder_2,lstm_1/while/lstm_cell_1/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2 
lstm_1/while/lstm_cell_1/mul_7Ч
'lstm_1/while/lstm_cell_1/ReadVariableOpReadVariableOp2lstm_1_while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
Ф*
dtype02)
'lstm_1/while/lstm_cell_1/ReadVariableOp­
,lstm_1/while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_1/while/lstm_cell_1/strided_slice/stackБ
.lstm_1/while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ф   20
.lstm_1/while/lstm_cell_1/strided_slice/stack_1Б
.lstm_1/while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_1/while/lstm_cell_1/strided_slice/stack_2
&lstm_1/while/lstm_cell_1/strided_sliceStridedSlice/lstm_1/while/lstm_cell_1/ReadVariableOp:value:05lstm_1/while/lstm_cell_1/strided_slice/stack:output:07lstm_1/while/lstm_cell_1/strided_slice/stack_1:output:07lstm_1/while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2(
&lstm_1/while/lstm_cell_1/strided_sliceи
!lstm_1/while/lstm_cell_1/MatMul_4MatMul"lstm_1/while/lstm_cell_1/mul_4:z:0/lstm_1/while/lstm_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2#
!lstm_1/while/lstm_cell_1/MatMul_4а
lstm_1/while/lstm_cell_1/addAddV2)lstm_1/while/lstm_cell_1/BiasAdd:output:0+lstm_1/while/lstm_cell_1/MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/while/lstm_cell_1/addЄ
 lstm_1/while/lstm_cell_1/SigmoidSigmoid lstm_1/while/lstm_cell_1/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2"
 lstm_1/while/lstm_cell_1/SigmoidЫ
)lstm_1/while/lstm_cell_1/ReadVariableOp_1ReadVariableOp2lstm_1_while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
Ф*
dtype02+
)lstm_1/while/lstm_cell_1/ReadVariableOp_1Б
.lstm_1/while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ф   20
.lstm_1/while/lstm_cell_1/strided_slice_1/stackЕ
0lstm_1/while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_1/while/lstm_cell_1/strided_slice_1/stack_1Е
0lstm_1/while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_1/while/lstm_cell_1/strided_slice_1/stack_2 
(lstm_1/while/lstm_cell_1/strided_slice_1StridedSlice1lstm_1/while/lstm_cell_1/ReadVariableOp_1:value:07lstm_1/while/lstm_cell_1/strided_slice_1/stack:output:09lstm_1/while/lstm_cell_1/strided_slice_1/stack_1:output:09lstm_1/while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2*
(lstm_1/while/lstm_cell_1/strided_slice_1к
!lstm_1/while/lstm_cell_1/MatMul_5MatMul"lstm_1/while/lstm_cell_1/mul_5:z:01lstm_1/while/lstm_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2#
!lstm_1/while/lstm_cell_1/MatMul_5ж
lstm_1/while/lstm_cell_1/add_1AddV2+lstm_1/while/lstm_cell_1/BiasAdd_1:output:0+lstm_1/while/lstm_cell_1/MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2 
lstm_1/while/lstm_cell_1/add_1Њ
"lstm_1/while/lstm_cell_1/Sigmoid_1Sigmoid"lstm_1/while/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2$
"lstm_1/while/lstm_cell_1/Sigmoid_1О
lstm_1/while/lstm_cell_1/mul_8Mul&lstm_1/while/lstm_cell_1/Sigmoid_1:y:0lstm_1_while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџФ2 
lstm_1/while/lstm_cell_1/mul_8Ы
)lstm_1/while/lstm_cell_1/ReadVariableOp_2ReadVariableOp2lstm_1_while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
Ф*
dtype02+
)lstm_1/while/lstm_cell_1/ReadVariableOp_2Б
.lstm_1/while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_1/while/lstm_cell_1/strided_slice_2/stackЕ
0lstm_1/while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  22
0lstm_1/while/lstm_cell_1/strided_slice_2/stack_1Е
0lstm_1/while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_1/while/lstm_cell_1/strided_slice_2/stack_2 
(lstm_1/while/lstm_cell_1/strided_slice_2StridedSlice1lstm_1/while/lstm_cell_1/ReadVariableOp_2:value:07lstm_1/while/lstm_cell_1/strided_slice_2/stack:output:09lstm_1/while/lstm_cell_1/strided_slice_2/stack_1:output:09lstm_1/while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2*
(lstm_1/while/lstm_cell_1/strided_slice_2к
!lstm_1/while/lstm_cell_1/MatMul_6MatMul"lstm_1/while/lstm_cell_1/mul_6:z:01lstm_1/while/lstm_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2#
!lstm_1/while/lstm_cell_1/MatMul_6ж
lstm_1/while/lstm_cell_1/add_2AddV2+lstm_1/while/lstm_cell_1/BiasAdd_2:output:0+lstm_1/while/lstm_cell_1/MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2 
lstm_1/while/lstm_cell_1/add_2
lstm_1/while/lstm_cell_1/TanhTanh"lstm_1/while/lstm_cell_1/add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/while/lstm_cell_1/TanhУ
lstm_1/while/lstm_cell_1/mul_9Mul$lstm_1/while/lstm_cell_1/Sigmoid:y:0!lstm_1/while/lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2 
lstm_1/while/lstm_cell_1/mul_9Ф
lstm_1/while/lstm_cell_1/add_3AddV2"lstm_1/while/lstm_cell_1/mul_8:z:0"lstm_1/while/lstm_cell_1/mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2 
lstm_1/while/lstm_cell_1/add_3Ы
)lstm_1/while/lstm_cell_1/ReadVariableOp_3ReadVariableOp2lstm_1_while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
Ф*
dtype02+
)lstm_1/while/lstm_cell_1/ReadVariableOp_3Б
.lstm_1/while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  20
.lstm_1/while/lstm_cell_1/strided_slice_3/stackЕ
0lstm_1/while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_1/while/lstm_cell_1/strided_slice_3/stack_1Е
0lstm_1/while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_1/while/lstm_cell_1/strided_slice_3/stack_2 
(lstm_1/while/lstm_cell_1/strided_slice_3StridedSlice1lstm_1/while/lstm_cell_1/ReadVariableOp_3:value:07lstm_1/while/lstm_cell_1/strided_slice_3/stack:output:09lstm_1/while/lstm_cell_1/strided_slice_3/stack_1:output:09lstm_1/while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2*
(lstm_1/while/lstm_cell_1/strided_slice_3к
!lstm_1/while/lstm_cell_1/MatMul_7MatMul"lstm_1/while/lstm_cell_1/mul_7:z:01lstm_1/while/lstm_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2#
!lstm_1/while/lstm_cell_1/MatMul_7ж
lstm_1/while/lstm_cell_1/add_4AddV2+lstm_1/while/lstm_cell_1/BiasAdd_3:output:0+lstm_1/while/lstm_cell_1/MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2 
lstm_1/while/lstm_cell_1/add_4Њ
"lstm_1/while/lstm_cell_1/Sigmoid_2Sigmoid"lstm_1/while/lstm_cell_1/add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2$
"lstm_1/while/lstm_cell_1/Sigmoid_2Ё
lstm_1/while/lstm_cell_1/Tanh_1Tanh"lstm_1/while/lstm_cell_1/add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2!
lstm_1/while/lstm_cell_1/Tanh_1Щ
lstm_1/while/lstm_cell_1/mul_10Mul&lstm_1/while/lstm_cell_1/Sigmoid_2:y:0#lstm_1/while/lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2!
lstm_1/while/lstm_cell_1/mul_10
1lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_1_while_placeholder_1lstm_1_while_placeholder#lstm_1/while/lstm_cell_1/mul_10:z:0*
_output_shapes
: *
element_dtype023
1lstm_1/while/TensorArrayV2Write/TensorListSetItemj
lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/while/add/y
lstm_1/while/addAddV2lstm_1_while_placeholderlstm_1/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_1/while/addn
lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/while/add_1/y
lstm_1/while/add_1AddV2&lstm_1_while_lstm_1_while_loop_counterlstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_1/while/add_1
lstm_1/while/IdentityIdentitylstm_1/while/add_1:z:0(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity
lstm_1/while/Identity_1Identity,lstm_1_while_lstm_1_while_maximum_iterations(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_1
lstm_1/while/Identity_2Identitylstm_1/while/add:z:0(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_2В
lstm_1/while/Identity_3IdentityAlstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_3І
lstm_1/while/Identity_4Identity#lstm_1/while/lstm_cell_1/mul_10:z:0(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/while/Identity_4Ѕ
lstm_1/while/Identity_5Identity"lstm_1/while/lstm_cell_1/add_3:z:0(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/while/Identity_5"7
lstm_1_while_identitylstm_1/while/Identity:output:0";
lstm_1_while_identity_1 lstm_1/while/Identity_1:output:0";
lstm_1_while_identity_2 lstm_1/while/Identity_2:output:0";
lstm_1_while_identity_3 lstm_1/while/Identity_3:output:0";
lstm_1_while_identity_4 lstm_1/while/Identity_4:output:0";
lstm_1_while_identity_5 lstm_1/while/Identity_5:output:0"L
#lstm_1_while_lstm_1_strided_slice_1%lstm_1_while_lstm_1_strided_slice_1_0"f
0lstm_1_while_lstm_cell_1_readvariableop_resource2lstm_1_while_lstm_cell_1_readvariableop_resource_0"v
8lstm_1_while_lstm_cell_1_split_1_readvariableop_resource:lstm_1_while_lstm_cell_1_split_1_readvariableop_resource_0"r
6lstm_1_while_lstm_cell_1_split_readvariableop_resource8lstm_1_while_lstm_cell_1_split_readvariableop_resource_0"Ф
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensoralstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :џџџџџџџџџФ:џџџџџџџџџФ: : :::2R
'lstm_1/while/lstm_cell_1/ReadVariableOp'lstm_1/while/lstm_cell_1/ReadVariableOp2V
)lstm_1/while/lstm_cell_1/ReadVariableOp_1)lstm_1/while/lstm_cell_1/ReadVariableOp_12V
)lstm_1/while/lstm_cell_1/ReadVariableOp_2)lstm_1/while/lstm_cell_1/ReadVariableOp_22V
)lstm_1/while/lstm_cell_1/ReadVariableOp_3)lstm_1/while/lstm_cell_1/ReadVariableOp_32^
-lstm_1/while/lstm_cell_1/split/ReadVariableOp-lstm_1/while/lstm_cell_1/split/ReadVariableOp2b
/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџФ:.*
(
_output_shapes
:џџџџџџџџџФ:

_output_shapes
: :

_output_shapes
: 
џ
O
3__inference_spatial_dropout1d_1_layer_call_fn_49541

inputs
identityт
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_470732
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
д
П
#__inference_signature_wrapper_48733
embedding_1_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallembedding_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_470102
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ+::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
'
_output_shapes
:џџџџџџџџџ+
+
_user_specified_nameembedding_1_input

Г
A__inference_lstm_1_layer_call_and_return_conditional_losses_48553

inputs-
)lstm_cell_1_split_readvariableop_resource/
+lstm_cell_1_split_1_readvariableop_resource'
#lstm_cell_1_readvariableop_resource
identityЂlstm_cell_1/ReadVariableOpЂlstm_cell_1/ReadVariableOp_1Ђlstm_cell_1/ReadVariableOp_2Ђlstm_cell_1/ReadVariableOp_3Ђ lstm_cell_1/split/ReadVariableOpЂ"lstm_cell_1/split_1/ReadVariableOpЂwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ф2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ф2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ф2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ф2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:+џџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2§
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2
lstm_cell_1/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_1/ones_like/Shape
lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_1/ones_like/ConstЕ
lstm_cell_1/ones_likeFill$lstm_cell_1/ones_like/Shape:output:0$lstm_cell_1/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/ones_like|
lstm_cell_1/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_1/ones_like_1/Shape
lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_1/ones_like_1/ConstН
lstm_cell_1/ones_like_1Fill&lstm_cell_1/ones_like_1/Shape:output:0&lstm_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/ones_like_1
lstm_cell_1/mulMulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/mul
lstm_cell_1/mul_1Mulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/mul_1
lstm_cell_1/mul_2Mulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/mul_2
lstm_cell_1/mul_3Mulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/mul_3h
lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/Const|
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/split/split_dimА
 lstm_cell_1/split/ReadVariableOpReadVariableOp)lstm_cell_1_split_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 lstm_cell_1/split/ReadVariableOpп
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0(lstm_cell_1/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ф:
Ф:
Ф:
Ф*
	num_split2
lstm_cell_1/split
lstm_cell_1/MatMulMatMullstm_cell_1/mul:z:0lstm_cell_1/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul
lstm_cell_1/MatMul_1MatMullstm_cell_1/mul_1:z:0lstm_cell_1/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_1
lstm_cell_1/MatMul_2MatMullstm_cell_1/mul_2:z:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_2
lstm_cell_1/MatMul_3MatMullstm_cell_1/mul_3:z:0lstm_cell_1/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_3l
lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/Const_1
lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_1/split_1/split_dimБ
"lstm_cell_1/split_1/ReadVariableOpReadVariableOp+lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02$
"lstm_cell_1/split_1/ReadVariableOpг
lstm_cell_1/split_1Split&lstm_cell_1/split_1/split_dim:output:0*lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ф:Ф:Ф:Ф*
	num_split2
lstm_cell_1/split_1Є
lstm_cell_1/BiasAddBiasAddlstm_cell_1/MatMul:product:0lstm_cell_1/split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/BiasAddЊ
lstm_cell_1/BiasAdd_1BiasAddlstm_cell_1/MatMul_1:product:0lstm_cell_1/split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/BiasAdd_1Њ
lstm_cell_1/BiasAdd_2BiasAddlstm_cell_1/MatMul_2:product:0lstm_cell_1/split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/BiasAdd_2Њ
lstm_cell_1/BiasAdd_3BiasAddlstm_cell_1/MatMul_3:product:0lstm_cell_1/split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/BiasAdd_3
lstm_cell_1/mul_4Mulzeros:output:0 lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_4
lstm_cell_1/mul_5Mulzeros:output:0 lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_5
lstm_cell_1/mul_6Mulzeros:output:0 lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_6
lstm_cell_1/mul_7Mulzeros:output:0 lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_7
lstm_cell_1/ReadVariableOpReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
Ф*
dtype02
lstm_cell_1/ReadVariableOp
lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_1/strided_slice/stack
!lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ф   2#
!lstm_cell_1/strided_slice/stack_1
!lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_1/strided_slice/stack_2Ц
lstm_cell_1/strided_sliceStridedSlice"lstm_cell_1/ReadVariableOp:value:0(lstm_cell_1/strided_slice/stack:output:0*lstm_cell_1/strided_slice/stack_1:output:0*lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
lstm_cell_1/strided_sliceЄ
lstm_cell_1/MatMul_4MatMullstm_cell_1/mul_4:z:0"lstm_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_4
lstm_cell_1/addAddV2lstm_cell_1/BiasAdd:output:0lstm_cell_1/MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/add}
lstm_cell_1/SigmoidSigmoidlstm_cell_1/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/SigmoidЂ
lstm_cell_1/ReadVariableOp_1ReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
Ф*
dtype02
lstm_cell_1/ReadVariableOp_1
!lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ф   2#
!lstm_cell_1/strided_slice_1/stack
#lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_1/stack_1
#lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_1/stack_2в
lstm_cell_1/strided_slice_1StridedSlice$lstm_cell_1/ReadVariableOp_1:value:0*lstm_cell_1/strided_slice_1/stack:output:0,lstm_cell_1/strided_slice_1/stack_1:output:0,lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_1І
lstm_cell_1/MatMul_5MatMullstm_cell_1/mul_5:z:0$lstm_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_5Ђ
lstm_cell_1/add_1AddV2lstm_cell_1/BiasAdd_1:output:0lstm_cell_1/MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/add_1
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/Sigmoid_1
lstm_cell_1/mul_8Mullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_8Ђ
lstm_cell_1/ReadVariableOp_2ReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
Ф*
dtype02
lstm_cell_1/ReadVariableOp_2
!lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_1/strided_slice_2/stack
#lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2%
#lstm_cell_1/strided_slice_2/stack_1
#lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_2/stack_2в
lstm_cell_1/strided_slice_2StridedSlice$lstm_cell_1/ReadVariableOp_2:value:0*lstm_cell_1/strided_slice_2/stack:output:0,lstm_cell_1/strided_slice_2/stack_1:output:0,lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_2І
lstm_cell_1/MatMul_6MatMullstm_cell_1/mul_6:z:0$lstm_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_6Ђ
lstm_cell_1/add_2AddV2lstm_cell_1/BiasAdd_2:output:0lstm_cell_1/MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/add_2v
lstm_cell_1/TanhTanhlstm_cell_1/add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/Tanh
lstm_cell_1/mul_9Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_9
lstm_cell_1/add_3AddV2lstm_cell_1/mul_8:z:0lstm_cell_1/mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/add_3Ђ
lstm_cell_1/ReadVariableOp_3ReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
Ф*
dtype02
lstm_cell_1/ReadVariableOp_3
!lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2#
!lstm_cell_1/strided_slice_3/stack
#lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_1/strided_slice_3/stack_1
#lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_3/stack_2в
lstm_cell_1/strided_slice_3StridedSlice$lstm_cell_1/ReadVariableOp_3:value:0*lstm_cell_1/strided_slice_3/stack:output:0,lstm_cell_1/strided_slice_3/stack_1:output:0,lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_3І
lstm_cell_1/MatMul_7MatMullstm_cell_1/mul_7:z:0$lstm_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_7Ђ
lstm_cell_1/add_4AddV2lstm_cell_1/BiasAdd_3:output:0lstm_cell_1/MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/add_4
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/Sigmoid_2z
lstm_cell_1/Tanh_1Tanhlstm_cell_1/add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/Tanh_1
lstm_cell_1/mul_10Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_10
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџФ   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterу
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_1_split_readvariableop_resource+lstm_cell_1_split_1_readvariableop_resource#lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџФ:џџџџџџџџџФ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_48417*
condR
while_cond_48416*M
output_shapes<
:: : : : :џџџџџџџџџФ:џџџџџџџџџФ: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџФ   22
0TensorArrayV2Stack/TensorListStack/element_shapeщ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:+џџџџџџџџџФ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџФ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permІ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџ+Ф2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeЗ
IdentityIdentitystrided_slice_3:output:0^lstm_cell_1/ReadVariableOp^lstm_cell_1/ReadVariableOp_1^lstm_cell_1/ReadVariableOp_2^lstm_cell_1/ReadVariableOp_3!^lstm_cell_1/split/ReadVariableOp#^lstm_cell_1/split_1/ReadVariableOp^while*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџ+:::28
lstm_cell_1/ReadVariableOplstm_cell_1/ReadVariableOp2<
lstm_cell_1/ReadVariableOp_1lstm_cell_1/ReadVariableOp_12<
lstm_cell_1/ReadVariableOp_2lstm_cell_1/ReadVariableOp_22<
lstm_cell_1/ReadVariableOp_3lstm_cell_1/ReadVariableOp_32D
 lstm_cell_1/split/ReadVariableOp lstm_cell_1/split/ReadVariableOp2H
"lstm_cell_1/split_1/ReadVariableOp"lstm_cell_1/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџ+
 
_user_specified_nameinputs
У
Ы
+__inference_lstm_cell_1_layer_call_fn_51130

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2ЂStatefulPartitionedCallФ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџФ:џџџџџџџџџФ:џџџџџџџџџФ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_472642
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*[
_input_shapesJ
H:џџџџџџџџџ:џџџџџџџџџФ:џџџџџџџџџФ:::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:RN
(
_output_shapes
:џџџџџџџџџФ
"
_user_specified_name
states/0:RN
(
_output_shapes
:џџџџџџџџџФ
"
_user_specified_name
states/1
у
Н
,__inference_sequential_1_layer_call_fn_49433

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityЂStatefulPartitionedCallЋ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_486542
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ+::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ+
 
_user_specified_nameinputs
їѕ
Х
while_body_48098
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
1while_lstm_cell_1_split_readvariableop_resource_07
3while_lstm_cell_1_split_1_readvariableop_resource_0/
+while_lstm_cell_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
/while_lstm_cell_1_split_readvariableop_resource5
1while_lstm_cell_1_split_1_readvariableop_resource-
)while_lstm_cell_1_readvariableop_resourceЂ while/lstm_cell_1/ReadVariableOpЂ"while/lstm_cell_1/ReadVariableOp_1Ђ"while/lstm_cell_1/ReadVariableOp_2Ђ"while/lstm_cell_1/ReadVariableOp_3Ђ&while/lstm_cell_1/split/ReadVariableOpЂ(while/lstm_cell_1/split_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeд
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemІ
!while/lstm_cell_1/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/ones_like/Shape
!while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_1/ones_like/ConstЭ
while/lstm_cell_1/ones_likeFill*while/lstm_cell_1/ones_like/Shape:output:0*while/lstm_cell_1/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_1/ones_like
while/lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2!
while/lstm_cell_1/dropout/ConstШ
while/lstm_cell_1/dropout/MulMul$while/lstm_cell_1/ones_like:output:0(while/lstm_cell_1/dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_1/dropout/Mul
while/lstm_cell_1/dropout/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_1/dropout/Shape
6while/lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_1/dropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2іћ28
6while/lstm_cell_1/dropout/random_uniform/RandomUniform
(while/lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2*
(while/lstm_cell_1/dropout/GreaterEqual/y
&while/lstm_cell_1/dropout/GreaterEqualGreaterEqual?while/lstm_cell_1/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2(
&while/lstm_cell_1/dropout/GreaterEqualЖ
while/lstm_cell_1/dropout/CastCast*while/lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2 
while/lstm_cell_1/dropout/CastУ
while/lstm_cell_1/dropout/Mul_1Mul!while/lstm_cell_1/dropout/Mul:z:0"while/lstm_cell_1/dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2!
while/lstm_cell_1/dropout/Mul_1
!while/lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_1/dropout_1/ConstЮ
while/lstm_cell_1/dropout_1/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2!
while/lstm_cell_1/dropout_1/Mul
!while/lstm_cell_1/dropout_1/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_1/Shape
8while/lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_1/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2№р2:
8while/lstm_cell_1/dropout_1/random_uniform/RandomUniform
*while/lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_1/dropout_1/GreaterEqual/y
(while/lstm_cell_1/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2*
(while/lstm_cell_1/dropout_1/GreaterEqualМ
 while/lstm_cell_1/dropout_1/CastCast,while/lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2"
 while/lstm_cell_1/dropout_1/CastЫ
!while/lstm_cell_1/dropout_1/Mul_1Mul#while/lstm_cell_1/dropout_1/Mul:z:0$while/lstm_cell_1/dropout_1/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2#
!while/lstm_cell_1/dropout_1/Mul_1
!while/lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_1/dropout_2/ConstЮ
while/lstm_cell_1/dropout_2/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_2/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2!
while/lstm_cell_1/dropout_2/Mul
!while/lstm_cell_1/dropout_2/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_2/Shape
8while/lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_2/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2ђЋЩ2:
8while/lstm_cell_1/dropout_2/random_uniform/RandomUniform
*while/lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_1/dropout_2/GreaterEqual/y
(while/lstm_cell_1/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2*
(while/lstm_cell_1/dropout_2/GreaterEqualМ
 while/lstm_cell_1/dropout_2/CastCast,while/lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2"
 while/lstm_cell_1/dropout_2/CastЫ
!while/lstm_cell_1/dropout_2/Mul_1Mul#while/lstm_cell_1/dropout_2/Mul:z:0$while/lstm_cell_1/dropout_2/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2#
!while/lstm_cell_1/dropout_2/Mul_1
!while/lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_1/dropout_3/ConstЮ
while/lstm_cell_1/dropout_3/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_3/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2!
while/lstm_cell_1/dropout_3/Mul
!while/lstm_cell_1/dropout_3/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_3/Shape
8while/lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_3/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2Ий2:
8while/lstm_cell_1/dropout_3/random_uniform/RandomUniform
*while/lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_1/dropout_3/GreaterEqual/y
(while/lstm_cell_1/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2*
(while/lstm_cell_1/dropout_3/GreaterEqualМ
 while/lstm_cell_1/dropout_3/CastCast,while/lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2"
 while/lstm_cell_1/dropout_3/CastЫ
!while/lstm_cell_1/dropout_3/Mul_1Mul#while/lstm_cell_1/dropout_3/Mul:z:0$while/lstm_cell_1/dropout_3/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2#
!while/lstm_cell_1/dropout_3/Mul_1
#while/lstm_cell_1/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_1/ones_like_1/Shape
#while/lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_1/ones_like_1/Constе
while/lstm_cell_1/ones_like_1Fill,while/lstm_cell_1/ones_like_1/Shape:output:0,while/lstm_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/ones_like_1
!while/lstm_cell_1/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_1/dropout_4/Constа
while/lstm_cell_1/dropout_4/MulMul&while/lstm_cell_1/ones_like_1:output:0*while/lstm_cell_1/dropout_4/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2!
while/lstm_cell_1/dropout_4/Mul
!while/lstm_cell_1/dropout_4/ShapeShape&while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_4/Shape
8while/lstm_cell_1/dropout_4/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_4/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2ЙъН2:
8while/lstm_cell_1/dropout_4/random_uniform/RandomUniform
*while/lstm_cell_1/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_1/dropout_4/GreaterEqual/y
(while/lstm_cell_1/dropout_4/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_4/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2*
(while/lstm_cell_1/dropout_4/GreaterEqualМ
 while/lstm_cell_1/dropout_4/CastCast,while/lstm_cell_1/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2"
 while/lstm_cell_1/dropout_4/CastЫ
!while/lstm_cell_1/dropout_4/Mul_1Mul#while/lstm_cell_1/dropout_4/Mul:z:0$while/lstm_cell_1/dropout_4/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2#
!while/lstm_cell_1/dropout_4/Mul_1
!while/lstm_cell_1/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_1/dropout_5/Constа
while/lstm_cell_1/dropout_5/MulMul&while/lstm_cell_1/ones_like_1:output:0*while/lstm_cell_1/dropout_5/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2!
while/lstm_cell_1/dropout_5/Mul
!while/lstm_cell_1/dropout_5/ShapeShape&while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_5/Shape
8while/lstm_cell_1/dropout_5/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_5/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2ЇѕЦ2:
8while/lstm_cell_1/dropout_5/random_uniform/RandomUniform
*while/lstm_cell_1/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_1/dropout_5/GreaterEqual/y
(while/lstm_cell_1/dropout_5/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_5/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2*
(while/lstm_cell_1/dropout_5/GreaterEqualМ
 while/lstm_cell_1/dropout_5/CastCast,while/lstm_cell_1/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2"
 while/lstm_cell_1/dropout_5/CastЫ
!while/lstm_cell_1/dropout_5/Mul_1Mul#while/lstm_cell_1/dropout_5/Mul:z:0$while/lstm_cell_1/dropout_5/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2#
!while/lstm_cell_1/dropout_5/Mul_1
!while/lstm_cell_1/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_1/dropout_6/Constа
while/lstm_cell_1/dropout_6/MulMul&while/lstm_cell_1/ones_like_1:output:0*while/lstm_cell_1/dropout_6/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2!
while/lstm_cell_1/dropout_6/Mul
!while/lstm_cell_1/dropout_6/ShapeShape&while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_6/Shape
8while/lstm_cell_1/dropout_6/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_6/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2ѓыт2:
8while/lstm_cell_1/dropout_6/random_uniform/RandomUniform
*while/lstm_cell_1/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_1/dropout_6/GreaterEqual/y
(while/lstm_cell_1/dropout_6/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_6/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2*
(while/lstm_cell_1/dropout_6/GreaterEqualМ
 while/lstm_cell_1/dropout_6/CastCast,while/lstm_cell_1/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2"
 while/lstm_cell_1/dropout_6/CastЫ
!while/lstm_cell_1/dropout_6/Mul_1Mul#while/lstm_cell_1/dropout_6/Mul:z:0$while/lstm_cell_1/dropout_6/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2#
!while/lstm_cell_1/dropout_6/Mul_1
!while/lstm_cell_1/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_1/dropout_7/Constа
while/lstm_cell_1/dropout_7/MulMul&while/lstm_cell_1/ones_like_1:output:0*while/lstm_cell_1/dropout_7/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2!
while/lstm_cell_1/dropout_7/Mul
!while/lstm_cell_1/dropout_7/ShapeShape&while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_7/Shape
8while/lstm_cell_1/dropout_7/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_7/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2ЮЌ2:
8while/lstm_cell_1/dropout_7/random_uniform/RandomUniform
*while/lstm_cell_1/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_1/dropout_7/GreaterEqual/y
(while/lstm_cell_1/dropout_7/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_7/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2*
(while/lstm_cell_1/dropout_7/GreaterEqualМ
 while/lstm_cell_1/dropout_7/CastCast,while/lstm_cell_1/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2"
 while/lstm_cell_1/dropout_7/CastЫ
!while/lstm_cell_1/dropout_7/Mul_1Mul#while/lstm_cell_1/dropout_7/Mul:z:0$while/lstm_cell_1/dropout_7/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2#
!while/lstm_cell_1/dropout_7/Mul_1П
while/lstm_cell_1/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_1/dropout/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_1/mulХ
while/lstm_cell_1/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_1/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_1/mul_1Х
while/lstm_cell_1/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_1/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_1/mul_2Х
while/lstm_cell_1/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_1/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_1/mul_3t
while/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_1/Const
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_1/split/split_dimФ
&while/lstm_cell_1/split/ReadVariableOpReadVariableOp1while_lstm_cell_1_split_readvariableop_resource_0* 
_output_shapes
:
*
dtype02(
&while/lstm_cell_1/split/ReadVariableOpї
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0.while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ф:
Ф:
Ф:
Ф*
	num_split2
while/lstm_cell_1/splitЎ
while/lstm_cell_1/MatMulMatMulwhile/lstm_cell_1/mul:z:0 while/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMulД
while/lstm_cell_1/MatMul_1MatMulwhile/lstm_cell_1/mul_1:z:0 while/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_1Д
while/lstm_cell_1/MatMul_2MatMulwhile/lstm_cell_1/mul_2:z:0 while/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_2Д
while/lstm_cell_1/MatMul_3MatMulwhile/lstm_cell_1/mul_3:z:0 while/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_3x
while/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_1/Const_1
#while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_1/split_1/split_dimХ
(while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02*
(while/lstm_cell_1/split_1/ReadVariableOpы
while/lstm_cell_1/split_1Split,while/lstm_cell_1/split_1/split_dim:output:00while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ф:Ф:Ф:Ф*
	num_split2
while/lstm_cell_1/split_1М
while/lstm_cell_1/BiasAddBiasAdd"while/lstm_cell_1/MatMul:product:0"while/lstm_cell_1/split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/BiasAddТ
while/lstm_cell_1/BiasAdd_1BiasAdd$while/lstm_cell_1/MatMul_1:product:0"while/lstm_cell_1/split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/BiasAdd_1Т
while/lstm_cell_1/BiasAdd_2BiasAdd$while/lstm_cell_1/MatMul_2:product:0"while/lstm_cell_1/split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/BiasAdd_2Т
while/lstm_cell_1/BiasAdd_3BiasAdd$while/lstm_cell_1/MatMul_3:product:0"while/lstm_cell_1/split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/BiasAdd_3Ј
while/lstm_cell_1/mul_4Mulwhile_placeholder_2%while/lstm_cell_1/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_4Ј
while/lstm_cell_1/mul_5Mulwhile_placeholder_2%while/lstm_cell_1/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_5Ј
while/lstm_cell_1/mul_6Mulwhile_placeholder_2%while/lstm_cell_1/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_6Ј
while/lstm_cell_1/mul_7Mulwhile_placeholder_2%while/lstm_cell_1/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_7В
 while/lstm_cell_1/ReadVariableOpReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
Ф*
dtype02"
 while/lstm_cell_1/ReadVariableOp
%while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_1/strided_slice/stackЃ
'while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ф   2)
'while/lstm_cell_1/strided_slice/stack_1Ѓ
'while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_1/strided_slice/stack_2ъ
while/lstm_cell_1/strided_sliceStridedSlice(while/lstm_cell_1/ReadVariableOp:value:0.while/lstm_cell_1/strided_slice/stack:output:00while/lstm_cell_1/strided_slice/stack_1:output:00while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2!
while/lstm_cell_1/strided_sliceМ
while/lstm_cell_1/MatMul_4MatMulwhile/lstm_cell_1/mul_4:z:0(while/lstm_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_4Д
while/lstm_cell_1/addAddV2"while/lstm_cell_1/BiasAdd:output:0$while/lstm_cell_1/MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/add
while/lstm_cell_1/SigmoidSigmoidwhile/lstm_cell_1/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/SigmoidЖ
"while/lstm_cell_1/ReadVariableOp_1ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
Ф*
dtype02$
"while/lstm_cell_1/ReadVariableOp_1Ѓ
'while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ф   2)
'while/lstm_cell_1/strided_slice_1/stackЇ
)while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_1/stack_1Ї
)while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_1/stack_2і
!while/lstm_cell_1/strided_slice_1StridedSlice*while/lstm_cell_1/ReadVariableOp_1:value:00while/lstm_cell_1/strided_slice_1/stack:output:02while/lstm_cell_1/strided_slice_1/stack_1:output:02while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_1О
while/lstm_cell_1/MatMul_5MatMulwhile/lstm_cell_1/mul_5:z:0*while/lstm_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_5К
while/lstm_cell_1/add_1AddV2$while/lstm_cell_1/BiasAdd_1:output:0$while/lstm_cell_1/MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/add_1
while/lstm_cell_1/Sigmoid_1Sigmoidwhile/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/Sigmoid_1Ђ
while/lstm_cell_1/mul_8Mulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_8Ж
"while/lstm_cell_1/ReadVariableOp_2ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
Ф*
dtype02$
"while/lstm_cell_1/ReadVariableOp_2Ѓ
'while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_1/strided_slice_2/stackЇ
)while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2+
)while/lstm_cell_1/strided_slice_2/stack_1Ї
)while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_2/stack_2і
!while/lstm_cell_1/strided_slice_2StridedSlice*while/lstm_cell_1/ReadVariableOp_2:value:00while/lstm_cell_1/strided_slice_2/stack:output:02while/lstm_cell_1/strided_slice_2/stack_1:output:02while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_2О
while/lstm_cell_1/MatMul_6MatMulwhile/lstm_cell_1/mul_6:z:0*while/lstm_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_6К
while/lstm_cell_1/add_2AddV2$while/lstm_cell_1/BiasAdd_2:output:0$while/lstm_cell_1/MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/add_2
while/lstm_cell_1/TanhTanhwhile/lstm_cell_1/add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/TanhЇ
while/lstm_cell_1/mul_9Mulwhile/lstm_cell_1/Sigmoid:y:0while/lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_9Ј
while/lstm_cell_1/add_3AddV2while/lstm_cell_1/mul_8:z:0while/lstm_cell_1/mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/add_3Ж
"while/lstm_cell_1/ReadVariableOp_3ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
Ф*
dtype02$
"while/lstm_cell_1/ReadVariableOp_3Ѓ
'while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2)
'while/lstm_cell_1/strided_slice_3/stackЇ
)while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_1/strided_slice_3/stack_1Ї
)while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_3/stack_2і
!while/lstm_cell_1/strided_slice_3StridedSlice*while/lstm_cell_1/ReadVariableOp_3:value:00while/lstm_cell_1/strided_slice_3/stack:output:02while/lstm_cell_1/strided_slice_3/stack_1:output:02while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_3О
while/lstm_cell_1/MatMul_7MatMulwhile/lstm_cell_1/mul_7:z:0*while/lstm_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_7К
while/lstm_cell_1/add_4AddV2$while/lstm_cell_1/BiasAdd_3:output:0$while/lstm_cell_1/MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/add_4
while/lstm_cell_1/Sigmoid_2Sigmoidwhile/lstm_cell_1/add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/Sigmoid_2
while/lstm_cell_1/Tanh_1Tanhwhile/lstm_cell_1/add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/Tanh_1­
while/lstm_cell_1/mul_10Mulwhile/lstm_cell_1/Sigmoid_2:y:0while/lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_10р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ф
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityз
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Ц
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ѓ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3ч
while/Identity_4Identitywhile/lstm_cell_1/mul_10:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/Identity_4ц
while/Identity_5Identitywhile/lstm_cell_1/add_3:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_1_readvariableop_resource+while_lstm_cell_1_readvariableop_resource_0"h
1while_lstm_cell_1_split_1_readvariableop_resource3while_lstm_cell_1_split_1_readvariableop_resource_0"d
/while_lstm_cell_1_split_readvariableop_resource1while_lstm_cell_1_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :џџџџџџџџџФ:џџџџџџџџџФ: : :::2D
 while/lstm_cell_1/ReadVariableOp while/lstm_cell_1/ReadVariableOp2H
"while/lstm_cell_1/ReadVariableOp_1"while/lstm_cell_1/ReadVariableOp_12H
"while/lstm_cell_1/ReadVariableOp_2"while/lstm_cell_1/ReadVariableOp_22H
"while/lstm_cell_1/ReadVariableOp_3"while/lstm_cell_1/ReadVariableOp_32P
&while/lstm_cell_1/split/ReadVariableOp&while/lstm_cell_1/split/ReadVariableOp2T
(while/lstm_cell_1/split_1/ReadVariableOp(while/lstm_cell_1/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџФ:.*
(
_output_shapes
:џџџџџџџџџФ:

_output_shapes
: :

_output_shapes
: 
ј
Г
A__inference_lstm_1_layer_call_and_return_conditional_losses_50584

inputs-
)lstm_cell_1_split_readvariableop_resource/
+lstm_cell_1_split_1_readvariableop_resource'
#lstm_cell_1_readvariableop_resource
identityЂlstm_cell_1/ReadVariableOpЂlstm_cell_1/ReadVariableOp_1Ђlstm_cell_1/ReadVariableOp_2Ђlstm_cell_1/ReadVariableOp_3Ђ lstm_cell_1/split/ReadVariableOpЂ"lstm_cell_1/split_1/ReadVariableOpЂwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ф2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ф2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ф2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ф2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:+џџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2§
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2
lstm_cell_1/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_1/ones_like/Shape
lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_1/ones_like/ConstЕ
lstm_cell_1/ones_likeFill$lstm_cell_1/ones_like/Shape:output:0$lstm_cell_1/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/ones_like{
lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_1/dropout/ConstА
lstm_cell_1/dropout/MulMullstm_cell_1/ones_like:output:0"lstm_cell_1/dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/dropout/Mul
lstm_cell_1/dropout/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout/Shapeј
0lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_1/dropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2шБ22
0lstm_cell_1/dropout/random_uniform/RandomUniform
"lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2$
"lstm_cell_1/dropout/GreaterEqual/yя
 lstm_cell_1/dropout/GreaterEqualGreaterEqual9lstm_cell_1/dropout/random_uniform/RandomUniform:output:0+lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2"
 lstm_cell_1/dropout/GreaterEqualЄ
lstm_cell_1/dropout/CastCast$lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/dropout/CastЋ
lstm_cell_1/dropout/Mul_1Mullstm_cell_1/dropout/Mul:z:0lstm_cell_1/dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/dropout/Mul_1
lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_1/dropout_1/ConstЖ
lstm_cell_1/dropout_1/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/dropout_1/Mul
lstm_cell_1/dropout_1/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_1/Shapeў
2lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_1/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2ЋЧЦ24
2lstm_cell_1/dropout_1/random_uniform/RandomUniform
$lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_1/dropout_1/GreaterEqual/yї
"lstm_cell_1/dropout_1/GreaterEqualGreaterEqual;lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2$
"lstm_cell_1/dropout_1/GreaterEqualЊ
lstm_cell_1/dropout_1/CastCast&lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/dropout_1/CastГ
lstm_cell_1/dropout_1/Mul_1Mullstm_cell_1/dropout_1/Mul:z:0lstm_cell_1/dropout_1/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/dropout_1/Mul_1
lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_1/dropout_2/ConstЖ
lstm_cell_1/dropout_2/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_2/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/dropout_2/Mul
lstm_cell_1/dropout_2/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_2/Shapeў
2lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_2/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2ЛЋЌ24
2lstm_cell_1/dropout_2/random_uniform/RandomUniform
$lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_1/dropout_2/GreaterEqual/yї
"lstm_cell_1/dropout_2/GreaterEqualGreaterEqual;lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2$
"lstm_cell_1/dropout_2/GreaterEqualЊ
lstm_cell_1/dropout_2/CastCast&lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/dropout_2/CastГ
lstm_cell_1/dropout_2/Mul_1Mullstm_cell_1/dropout_2/Mul:z:0lstm_cell_1/dropout_2/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/dropout_2/Mul_1
lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_1/dropout_3/ConstЖ
lstm_cell_1/dropout_3/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_3/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/dropout_3/Mul
lstm_cell_1/dropout_3/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_3/Shapeў
2lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_3/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2ЭЃ24
2lstm_cell_1/dropout_3/random_uniform/RandomUniform
$lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_1/dropout_3/GreaterEqual/yї
"lstm_cell_1/dropout_3/GreaterEqualGreaterEqual;lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2$
"lstm_cell_1/dropout_3/GreaterEqualЊ
lstm_cell_1/dropout_3/CastCast&lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/dropout_3/CastГ
lstm_cell_1/dropout_3/Mul_1Mullstm_cell_1/dropout_3/Mul:z:0lstm_cell_1/dropout_3/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/dropout_3/Mul_1|
lstm_cell_1/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_1/ones_like_1/Shape
lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_1/ones_like_1/ConstН
lstm_cell_1/ones_like_1Fill&lstm_cell_1/ones_like_1/Shape:output:0&lstm_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/ones_like_1
lstm_cell_1/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_1/dropout_4/ConstИ
lstm_cell_1/dropout_4/MulMul lstm_cell_1/ones_like_1:output:0$lstm_cell_1/dropout_4/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/dropout_4/Mul
lstm_cell_1/dropout_4/ShapeShape lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_4/Shapeў
2lstm_cell_1/dropout_4/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_4/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2Оћ24
2lstm_cell_1/dropout_4/random_uniform/RandomUniform
$lstm_cell_1/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_1/dropout_4/GreaterEqual/yї
"lstm_cell_1/dropout_4/GreaterEqualGreaterEqual;lstm_cell_1/dropout_4/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2$
"lstm_cell_1/dropout_4/GreaterEqualЊ
lstm_cell_1/dropout_4/CastCast&lstm_cell_1/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/dropout_4/CastГ
lstm_cell_1/dropout_4/Mul_1Mullstm_cell_1/dropout_4/Mul:z:0lstm_cell_1/dropout_4/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/dropout_4/Mul_1
lstm_cell_1/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_1/dropout_5/ConstИ
lstm_cell_1/dropout_5/MulMul lstm_cell_1/ones_like_1:output:0$lstm_cell_1/dropout_5/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/dropout_5/Mul
lstm_cell_1/dropout_5/ShapeShape lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_5/Shape§
2lstm_cell_1/dropout_5/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_5/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2ѕ­E24
2lstm_cell_1/dropout_5/random_uniform/RandomUniform
$lstm_cell_1/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_1/dropout_5/GreaterEqual/yї
"lstm_cell_1/dropout_5/GreaterEqualGreaterEqual;lstm_cell_1/dropout_5/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2$
"lstm_cell_1/dropout_5/GreaterEqualЊ
lstm_cell_1/dropout_5/CastCast&lstm_cell_1/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/dropout_5/CastГ
lstm_cell_1/dropout_5/Mul_1Mullstm_cell_1/dropout_5/Mul:z:0lstm_cell_1/dropout_5/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/dropout_5/Mul_1
lstm_cell_1/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_1/dropout_6/ConstИ
lstm_cell_1/dropout_6/MulMul lstm_cell_1/ones_like_1:output:0$lstm_cell_1/dropout_6/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/dropout_6/Mul
lstm_cell_1/dropout_6/ShapeShape lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_6/Shapeў
2lstm_cell_1/dropout_6/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_6/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2џу24
2lstm_cell_1/dropout_6/random_uniform/RandomUniform
$lstm_cell_1/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_1/dropout_6/GreaterEqual/yї
"lstm_cell_1/dropout_6/GreaterEqualGreaterEqual;lstm_cell_1/dropout_6/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2$
"lstm_cell_1/dropout_6/GreaterEqualЊ
lstm_cell_1/dropout_6/CastCast&lstm_cell_1/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/dropout_6/CastГ
lstm_cell_1/dropout_6/Mul_1Mullstm_cell_1/dropout_6/Mul:z:0lstm_cell_1/dropout_6/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/dropout_6/Mul_1
lstm_cell_1/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_1/dropout_7/ConstИ
lstm_cell_1/dropout_7/MulMul lstm_cell_1/ones_like_1:output:0$lstm_cell_1/dropout_7/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/dropout_7/Mul
lstm_cell_1/dropout_7/ShapeShape lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_7/Shape§
2lstm_cell_1/dropout_7/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_7/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2Е24
2lstm_cell_1/dropout_7/random_uniform/RandomUniform
$lstm_cell_1/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_1/dropout_7/GreaterEqual/yї
"lstm_cell_1/dropout_7/GreaterEqualGreaterEqual;lstm_cell_1/dropout_7/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2$
"lstm_cell_1/dropout_7/GreaterEqualЊ
lstm_cell_1/dropout_7/CastCast&lstm_cell_1/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/dropout_7/CastГ
lstm_cell_1/dropout_7/Mul_1Mullstm_cell_1/dropout_7/Mul:z:0lstm_cell_1/dropout_7/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/dropout_7/Mul_1
lstm_cell_1/mulMulstrided_slice_2:output:0lstm_cell_1/dropout/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/mul
lstm_cell_1/mul_1Mulstrided_slice_2:output:0lstm_cell_1/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/mul_1
lstm_cell_1/mul_2Mulstrided_slice_2:output:0lstm_cell_1/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/mul_2
lstm_cell_1/mul_3Mulstrided_slice_2:output:0lstm_cell_1/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/mul_3h
lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/Const|
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/split/split_dimА
 lstm_cell_1/split/ReadVariableOpReadVariableOp)lstm_cell_1_split_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 lstm_cell_1/split/ReadVariableOpп
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0(lstm_cell_1/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ф:
Ф:
Ф:
Ф*
	num_split2
lstm_cell_1/split
lstm_cell_1/MatMulMatMullstm_cell_1/mul:z:0lstm_cell_1/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul
lstm_cell_1/MatMul_1MatMullstm_cell_1/mul_1:z:0lstm_cell_1/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_1
lstm_cell_1/MatMul_2MatMullstm_cell_1/mul_2:z:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_2
lstm_cell_1/MatMul_3MatMullstm_cell_1/mul_3:z:0lstm_cell_1/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_3l
lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/Const_1
lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_1/split_1/split_dimБ
"lstm_cell_1/split_1/ReadVariableOpReadVariableOp+lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02$
"lstm_cell_1/split_1/ReadVariableOpг
lstm_cell_1/split_1Split&lstm_cell_1/split_1/split_dim:output:0*lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ф:Ф:Ф:Ф*
	num_split2
lstm_cell_1/split_1Є
lstm_cell_1/BiasAddBiasAddlstm_cell_1/MatMul:product:0lstm_cell_1/split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/BiasAddЊ
lstm_cell_1/BiasAdd_1BiasAddlstm_cell_1/MatMul_1:product:0lstm_cell_1/split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/BiasAdd_1Њ
lstm_cell_1/BiasAdd_2BiasAddlstm_cell_1/MatMul_2:product:0lstm_cell_1/split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/BiasAdd_2Њ
lstm_cell_1/BiasAdd_3BiasAddlstm_cell_1/MatMul_3:product:0lstm_cell_1/split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/BiasAdd_3
lstm_cell_1/mul_4Mulzeros:output:0lstm_cell_1/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_4
lstm_cell_1/mul_5Mulzeros:output:0lstm_cell_1/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_5
lstm_cell_1/mul_6Mulzeros:output:0lstm_cell_1/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_6
lstm_cell_1/mul_7Mulzeros:output:0lstm_cell_1/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_7
lstm_cell_1/ReadVariableOpReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
Ф*
dtype02
lstm_cell_1/ReadVariableOp
lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_1/strided_slice/stack
!lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ф   2#
!lstm_cell_1/strided_slice/stack_1
!lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_1/strided_slice/stack_2Ц
lstm_cell_1/strided_sliceStridedSlice"lstm_cell_1/ReadVariableOp:value:0(lstm_cell_1/strided_slice/stack:output:0*lstm_cell_1/strided_slice/stack_1:output:0*lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
lstm_cell_1/strided_sliceЄ
lstm_cell_1/MatMul_4MatMullstm_cell_1/mul_4:z:0"lstm_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_4
lstm_cell_1/addAddV2lstm_cell_1/BiasAdd:output:0lstm_cell_1/MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/add}
lstm_cell_1/SigmoidSigmoidlstm_cell_1/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/SigmoidЂ
lstm_cell_1/ReadVariableOp_1ReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
Ф*
dtype02
lstm_cell_1/ReadVariableOp_1
!lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ф   2#
!lstm_cell_1/strided_slice_1/stack
#lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_1/stack_1
#lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_1/stack_2в
lstm_cell_1/strided_slice_1StridedSlice$lstm_cell_1/ReadVariableOp_1:value:0*lstm_cell_1/strided_slice_1/stack:output:0,lstm_cell_1/strided_slice_1/stack_1:output:0,lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_1І
lstm_cell_1/MatMul_5MatMullstm_cell_1/mul_5:z:0$lstm_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_5Ђ
lstm_cell_1/add_1AddV2lstm_cell_1/BiasAdd_1:output:0lstm_cell_1/MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/add_1
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/Sigmoid_1
lstm_cell_1/mul_8Mullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_8Ђ
lstm_cell_1/ReadVariableOp_2ReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
Ф*
dtype02
lstm_cell_1/ReadVariableOp_2
!lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_1/strided_slice_2/stack
#lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2%
#lstm_cell_1/strided_slice_2/stack_1
#lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_2/stack_2в
lstm_cell_1/strided_slice_2StridedSlice$lstm_cell_1/ReadVariableOp_2:value:0*lstm_cell_1/strided_slice_2/stack:output:0,lstm_cell_1/strided_slice_2/stack_1:output:0,lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_2І
lstm_cell_1/MatMul_6MatMullstm_cell_1/mul_6:z:0$lstm_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_6Ђ
lstm_cell_1/add_2AddV2lstm_cell_1/BiasAdd_2:output:0lstm_cell_1/MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/add_2v
lstm_cell_1/TanhTanhlstm_cell_1/add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/Tanh
lstm_cell_1/mul_9Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_9
lstm_cell_1/add_3AddV2lstm_cell_1/mul_8:z:0lstm_cell_1/mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/add_3Ђ
lstm_cell_1/ReadVariableOp_3ReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
Ф*
dtype02
lstm_cell_1/ReadVariableOp_3
!lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2#
!lstm_cell_1/strided_slice_3/stack
#lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_1/strided_slice_3/stack_1
#lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_3/stack_2в
lstm_cell_1/strided_slice_3StridedSlice$lstm_cell_1/ReadVariableOp_3:value:0*lstm_cell_1/strided_slice_3/stack:output:0,lstm_cell_1/strided_slice_3/stack_1:output:0,lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_3І
lstm_cell_1/MatMul_7MatMullstm_cell_1/mul_7:z:0$lstm_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_7Ђ
lstm_cell_1/add_4AddV2lstm_cell_1/BiasAdd_3:output:0lstm_cell_1/MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/add_4
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/Sigmoid_2z
lstm_cell_1/Tanh_1Tanhlstm_cell_1/add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/Tanh_1
lstm_cell_1/mul_10Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_10
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџФ   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterу
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_1_split_readvariableop_resource+lstm_cell_1_split_1_readvariableop_resource#lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџФ:џџџџџџџџџФ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_50384*
condR
while_cond_50383*M
output_shapes<
:: : : : :џџџџџџџџџФ:џџџџџџџџџФ: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџФ   22
0TensorArrayV2Stack/TensorListStack/element_shapeщ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:+џџџџџџџџџФ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџФ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permІ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџ+Ф2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeЗ
IdentityIdentitystrided_slice_3:output:0^lstm_cell_1/ReadVariableOp^lstm_cell_1/ReadVariableOp_1^lstm_cell_1/ReadVariableOp_2^lstm_cell_1/ReadVariableOp_3!^lstm_cell_1/split/ReadVariableOp#^lstm_cell_1/split_1/ReadVariableOp^while*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџ+:::28
lstm_cell_1/ReadVariableOplstm_cell_1/ReadVariableOp2<
lstm_cell_1/ReadVariableOp_1lstm_cell_1/ReadVariableOp_12<
lstm_cell_1/ReadVariableOp_2lstm_cell_1/ReadVariableOp_22<
lstm_cell_1/ReadVariableOp_3lstm_cell_1/ReadVariableOp_32D
 lstm_cell_1/split/ReadVariableOp lstm_cell_1/split/ReadVariableOp2H
"lstm_cell_1/split_1/ReadVariableOp"lstm_cell_1/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџ+
 
_user_specified_nameinputs
і
Э
G__inference_sequential_1_layer_call_and_return_conditional_losses_48631
embedding_1_input
embedding_1_48614
lstm_1_48618
lstm_1_48620
lstm_1_48622
dense_1_48625
dense_1_48627
identityЂdense_1/StatefulPartitionedCallЂ#embedding_1/StatefulPartitionedCallЂlstm_1/StatefulPartitionedCall
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallembedding_1_inputembedding_1_48614*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ+*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_478662%
#embedding_1/StatefulPartitionedCall
#spatial_dropout1d_1/PartitionedCallPartitionedCall,embedding_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ+* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_479042%
#spatial_dropout1d_1/PartitionedCallО
lstm_1/StatefulPartitionedCallStatefulPartitionedCall,spatial_dropout1d_1/PartitionedCall:output:0lstm_1_48618lstm_1_48620lstm_1_48622*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџФ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_485532 
lstm_1/StatefulPartitionedCall­
dense_1/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0dense_1_48625dense_1_48627*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_485942!
dense_1/StatefulPartitionedCallх
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ+::::::2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall:Z V
'
_output_shapes
:џџџџџџџџџ+
+
_user_specified_nameembedding_1_input

Ш
,__inference_sequential_1_layer_call_fn_48669
embedding_1_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityЂStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallembedding_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_486542
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ+::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
'
_output_shapes
:џџџџџџџџџ+
+
_user_specified_nameembedding_1_input


&__inference_lstm_1_layer_call_fn_50850

inputs
unknown
	unknown_0
	unknown_1
identityЂStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџФ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_482982
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџ+:::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџ+
 
_user_specified_nameinputs
х
l
N__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_49494

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:џџџџџџџџџ+2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:џџџџџџџџџ+2

Identity_1"!

identity_1Identity_1:output:0*+
_input_shapes
:џџџџџџџџџ+:T P
,
_output_shapes
:џџџџџџџџџ+
 
_user_specified_nameinputs

Г
A__inference_lstm_1_layer_call_and_return_conditional_losses_50839

inputs-
)lstm_cell_1_split_readvariableop_resource/
+lstm_cell_1_split_1_readvariableop_resource'
#lstm_cell_1_readvariableop_resource
identityЂlstm_cell_1/ReadVariableOpЂlstm_cell_1/ReadVariableOp_1Ђlstm_cell_1/ReadVariableOp_2Ђlstm_cell_1/ReadVariableOp_3Ђ lstm_cell_1/split/ReadVariableOpЂ"lstm_cell_1/split_1/ReadVariableOpЂwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ф2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ф2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ф2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ф2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:+џџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2§
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2
lstm_cell_1/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_1/ones_like/Shape
lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_1/ones_like/ConstЕ
lstm_cell_1/ones_likeFill$lstm_cell_1/ones_like/Shape:output:0$lstm_cell_1/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/ones_like|
lstm_cell_1/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_1/ones_like_1/Shape
lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_1/ones_like_1/ConstН
lstm_cell_1/ones_like_1Fill&lstm_cell_1/ones_like_1/Shape:output:0&lstm_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/ones_like_1
lstm_cell_1/mulMulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/mul
lstm_cell_1/mul_1Mulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/mul_1
lstm_cell_1/mul_2Mulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/mul_2
lstm_cell_1/mul_3Mulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/mul_3h
lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/Const|
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/split/split_dimА
 lstm_cell_1/split/ReadVariableOpReadVariableOp)lstm_cell_1_split_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 lstm_cell_1/split/ReadVariableOpп
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0(lstm_cell_1/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ф:
Ф:
Ф:
Ф*
	num_split2
lstm_cell_1/split
lstm_cell_1/MatMulMatMullstm_cell_1/mul:z:0lstm_cell_1/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul
lstm_cell_1/MatMul_1MatMullstm_cell_1/mul_1:z:0lstm_cell_1/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_1
lstm_cell_1/MatMul_2MatMullstm_cell_1/mul_2:z:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_2
lstm_cell_1/MatMul_3MatMullstm_cell_1/mul_3:z:0lstm_cell_1/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_3l
lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/Const_1
lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_1/split_1/split_dimБ
"lstm_cell_1/split_1/ReadVariableOpReadVariableOp+lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02$
"lstm_cell_1/split_1/ReadVariableOpг
lstm_cell_1/split_1Split&lstm_cell_1/split_1/split_dim:output:0*lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ф:Ф:Ф:Ф*
	num_split2
lstm_cell_1/split_1Є
lstm_cell_1/BiasAddBiasAddlstm_cell_1/MatMul:product:0lstm_cell_1/split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/BiasAddЊ
lstm_cell_1/BiasAdd_1BiasAddlstm_cell_1/MatMul_1:product:0lstm_cell_1/split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/BiasAdd_1Њ
lstm_cell_1/BiasAdd_2BiasAddlstm_cell_1/MatMul_2:product:0lstm_cell_1/split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/BiasAdd_2Њ
lstm_cell_1/BiasAdd_3BiasAddlstm_cell_1/MatMul_3:product:0lstm_cell_1/split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/BiasAdd_3
lstm_cell_1/mul_4Mulzeros:output:0 lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_4
lstm_cell_1/mul_5Mulzeros:output:0 lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_5
lstm_cell_1/mul_6Mulzeros:output:0 lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_6
lstm_cell_1/mul_7Mulzeros:output:0 lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_7
lstm_cell_1/ReadVariableOpReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
Ф*
dtype02
lstm_cell_1/ReadVariableOp
lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_1/strided_slice/stack
!lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ф   2#
!lstm_cell_1/strided_slice/stack_1
!lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_1/strided_slice/stack_2Ц
lstm_cell_1/strided_sliceStridedSlice"lstm_cell_1/ReadVariableOp:value:0(lstm_cell_1/strided_slice/stack:output:0*lstm_cell_1/strided_slice/stack_1:output:0*lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
lstm_cell_1/strided_sliceЄ
lstm_cell_1/MatMul_4MatMullstm_cell_1/mul_4:z:0"lstm_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_4
lstm_cell_1/addAddV2lstm_cell_1/BiasAdd:output:0lstm_cell_1/MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/add}
lstm_cell_1/SigmoidSigmoidlstm_cell_1/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/SigmoidЂ
lstm_cell_1/ReadVariableOp_1ReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
Ф*
dtype02
lstm_cell_1/ReadVariableOp_1
!lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ф   2#
!lstm_cell_1/strided_slice_1/stack
#lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_1/stack_1
#lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_1/stack_2в
lstm_cell_1/strided_slice_1StridedSlice$lstm_cell_1/ReadVariableOp_1:value:0*lstm_cell_1/strided_slice_1/stack:output:0,lstm_cell_1/strided_slice_1/stack_1:output:0,lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_1І
lstm_cell_1/MatMul_5MatMullstm_cell_1/mul_5:z:0$lstm_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_5Ђ
lstm_cell_1/add_1AddV2lstm_cell_1/BiasAdd_1:output:0lstm_cell_1/MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/add_1
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/Sigmoid_1
lstm_cell_1/mul_8Mullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_8Ђ
lstm_cell_1/ReadVariableOp_2ReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
Ф*
dtype02
lstm_cell_1/ReadVariableOp_2
!lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_1/strided_slice_2/stack
#lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2%
#lstm_cell_1/strided_slice_2/stack_1
#lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_2/stack_2в
lstm_cell_1/strided_slice_2StridedSlice$lstm_cell_1/ReadVariableOp_2:value:0*lstm_cell_1/strided_slice_2/stack:output:0,lstm_cell_1/strided_slice_2/stack_1:output:0,lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_2І
lstm_cell_1/MatMul_6MatMullstm_cell_1/mul_6:z:0$lstm_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_6Ђ
lstm_cell_1/add_2AddV2lstm_cell_1/BiasAdd_2:output:0lstm_cell_1/MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/add_2v
lstm_cell_1/TanhTanhlstm_cell_1/add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/Tanh
lstm_cell_1/mul_9Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_9
lstm_cell_1/add_3AddV2lstm_cell_1/mul_8:z:0lstm_cell_1/mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/add_3Ђ
lstm_cell_1/ReadVariableOp_3ReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
Ф*
dtype02
lstm_cell_1/ReadVariableOp_3
!lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2#
!lstm_cell_1/strided_slice_3/stack
#lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_1/strided_slice_3/stack_1
#lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_3/stack_2в
lstm_cell_1/strided_slice_3StridedSlice$lstm_cell_1/ReadVariableOp_3:value:0*lstm_cell_1/strided_slice_3/stack:output:0,lstm_cell_1/strided_slice_3/stack_1:output:0,lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_3І
lstm_cell_1/MatMul_7MatMullstm_cell_1/mul_7:z:0$lstm_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_7Ђ
lstm_cell_1/add_4AddV2lstm_cell_1/BiasAdd_3:output:0lstm_cell_1/MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/add_4
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/Sigmoid_2z
lstm_cell_1/Tanh_1Tanhlstm_cell_1/add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/Tanh_1
lstm_cell_1/mul_10Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_10
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџФ   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterу
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_1_split_readvariableop_resource+lstm_cell_1_split_1_readvariableop_resource#lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџФ:џџџџџџџџџФ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_50703*
condR
while_cond_50702*M
output_shapes<
:: : : : :џџџџџџџџџФ:џџџџџџџџџФ: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџФ   22
0TensorArrayV2Stack/TensorListStack/element_shapeщ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:+џџџџџџџџџФ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџФ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permІ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџ+Ф2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeЗ
IdentityIdentitystrided_slice_3:output:0^lstm_cell_1/ReadVariableOp^lstm_cell_1/ReadVariableOp_1^lstm_cell_1/ReadVariableOp_2^lstm_cell_1/ReadVariableOp_3!^lstm_cell_1/split/ReadVariableOp#^lstm_cell_1/split_1/ReadVariableOp^while*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџ+:::28
lstm_cell_1/ReadVariableOplstm_cell_1/ReadVariableOp2<
lstm_cell_1/ReadVariableOp_1lstm_cell_1/ReadVariableOp_12<
lstm_cell_1/ReadVariableOp_2lstm_cell_1/ReadVariableOp_22<
lstm_cell_1/ReadVariableOp_3lstm_cell_1/ReadVariableOp_32D
 lstm_cell_1/split/ReadVariableOp lstm_cell_1/split/ReadVariableOp2H
"lstm_cell_1/split_1/ReadVariableOp"lstm_cell_1/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџ+
 
_user_specified_nameinputs


&__inference_lstm_1_layer_call_fn_50201
inputs_0
unknown
	unknown_0
	unknown_1
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџФ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_478432
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:џџџџџџџџџџџџџџџџџџ:::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
§	
Ъ
lstm_1_while_cond_49272*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3,
(lstm_1_while_less_lstm_1_strided_slice_1A
=lstm_1_while_lstm_1_while_cond_49272___redundant_placeholder0A
=lstm_1_while_lstm_1_while_cond_49272___redundant_placeholder1A
=lstm_1_while_lstm_1_while_cond_49272___redundant_placeholder2A
=lstm_1_while_lstm_1_while_cond_49272___redundant_placeholder3
lstm_1_while_identity

lstm_1/while/LessLesslstm_1_while_placeholder(lstm_1_while_less_lstm_1_strided_slice_1*
T0*
_output_shapes
: 2
lstm_1/while/Lessr
lstm_1/while/IdentityIdentitylstm_1/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_1/while/Identity"7
lstm_1_while_identitylstm_1/while/Identity:output:0*U
_input_shapesD
B: : : : :џџџџџџџџџФ:џџџџџџџџџФ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџФ:.*
(
_output_shapes
:џџџџџџџџџФ:

_output_shapes
: :

_output_shapes
:
џЩ
р
G__inference_sequential_1_layer_call_and_return_conditional_losses_49147

inputs&
"embedding_1_embedding_lookup_487374
0lstm_1_lstm_cell_1_split_readvariableop_resource6
2lstm_1_lstm_cell_1_split_1_readvariableop_resource.
*lstm_1_lstm_cell_1_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identityЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOpЂembedding_1/embedding_lookupЂ!lstm_1/lstm_cell_1/ReadVariableOpЂ#lstm_1/lstm_cell_1/ReadVariableOp_1Ђ#lstm_1/lstm_cell_1/ReadVariableOp_2Ђ#lstm_1/lstm_cell_1/ReadVariableOp_3Ђ'lstm_1/lstm_cell_1/split/ReadVariableOpЂ)lstm_1/lstm_cell_1/split_1/ReadVariableOpЂlstm_1/whileu
embedding_1/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџ+2
embedding_1/CastИ
embedding_1/embedding_lookupResourceGather"embedding_1_embedding_lookup_48737embedding_1/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_1/embedding_lookup/48737*,
_output_shapes
:џџџџџџџџџ+*
dtype02
embedding_1/embedding_lookup
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_1/embedding_lookup/48737*,
_output_shapes
:џџџџџџџџџ+2'
%embedding_1/embedding_lookup/IdentityХ
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:џџџџџџџџџ+2)
'embedding_1/embedding_lookup/Identity_1
spatial_dropout1d_1/ShapeShape0embedding_1/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
spatial_dropout1d_1/Shape
'spatial_dropout1d_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'spatial_dropout1d_1/strided_slice/stack 
)spatial_dropout1d_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)spatial_dropout1d_1/strided_slice/stack_1 
)spatial_dropout1d_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)spatial_dropout1d_1/strided_slice/stack_2к
!spatial_dropout1d_1/strided_sliceStridedSlice"spatial_dropout1d_1/Shape:output:00spatial_dropout1d_1/strided_slice/stack:output:02spatial_dropout1d_1/strided_slice/stack_1:output:02spatial_dropout1d_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!spatial_dropout1d_1/strided_slice 
)spatial_dropout1d_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)spatial_dropout1d_1/strided_slice_1/stackЄ
+spatial_dropout1d_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+spatial_dropout1d_1/strided_slice_1/stack_1Є
+spatial_dropout1d_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+spatial_dropout1d_1/strided_slice_1/stack_2ф
#spatial_dropout1d_1/strided_slice_1StridedSlice"spatial_dropout1d_1/Shape:output:02spatial_dropout1d_1/strided_slice_1/stack:output:04spatial_dropout1d_1/strided_slice_1/stack_1:output:04spatial_dropout1d_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#spatial_dropout1d_1/strided_slice_1
!spatial_dropout1d_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2#
!spatial_dropout1d_1/dropout/Constо
spatial_dropout1d_1/dropout/MulMul0embedding_1/embedding_lookup/Identity_1:output:0*spatial_dropout1d_1/dropout/Const:output:0*
T0*,
_output_shapes
:џџџџџџџџџ+2!
spatial_dropout1d_1/dropout/MulЊ
2spatial_dropout1d_1/dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :24
2spatial_dropout1d_1/dropout/random_uniform/shape/1Б
0spatial_dropout1d_1/dropout/random_uniform/shapePack*spatial_dropout1d_1/strided_slice:output:0;spatial_dropout1d_1/dropout/random_uniform/shape/1:output:0,spatial_dropout1d_1/strided_slice_1:output:0*
N*
T0*
_output_shapes
:22
0spatial_dropout1d_1/dropout/random_uniform/shape
8spatial_dropout1d_1/dropout/random_uniform/RandomUniformRandomUniform9spatial_dropout1d_1/dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
dtype02:
8spatial_dropout1d_1/dropout/random_uniform/RandomUniform
*spatial_dropout1d_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2,
*spatial_dropout1d_1/dropout/GreaterEqual/y
(spatial_dropout1d_1/dropout/GreaterEqualGreaterEqualAspatial_dropout1d_1/dropout/random_uniform/RandomUniform:output:03spatial_dropout1d_1/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
(spatial_dropout1d_1/dropout/GreaterEqualШ
 spatial_dropout1d_1/dropout/CastCast,spatial_dropout1d_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2"
 spatial_dropout1d_1/dropout/CastЯ
!spatial_dropout1d_1/dropout/Mul_1Mul#spatial_dropout1d_1/dropout/Mul:z:0$spatial_dropout1d_1/dropout/Cast:y:0*
T0*,
_output_shapes
:џџџџџџџџџ+2#
!spatial_dropout1d_1/dropout/Mul_1q
lstm_1/ShapeShape%spatial_dropout1d_1/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
lstm_1/Shape
lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice/stack
lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_1/strided_slice/stack_1
lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_1/strided_slice/stack_2
lstm_1/strided_sliceStridedSlicelstm_1/Shape:output:0#lstm_1/strided_slice/stack:output:0%lstm_1/strided_slice/stack_1:output:0%lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_1/strided_slicek
lstm_1/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ф2
lstm_1/zeros/mul/y
lstm_1/zeros/mulMullstm_1/strided_slice:output:0lstm_1/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros/mulm
lstm_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_1/zeros/Less/y
lstm_1/zeros/LessLesslstm_1/zeros/mul:z:0lstm_1/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros/Lessq
lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ф2
lstm_1/zeros/packed/1
lstm_1/zeros/packedPacklstm_1/strided_slice:output:0lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_1/zeros/packedm
lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_1/zeros/Const
lstm_1/zerosFilllstm_1/zeros/packed:output:0lstm_1/zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/zeroso
lstm_1/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ф2
lstm_1/zeros_1/mul/y
lstm_1/zeros_1/mulMullstm_1/strided_slice:output:0lstm_1/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros_1/mulq
lstm_1/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_1/zeros_1/Less/y
lstm_1/zeros_1/LessLesslstm_1/zeros_1/mul:z:0lstm_1/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros_1/Lessu
lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ф2
lstm_1/zeros_1/packed/1Ѕ
lstm_1/zeros_1/packedPacklstm_1/strided_slice:output:0 lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_1/zeros_1/packedq
lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_1/zeros_1/Const
lstm_1/zeros_1Filllstm_1/zeros_1/packed:output:0lstm_1/zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/zeros_1
lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_1/transpose/permЏ
lstm_1/transpose	Transpose%spatial_dropout1d_1/dropout/Mul_1:z:0lstm_1/transpose/perm:output:0*
T0*,
_output_shapes
:+џџџџџџџџџ2
lstm_1/transposed
lstm_1/Shape_1Shapelstm_1/transpose:y:0*
T0*
_output_shapes
:2
lstm_1/Shape_1
lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice_1/stack
lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_1/stack_1
lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_1/stack_2
lstm_1/strided_slice_1StridedSlicelstm_1/Shape_1:output:0%lstm_1/strided_slice_1/stack:output:0'lstm_1/strided_slice_1/stack_1:output:0'lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_1/strided_slice_1
"lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2$
"lstm_1/TensorArrayV2/element_shapeЮ
lstm_1/TensorArrayV2TensorListReserve+lstm_1/TensorArrayV2/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_1/TensorArrayV2Э
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2>
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape
.lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_1/transpose:y:0Elstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_1/TensorArrayUnstack/TensorListFromTensor
lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice_2/stack
lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_2/stack_1
lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_2/stack_2Ї
lstm_1/strided_slice_2StridedSlicelstm_1/transpose:y:0%lstm_1/strided_slice_2/stack:output:0'lstm_1/strided_slice_2/stack_1:output:0'lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
lstm_1/strided_slice_2
"lstm_1/lstm_cell_1/ones_like/ShapeShapelstm_1/strided_slice_2:output:0*
T0*
_output_shapes
:2$
"lstm_1/lstm_cell_1/ones_like/Shape
"lstm_1/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"lstm_1/lstm_cell_1/ones_like/Constб
lstm_1/lstm_cell_1/ones_likeFill+lstm_1/lstm_cell_1/ones_like/Shape:output:0+lstm_1/lstm_cell_1/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_1/ones_like
 lstm_1/lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 lstm_1/lstm_cell_1/dropout/ConstЬ
lstm_1/lstm_cell_1/dropout/MulMul%lstm_1/lstm_cell_1/ones_like:output:0)lstm_1/lstm_cell_1/dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2 
lstm_1/lstm_cell_1/dropout/Mul
 lstm_1/lstm_cell_1/dropout/ShapeShape%lstm_1/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2"
 lstm_1/lstm_cell_1/dropout/Shape
7lstm_1/lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform)lstm_1/lstm_cell_1/dropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2Е29
7lstm_1/lstm_cell_1/dropout/random_uniform/RandomUniform
)lstm_1/lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2+
)lstm_1/lstm_cell_1/dropout/GreaterEqual/y
'lstm_1/lstm_cell_1/dropout/GreaterEqualGreaterEqual@lstm_1/lstm_cell_1/dropout/random_uniform/RandomUniform:output:02lstm_1/lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2)
'lstm_1/lstm_cell_1/dropout/GreaterEqualЙ
lstm_1/lstm_cell_1/dropout/CastCast+lstm_1/lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2!
lstm_1/lstm_cell_1/dropout/CastЧ
 lstm_1/lstm_cell_1/dropout/Mul_1Mul"lstm_1/lstm_cell_1/dropout/Mul:z:0#lstm_1/lstm_cell_1/dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2"
 lstm_1/lstm_cell_1/dropout/Mul_1
"lstm_1/lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_1/lstm_cell_1/dropout_1/Constв
 lstm_1/lstm_cell_1/dropout_1/MulMul%lstm_1/lstm_cell_1/ones_like:output:0+lstm_1/lstm_cell_1/dropout_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2"
 lstm_1/lstm_cell_1/dropout_1/Mul
"lstm_1/lstm_cell_1/dropout_1/ShapeShape%lstm_1/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_1/lstm_cell_1/dropout_1/Shape
9lstm_1/lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform+lstm_1/lstm_cell_1/dropout_1/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2аКw2;
9lstm_1/lstm_cell_1/dropout_1/random_uniform/RandomUniform
+lstm_1/lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2-
+lstm_1/lstm_cell_1/dropout_1/GreaterEqual/y
)lstm_1/lstm_cell_1/dropout_1/GreaterEqualGreaterEqualBlstm_1/lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:04lstm_1/lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2+
)lstm_1/lstm_cell_1/dropout_1/GreaterEqualП
!lstm_1/lstm_cell_1/dropout_1/CastCast-lstm_1/lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2#
!lstm_1/lstm_cell_1/dropout_1/CastЯ
"lstm_1/lstm_cell_1/dropout_1/Mul_1Mul$lstm_1/lstm_cell_1/dropout_1/Mul:z:0%lstm_1/lstm_cell_1/dropout_1/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2$
"lstm_1/lstm_cell_1/dropout_1/Mul_1
"lstm_1/lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_1/lstm_cell_1/dropout_2/Constв
 lstm_1/lstm_cell_1/dropout_2/MulMul%lstm_1/lstm_cell_1/ones_like:output:0+lstm_1/lstm_cell_1/dropout_2/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2"
 lstm_1/lstm_cell_1/dropout_2/Mul
"lstm_1/lstm_cell_1/dropout_2/ShapeShape%lstm_1/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_1/lstm_cell_1/dropout_2/Shape
9lstm_1/lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform+lstm_1/lstm_cell_1/dropout_2/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2еz2;
9lstm_1/lstm_cell_1/dropout_2/random_uniform/RandomUniform
+lstm_1/lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2-
+lstm_1/lstm_cell_1/dropout_2/GreaterEqual/y
)lstm_1/lstm_cell_1/dropout_2/GreaterEqualGreaterEqualBlstm_1/lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:04lstm_1/lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2+
)lstm_1/lstm_cell_1/dropout_2/GreaterEqualП
!lstm_1/lstm_cell_1/dropout_2/CastCast-lstm_1/lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2#
!lstm_1/lstm_cell_1/dropout_2/CastЯ
"lstm_1/lstm_cell_1/dropout_2/Mul_1Mul$lstm_1/lstm_cell_1/dropout_2/Mul:z:0%lstm_1/lstm_cell_1/dropout_2/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2$
"lstm_1/lstm_cell_1/dropout_2/Mul_1
"lstm_1/lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_1/lstm_cell_1/dropout_3/Constв
 lstm_1/lstm_cell_1/dropout_3/MulMul%lstm_1/lstm_cell_1/ones_like:output:0+lstm_1/lstm_cell_1/dropout_3/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2"
 lstm_1/lstm_cell_1/dropout_3/Mul
"lstm_1/lstm_cell_1/dropout_3/ShapeShape%lstm_1/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_1/lstm_cell_1/dropout_3/Shape
9lstm_1/lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform+lstm_1/lstm_cell_1/dropout_3/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2Мў2;
9lstm_1/lstm_cell_1/dropout_3/random_uniform/RandomUniform
+lstm_1/lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2-
+lstm_1/lstm_cell_1/dropout_3/GreaterEqual/y
)lstm_1/lstm_cell_1/dropout_3/GreaterEqualGreaterEqualBlstm_1/lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:04lstm_1/lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2+
)lstm_1/lstm_cell_1/dropout_3/GreaterEqualП
!lstm_1/lstm_cell_1/dropout_3/CastCast-lstm_1/lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2#
!lstm_1/lstm_cell_1/dropout_3/CastЯ
"lstm_1/lstm_cell_1/dropout_3/Mul_1Mul$lstm_1/lstm_cell_1/dropout_3/Mul:z:0%lstm_1/lstm_cell_1/dropout_3/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2$
"lstm_1/lstm_cell_1/dropout_3/Mul_1
$lstm_1/lstm_cell_1/ones_like_1/ShapeShapelstm_1/zeros:output:0*
T0*
_output_shapes
:2&
$lstm_1/lstm_cell_1/ones_like_1/Shape
$lstm_1/lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$lstm_1/lstm_cell_1/ones_like_1/Constй
lstm_1/lstm_cell_1/ones_like_1Fill-lstm_1/lstm_cell_1/ones_like_1/Shape:output:0-lstm_1/lstm_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2 
lstm_1/lstm_cell_1/ones_like_1
"lstm_1/lstm_cell_1/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_1/lstm_cell_1/dropout_4/Constд
 lstm_1/lstm_cell_1/dropout_4/MulMul'lstm_1/lstm_cell_1/ones_like_1:output:0+lstm_1/lstm_cell_1/dropout_4/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2"
 lstm_1/lstm_cell_1/dropout_4/Mul
"lstm_1/lstm_cell_1/dropout_4/ShapeShape'lstm_1/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2$
"lstm_1/lstm_cell_1/dropout_4/Shape
9lstm_1/lstm_cell_1/dropout_4/random_uniform/RandomUniformRandomUniform+lstm_1/lstm_cell_1/dropout_4/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2Ём2;
9lstm_1/lstm_cell_1/dropout_4/random_uniform/RandomUniform
+lstm_1/lstm_cell_1/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2-
+lstm_1/lstm_cell_1/dropout_4/GreaterEqual/y
)lstm_1/lstm_cell_1/dropout_4/GreaterEqualGreaterEqualBlstm_1/lstm_cell_1/dropout_4/random_uniform/RandomUniform:output:04lstm_1/lstm_cell_1/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2+
)lstm_1/lstm_cell_1/dropout_4/GreaterEqualП
!lstm_1/lstm_cell_1/dropout_4/CastCast-lstm_1/lstm_cell_1/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2#
!lstm_1/lstm_cell_1/dropout_4/CastЯ
"lstm_1/lstm_cell_1/dropout_4/Mul_1Mul$lstm_1/lstm_cell_1/dropout_4/Mul:z:0%lstm_1/lstm_cell_1/dropout_4/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2$
"lstm_1/lstm_cell_1/dropout_4/Mul_1
"lstm_1/lstm_cell_1/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_1/lstm_cell_1/dropout_5/Constд
 lstm_1/lstm_cell_1/dropout_5/MulMul'lstm_1/lstm_cell_1/ones_like_1:output:0+lstm_1/lstm_cell_1/dropout_5/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2"
 lstm_1/lstm_cell_1/dropout_5/Mul
"lstm_1/lstm_cell_1/dropout_5/ShapeShape'lstm_1/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2$
"lstm_1/lstm_cell_1/dropout_5/Shape
9lstm_1/lstm_cell_1/dropout_5/random_uniform/RandomUniformRandomUniform+lstm_1/lstm_cell_1/dropout_5/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2ЯЈљ2;
9lstm_1/lstm_cell_1/dropout_5/random_uniform/RandomUniform
+lstm_1/lstm_cell_1/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2-
+lstm_1/lstm_cell_1/dropout_5/GreaterEqual/y
)lstm_1/lstm_cell_1/dropout_5/GreaterEqualGreaterEqualBlstm_1/lstm_cell_1/dropout_5/random_uniform/RandomUniform:output:04lstm_1/lstm_cell_1/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2+
)lstm_1/lstm_cell_1/dropout_5/GreaterEqualП
!lstm_1/lstm_cell_1/dropout_5/CastCast-lstm_1/lstm_cell_1/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2#
!lstm_1/lstm_cell_1/dropout_5/CastЯ
"lstm_1/lstm_cell_1/dropout_5/Mul_1Mul$lstm_1/lstm_cell_1/dropout_5/Mul:z:0%lstm_1/lstm_cell_1/dropout_5/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2$
"lstm_1/lstm_cell_1/dropout_5/Mul_1
"lstm_1/lstm_cell_1/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_1/lstm_cell_1/dropout_6/Constд
 lstm_1/lstm_cell_1/dropout_6/MulMul'lstm_1/lstm_cell_1/ones_like_1:output:0+lstm_1/lstm_cell_1/dropout_6/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2"
 lstm_1/lstm_cell_1/dropout_6/Mul
"lstm_1/lstm_cell_1/dropout_6/ShapeShape'lstm_1/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2$
"lstm_1/lstm_cell_1/dropout_6/Shape
9lstm_1/lstm_cell_1/dropout_6/random_uniform/RandomUniformRandomUniform+lstm_1/lstm_cell_1/dropout_6/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2џW2;
9lstm_1/lstm_cell_1/dropout_6/random_uniform/RandomUniform
+lstm_1/lstm_cell_1/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2-
+lstm_1/lstm_cell_1/dropout_6/GreaterEqual/y
)lstm_1/lstm_cell_1/dropout_6/GreaterEqualGreaterEqualBlstm_1/lstm_cell_1/dropout_6/random_uniform/RandomUniform:output:04lstm_1/lstm_cell_1/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2+
)lstm_1/lstm_cell_1/dropout_6/GreaterEqualП
!lstm_1/lstm_cell_1/dropout_6/CastCast-lstm_1/lstm_cell_1/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2#
!lstm_1/lstm_cell_1/dropout_6/CastЯ
"lstm_1/lstm_cell_1/dropout_6/Mul_1Mul$lstm_1/lstm_cell_1/dropout_6/Mul:z:0%lstm_1/lstm_cell_1/dropout_6/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2$
"lstm_1/lstm_cell_1/dropout_6/Mul_1
"lstm_1/lstm_cell_1/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_1/lstm_cell_1/dropout_7/Constд
 lstm_1/lstm_cell_1/dropout_7/MulMul'lstm_1/lstm_cell_1/ones_like_1:output:0+lstm_1/lstm_cell_1/dropout_7/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2"
 lstm_1/lstm_cell_1/dropout_7/Mul
"lstm_1/lstm_cell_1/dropout_7/ShapeShape'lstm_1/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2$
"lstm_1/lstm_cell_1/dropout_7/Shape
9lstm_1/lstm_cell_1/dropout_7/random_uniform/RandomUniformRandomUniform+lstm_1/lstm_cell_1/dropout_7/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2л№$2;
9lstm_1/lstm_cell_1/dropout_7/random_uniform/RandomUniform
+lstm_1/lstm_cell_1/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2-
+lstm_1/lstm_cell_1/dropout_7/GreaterEqual/y
)lstm_1/lstm_cell_1/dropout_7/GreaterEqualGreaterEqualBlstm_1/lstm_cell_1/dropout_7/random_uniform/RandomUniform:output:04lstm_1/lstm_cell_1/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2+
)lstm_1/lstm_cell_1/dropout_7/GreaterEqualП
!lstm_1/lstm_cell_1/dropout_7/CastCast-lstm_1/lstm_cell_1/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2#
!lstm_1/lstm_cell_1/dropout_7/CastЯ
"lstm_1/lstm_cell_1/dropout_7/Mul_1Mul$lstm_1/lstm_cell_1/dropout_7/Mul:z:0%lstm_1/lstm_cell_1/dropout_7/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2$
"lstm_1/lstm_cell_1/dropout_7/Mul_1Б
lstm_1/lstm_cell_1/mulMullstm_1/strided_slice_2:output:0$lstm_1/lstm_cell_1/dropout/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_1/mulЗ
lstm_1/lstm_cell_1/mul_1Mullstm_1/strided_slice_2:output:0&lstm_1/lstm_cell_1/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_1/mul_1З
lstm_1/lstm_cell_1/mul_2Mullstm_1/strided_slice_2:output:0&lstm_1/lstm_cell_1/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_1/mul_2З
lstm_1/lstm_cell_1/mul_3Mullstm_1/strided_slice_2:output:0&lstm_1/lstm_cell_1/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_1/mul_3v
lstm_1/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/lstm_cell_1/Const
"lstm_1/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_1/lstm_cell_1/split/split_dimХ
'lstm_1/lstm_cell_1/split/ReadVariableOpReadVariableOp0lstm_1_lstm_cell_1_split_readvariableop_resource* 
_output_shapes
:
*
dtype02)
'lstm_1/lstm_cell_1/split/ReadVariableOpћ
lstm_1/lstm_cell_1/splitSplit+lstm_1/lstm_cell_1/split/split_dim:output:0/lstm_1/lstm_cell_1/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ф:
Ф:
Ф:
Ф*
	num_split2
lstm_1/lstm_cell_1/splitВ
lstm_1/lstm_cell_1/MatMulMatMullstm_1/lstm_cell_1/mul:z:0!lstm_1/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/MatMulИ
lstm_1/lstm_cell_1/MatMul_1MatMullstm_1/lstm_cell_1/mul_1:z:0!lstm_1/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/MatMul_1И
lstm_1/lstm_cell_1/MatMul_2MatMullstm_1/lstm_cell_1/mul_2:z:0!lstm_1/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/MatMul_2И
lstm_1/lstm_cell_1/MatMul_3MatMullstm_1/lstm_cell_1/mul_3:z:0!lstm_1/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/MatMul_3z
lstm_1/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/lstm_cell_1/Const_1
$lstm_1/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$lstm_1/lstm_cell_1/split_1/split_dimЦ
)lstm_1/lstm_cell_1/split_1/ReadVariableOpReadVariableOp2lstm_1_lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02+
)lstm_1/lstm_cell_1/split_1/ReadVariableOpя
lstm_1/lstm_cell_1/split_1Split-lstm_1/lstm_cell_1/split_1/split_dim:output:01lstm_1/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ф:Ф:Ф:Ф*
	num_split2
lstm_1/lstm_cell_1/split_1Р
lstm_1/lstm_cell_1/BiasAddBiasAdd#lstm_1/lstm_cell_1/MatMul:product:0#lstm_1/lstm_cell_1/split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/BiasAddЦ
lstm_1/lstm_cell_1/BiasAdd_1BiasAdd%lstm_1/lstm_cell_1/MatMul_1:product:0#lstm_1/lstm_cell_1/split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/BiasAdd_1Ц
lstm_1/lstm_cell_1/BiasAdd_2BiasAdd%lstm_1/lstm_cell_1/MatMul_2:product:0#lstm_1/lstm_cell_1/split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/BiasAdd_2Ц
lstm_1/lstm_cell_1/BiasAdd_3BiasAdd%lstm_1/lstm_cell_1/MatMul_3:product:0#lstm_1/lstm_cell_1/split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/BiasAdd_3­
lstm_1/lstm_cell_1/mul_4Mullstm_1/zeros:output:0&lstm_1/lstm_cell_1/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/mul_4­
lstm_1/lstm_cell_1/mul_5Mullstm_1/zeros:output:0&lstm_1/lstm_cell_1/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/mul_5­
lstm_1/lstm_cell_1/mul_6Mullstm_1/zeros:output:0&lstm_1/lstm_cell_1/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/mul_6­
lstm_1/lstm_cell_1/mul_7Mullstm_1/zeros:output:0&lstm_1/lstm_cell_1/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/mul_7Г
!lstm_1/lstm_cell_1/ReadVariableOpReadVariableOp*lstm_1_lstm_cell_1_readvariableop_resource* 
_output_shapes
:
Ф*
dtype02#
!lstm_1/lstm_cell_1/ReadVariableOpЁ
&lstm_1/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&lstm_1/lstm_cell_1/strided_slice/stackЅ
(lstm_1/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ф   2*
(lstm_1/lstm_cell_1/strided_slice/stack_1Ѕ
(lstm_1/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm_1/lstm_cell_1/strided_slice/stack_2№
 lstm_1/lstm_cell_1/strided_sliceStridedSlice)lstm_1/lstm_cell_1/ReadVariableOp:value:0/lstm_1/lstm_cell_1/strided_slice/stack:output:01lstm_1/lstm_cell_1/strided_slice/stack_1:output:01lstm_1/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2"
 lstm_1/lstm_cell_1/strided_sliceР
lstm_1/lstm_cell_1/MatMul_4MatMullstm_1/lstm_cell_1/mul_4:z:0)lstm_1/lstm_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/MatMul_4И
lstm_1/lstm_cell_1/addAddV2#lstm_1/lstm_cell_1/BiasAdd:output:0%lstm_1/lstm_cell_1/MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/add
lstm_1/lstm_cell_1/SigmoidSigmoidlstm_1/lstm_cell_1/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/SigmoidЗ
#lstm_1/lstm_cell_1/ReadVariableOp_1ReadVariableOp*lstm_1_lstm_cell_1_readvariableop_resource* 
_output_shapes
:
Ф*
dtype02%
#lstm_1/lstm_cell_1/ReadVariableOp_1Ѕ
(lstm_1/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ф   2*
(lstm_1/lstm_cell_1/strided_slice_1/stackЉ
*lstm_1/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_1/lstm_cell_1/strided_slice_1/stack_1Љ
*lstm_1/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_1/lstm_cell_1/strided_slice_1/stack_2ќ
"lstm_1/lstm_cell_1/strided_slice_1StridedSlice+lstm_1/lstm_cell_1/ReadVariableOp_1:value:01lstm_1/lstm_cell_1/strided_slice_1/stack:output:03lstm_1/lstm_cell_1/strided_slice_1/stack_1:output:03lstm_1/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2$
"lstm_1/lstm_cell_1/strided_slice_1Т
lstm_1/lstm_cell_1/MatMul_5MatMullstm_1/lstm_cell_1/mul_5:z:0+lstm_1/lstm_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/MatMul_5О
lstm_1/lstm_cell_1/add_1AddV2%lstm_1/lstm_cell_1/BiasAdd_1:output:0%lstm_1/lstm_cell_1/MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/add_1
lstm_1/lstm_cell_1/Sigmoid_1Sigmoidlstm_1/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/Sigmoid_1Љ
lstm_1/lstm_cell_1/mul_8Mul lstm_1/lstm_cell_1/Sigmoid_1:y:0lstm_1/zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/mul_8З
#lstm_1/lstm_cell_1/ReadVariableOp_2ReadVariableOp*lstm_1_lstm_cell_1_readvariableop_resource* 
_output_shapes
:
Ф*
dtype02%
#lstm_1/lstm_cell_1/ReadVariableOp_2Ѕ
(lstm_1/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm_1/lstm_cell_1/strided_slice_2/stackЉ
*lstm_1/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2,
*lstm_1/lstm_cell_1/strided_slice_2/stack_1Љ
*lstm_1/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_1/lstm_cell_1/strided_slice_2/stack_2ќ
"lstm_1/lstm_cell_1/strided_slice_2StridedSlice+lstm_1/lstm_cell_1/ReadVariableOp_2:value:01lstm_1/lstm_cell_1/strided_slice_2/stack:output:03lstm_1/lstm_cell_1/strided_slice_2/stack_1:output:03lstm_1/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2$
"lstm_1/lstm_cell_1/strided_slice_2Т
lstm_1/lstm_cell_1/MatMul_6MatMullstm_1/lstm_cell_1/mul_6:z:0+lstm_1/lstm_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/MatMul_6О
lstm_1/lstm_cell_1/add_2AddV2%lstm_1/lstm_cell_1/BiasAdd_2:output:0%lstm_1/lstm_cell_1/MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/add_2
lstm_1/lstm_cell_1/TanhTanhlstm_1/lstm_cell_1/add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/TanhЋ
lstm_1/lstm_cell_1/mul_9Mullstm_1/lstm_cell_1/Sigmoid:y:0lstm_1/lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/mul_9Ќ
lstm_1/lstm_cell_1/add_3AddV2lstm_1/lstm_cell_1/mul_8:z:0lstm_1/lstm_cell_1/mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/add_3З
#lstm_1/lstm_cell_1/ReadVariableOp_3ReadVariableOp*lstm_1_lstm_cell_1_readvariableop_resource* 
_output_shapes
:
Ф*
dtype02%
#lstm_1/lstm_cell_1/ReadVariableOp_3Ѕ
(lstm_1/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2*
(lstm_1/lstm_cell_1/strided_slice_3/stackЉ
*lstm_1/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_1/lstm_cell_1/strided_slice_3/stack_1Љ
*lstm_1/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_1/lstm_cell_1/strided_slice_3/stack_2ќ
"lstm_1/lstm_cell_1/strided_slice_3StridedSlice+lstm_1/lstm_cell_1/ReadVariableOp_3:value:01lstm_1/lstm_cell_1/strided_slice_3/stack:output:03lstm_1/lstm_cell_1/strided_slice_3/stack_1:output:03lstm_1/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2$
"lstm_1/lstm_cell_1/strided_slice_3Т
lstm_1/lstm_cell_1/MatMul_7MatMullstm_1/lstm_cell_1/mul_7:z:0+lstm_1/lstm_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/MatMul_7О
lstm_1/lstm_cell_1/add_4AddV2%lstm_1/lstm_cell_1/BiasAdd_3:output:0%lstm_1/lstm_cell_1/MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/add_4
lstm_1/lstm_cell_1/Sigmoid_2Sigmoidlstm_1/lstm_cell_1/add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/Sigmoid_2
lstm_1/lstm_cell_1/Tanh_1Tanhlstm_1/lstm_cell_1/add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/Tanh_1Б
lstm_1/lstm_cell_1/mul_10Mul lstm_1/lstm_cell_1/Sigmoid_2:y:0lstm_1/lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/mul_10
$lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџФ   2&
$lstm_1/TensorArrayV2_1/element_shapeд
lstm_1/TensorArrayV2_1TensorListReserve-lstm_1/TensorArrayV2_1/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_1/TensorArrayV2_1\
lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_1/time
lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2!
lstm_1/while/maximum_iterationsx
lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_1/while/loop_counterЬ
lstm_1/whileWhile"lstm_1/while/loop_counter:output:0(lstm_1/while/maximum_iterations:output:0lstm_1/time:output:0lstm_1/TensorArrayV2_1:handle:0lstm_1/zeros:output:0lstm_1/zeros_1:output:0lstm_1/strided_slice_1:output:0>lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:00lstm_1_lstm_cell_1_split_readvariableop_resource2lstm_1_lstm_cell_1_split_1_readvariableop_resource*lstm_1_lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџФ:џџџџџџџџџФ: : : : : *%
_read_only_resource_inputs
	
*#
bodyR
lstm_1_while_body_48940*#
condR
lstm_1_while_cond_48939*M
output_shapes<
:: : : : :џџџџџџџџџФ:џџџџџџџџџФ: : : : : *
parallel_iterations 2
lstm_1/whileУ
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџФ   29
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shape
)lstm_1/TensorArrayV2Stack/TensorListStackTensorListStacklstm_1/while:output:3@lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:+џџџџџџџџџФ*
element_dtype02+
)lstm_1/TensorArrayV2Stack/TensorListStack
lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
lstm_1/strided_slice_3/stack
lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_1/strided_slice_3/stack_1
lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_3/stack_2Х
lstm_1/strided_slice_3StridedSlice2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_1/strided_slice_3/stack:output:0'lstm_1/strided_slice_3/stack_1:output:0'lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџФ*
shrink_axis_mask2
lstm_1/strided_slice_3
lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_1/transpose_1/permТ
lstm_1/transpose_1	Transpose2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџ+Ф2
lstm_1/transpose_1t
lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_1/runtimeІ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	Ф*
dtype02
dense_1/MatMul/ReadVariableOpЄ
dense_1/MatMulMatMullstm_1/strided_slice_3:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_1/MatMulЄ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOpЁ
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_1/BiasAddy
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_1/SoftmaxШ
IdentityIdentitydense_1/Softmax:softmax:0^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding_1/embedding_lookup"^lstm_1/lstm_cell_1/ReadVariableOp$^lstm_1/lstm_cell_1/ReadVariableOp_1$^lstm_1/lstm_cell_1/ReadVariableOp_2$^lstm_1/lstm_cell_1/ReadVariableOp_3(^lstm_1/lstm_cell_1/split/ReadVariableOp*^lstm_1/lstm_cell_1/split_1/ReadVariableOp^lstm_1/while*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ+::::::2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2<
embedding_1/embedding_lookupembedding_1/embedding_lookup2F
!lstm_1/lstm_cell_1/ReadVariableOp!lstm_1/lstm_cell_1/ReadVariableOp2J
#lstm_1/lstm_cell_1/ReadVariableOp_1#lstm_1/lstm_cell_1/ReadVariableOp_12J
#lstm_1/lstm_cell_1/ReadVariableOp_2#lstm_1/lstm_cell_1/ReadVariableOp_22J
#lstm_1/lstm_cell_1/ReadVariableOp_3#lstm_1/lstm_cell_1/ReadVariableOp_32R
'lstm_1/lstm_cell_1/split/ReadVariableOp'lstm_1/lstm_cell_1/split/ReadVariableOp2V
)lstm_1/lstm_cell_1/split_1/ReadVariableOp)lstm_1/lstm_cell_1/split_1/ReadVariableOp2
lstm_1/whilelstm_1/while:O K
'
_output_shapes
:џџџџџџџџџ+
 
_user_specified_nameinputs
к
|
'__inference_dense_1_layer_call_fn_50881

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_485942
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџФ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџФ
 
_user_specified_nameinputs
ї	
л
B__inference_dense_1_layer_call_and_return_conditional_losses_48594

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Ф*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџФ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџФ
 
_user_specified_nameinputs
Ъ
q
+__inference_embedding_1_layer_call_fn_49467

inputs
unknown
identityЂStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ+*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_478662
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:џџџџџџџџџ+2

Identity"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ+:22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ+
 
_user_specified_nameinputs
вD
г
A__inference_lstm_1_layer_call_and_return_conditional_losses_47711

inputs
lstm_cell_1_47629
lstm_cell_1_47631
lstm_cell_1_47633
identityЂ#lstm_cell_1/StatefulPartitionedCallЂwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ф2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ф2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ф2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ф2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2§
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2
#lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_1_47629lstm_cell_1_47631lstm_cell_1_47633*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџФ:џџџџџџџџџФ:џџџџџџџџџФ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_472642%
#lstm_cell_1/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџФ   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_1_47629lstm_cell_1_47631lstm_cell_1_47633*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџФ:џџџџџџџџџФ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_47642*
condR
while_cond_47641*M
output_shapes<
:: : : : :џџџџџџџџџФ:џџџџџџџџџФ: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџФ   22
0TensorArrayV2Stack/TensorListStack/element_shapeђ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџФ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџФ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЏ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџФ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_1/StatefulPartitionedCall^while*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:џџџџџџџџџџџџџџџџџџ:::2J
#lstm_cell_1/StatefulPartitionedCall#lstm_cell_1/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
?

__inference__traced_save_51251
file_prefix5
1savev2_embedding_1_embeddings_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop8
4savev2_lstm_1_lstm_cell_1_kernel_read_readvariableopB
>savev2_lstm_1_lstm_cell_1_recurrent_kernel_read_readvariableop6
2savev2_lstm_1_lstm_cell_1_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop<
8savev2_adam_embedding_1_embeddings_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop?
;savev2_adam_lstm_1_lstm_cell_1_kernel_m_read_readvariableopI
Esavev2_adam_lstm_1_lstm_cell_1_recurrent_kernel_m_read_readvariableop=
9savev2_adam_lstm_1_lstm_cell_1_bias_m_read_readvariableop<
8savev2_adam_embedding_1_embeddings_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop?
;savev2_adam_lstm_1_lstm_cell_1_kernel_v_read_readvariableopI
Esavev2_adam_lstm_1_lstm_cell_1_recurrent_kernel_v_read_readvariableop=
9savev2_adam_lstm_1_lstm_cell_1_bias_v_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpoints
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
Const_1
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
ShardedFilename/shardІ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*І
valueBB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesР
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_embedding_1_embeddings_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop4savev2_lstm_1_lstm_cell_1_kernel_read_readvariableop>savev2_lstm_1_lstm_cell_1_recurrent_kernel_read_readvariableop2savev2_lstm_1_lstm_cell_1_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop8savev2_adam_embedding_1_embeddings_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop;savev2_adam_lstm_1_lstm_cell_1_kernel_m_read_readvariableopEsavev2_adam_lstm_1_lstm_cell_1_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_1_lstm_cell_1_bias_m_read_readvariableop8savev2_adam_embedding_1_embeddings_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop;savev2_adam_lstm_1_lstm_cell_1_kernel_v_read_readvariableopEsavev2_adam_lstm_1_lstm_cell_1_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_1_lstm_cell_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
2	2
SaveV2К
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesЁ
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

identity_1Identity_1:output:0*т
_input_shapesа
Э: :ШЃ:	Ф:: : : : : :
:
Ф:: : : : :ШЃ:	Ф::
:
Ф::ШЃ:	Ф::
:
Ф:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:'#
!
_output_shapes
:ШЃ:%!

_output_shapes
:	Ф: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&	"
 
_output_shapes
:
:&
"
 
_output_shapes
:
Ф:!

_output_shapes	
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :'#
!
_output_shapes
:ШЃ:%!

_output_shapes
:	Ф: 

_output_shapes
::&"
 
_output_shapes
:
:&"
 
_output_shapes
:
Ф:!

_output_shapes	
::'#
!
_output_shapes
:ШЃ:%!

_output_shapes
:	Ф: 

_output_shapes
::&"
 
_output_shapes
:
:&"
 
_output_shapes
:
Ф:!

_output_shapes	
::

_output_shapes
: 
§	
Ъ
lstm_1_while_cond_48939*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3,
(lstm_1_while_less_lstm_1_strided_slice_1A
=lstm_1_while_lstm_1_while_cond_48939___redundant_placeholder0A
=lstm_1_while_lstm_1_while_cond_48939___redundant_placeholder1A
=lstm_1_while_lstm_1_while_cond_48939___redundant_placeholder2A
=lstm_1_while_lstm_1_while_cond_48939___redundant_placeholder3
lstm_1_while_identity

lstm_1/while/LessLesslstm_1_while_placeholder(lstm_1_while_less_lstm_1_strided_slice_1*
T0*
_output_shapes
: 2
lstm_1/while/Lessr
lstm_1/while/IdentityIdentitylstm_1/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_1/while/Identity"7
lstm_1_while_identitylstm_1/while/Identity:output:0*U
_input_shapesD
B: : : : :џџџџџџџџџФ:џџџџџџџџџФ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџФ:.*
(
_output_shapes
:џџџџџџџџџФ:

_output_shapes
: :

_output_shapes
:
ѕN
ў
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_47348

inputs

states
states_1!
split_readvariableop_resource#
split_1_readvariableop_resource
readvariableop_resource
identity

identity_1

identity_2ЂReadVariableOpЂReadVariableOp_1ЂReadVariableOp_2ЂReadVariableOp_3Ђsplit/ReadVariableOpЂsplit_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
	ones_like\
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like_1/Const
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
ones_like_1`
mulMulinputsones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
muld
mul_1Mulinputsones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
mul_1d
mul_2Mulinputsones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
mul_2d
mul_3Mulinputsones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
mul_3P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
*
dtype02
split/ReadVariableOpЏ
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ф:
Ф:
Ф:
Ф*
	num_split2
splitf
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
MatMull
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2

MatMul_1l
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2

MatMul_2l
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2

MatMul_3T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype02
split_1/ReadVariableOpЃ
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ф:Ф:Ф:Ф*
	num_split2	
split_1t
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2	
BiasAddz
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2
	BiasAdd_1z
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2
	BiasAdd_2z
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2
	BiasAdd_3f
mul_4Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
mul_4f
mul_5Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
mul_5f
mul_6Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
mul_6f
mul_7Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
mul_7z
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ф*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ф   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2ў
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
strided_slicet
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2

MatMul_4l
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2	
Sigmoid~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ф*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ф   2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
strided_slice_1v
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2

MatMul_5r
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
	Sigmoid_1a
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:џџџџџџџџџФ2
mul_8~
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ф*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
strided_slice_2v
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2

MatMul_6r
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
Tanh_
mul_9MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
mul_9`
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
add_3~
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ф*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
strided_slice_3v
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2

MatMul_7r
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
add_4_
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
	Sigmoid_2V
Tanh_1Tanh	add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
Tanh_1e
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
mul_10й
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identityн

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity_1м

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*[
_input_shapesJ
H:џџџџџџџџџ:џџџџџџџџџФ:џџџџџџџџџФ:::2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:PL
(
_output_shapes
:џџџџџџџџџФ
 
_user_specified_namestates:PL
(
_output_shapes
:џџџџџџџџџФ
 
_user_specified_namestates
Л
Е
A__inference_lstm_1_layer_call_and_return_conditional_losses_50179
inputs_0-
)lstm_cell_1_split_readvariableop_resource/
+lstm_cell_1_split_1_readvariableop_resource'
#lstm_cell_1_readvariableop_resource
identityЂlstm_cell_1/ReadVariableOpЂlstm_cell_1/ReadVariableOp_1Ђlstm_cell_1/ReadVariableOp_2Ђlstm_cell_1/ReadVariableOp_3Ђ lstm_cell_1/split/ReadVariableOpЂ"lstm_cell_1/split_1/ReadVariableOpЂwhileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ф2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ф2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ф2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ф2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2§
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2
lstm_cell_1/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_1/ones_like/Shape
lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_1/ones_like/ConstЕ
lstm_cell_1/ones_likeFill$lstm_cell_1/ones_like/Shape:output:0$lstm_cell_1/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/ones_like|
lstm_cell_1/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_1/ones_like_1/Shape
lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_1/ones_like_1/ConstН
lstm_cell_1/ones_like_1Fill&lstm_cell_1/ones_like_1/Shape:output:0&lstm_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/ones_like_1
lstm_cell_1/mulMulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/mul
lstm_cell_1/mul_1Mulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/mul_1
lstm_cell_1/mul_2Mulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/mul_2
lstm_cell_1/mul_3Mulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/mul_3h
lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/Const|
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/split/split_dimА
 lstm_cell_1/split/ReadVariableOpReadVariableOp)lstm_cell_1_split_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 lstm_cell_1/split/ReadVariableOpп
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0(lstm_cell_1/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ф:
Ф:
Ф:
Ф*
	num_split2
lstm_cell_1/split
lstm_cell_1/MatMulMatMullstm_cell_1/mul:z:0lstm_cell_1/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul
lstm_cell_1/MatMul_1MatMullstm_cell_1/mul_1:z:0lstm_cell_1/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_1
lstm_cell_1/MatMul_2MatMullstm_cell_1/mul_2:z:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_2
lstm_cell_1/MatMul_3MatMullstm_cell_1/mul_3:z:0lstm_cell_1/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_3l
lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/Const_1
lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_1/split_1/split_dimБ
"lstm_cell_1/split_1/ReadVariableOpReadVariableOp+lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02$
"lstm_cell_1/split_1/ReadVariableOpг
lstm_cell_1/split_1Split&lstm_cell_1/split_1/split_dim:output:0*lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ф:Ф:Ф:Ф*
	num_split2
lstm_cell_1/split_1Є
lstm_cell_1/BiasAddBiasAddlstm_cell_1/MatMul:product:0lstm_cell_1/split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/BiasAddЊ
lstm_cell_1/BiasAdd_1BiasAddlstm_cell_1/MatMul_1:product:0lstm_cell_1/split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/BiasAdd_1Њ
lstm_cell_1/BiasAdd_2BiasAddlstm_cell_1/MatMul_2:product:0lstm_cell_1/split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/BiasAdd_2Њ
lstm_cell_1/BiasAdd_3BiasAddlstm_cell_1/MatMul_3:product:0lstm_cell_1/split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/BiasAdd_3
lstm_cell_1/mul_4Mulzeros:output:0 lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_4
lstm_cell_1/mul_5Mulzeros:output:0 lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_5
lstm_cell_1/mul_6Mulzeros:output:0 lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_6
lstm_cell_1/mul_7Mulzeros:output:0 lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_7
lstm_cell_1/ReadVariableOpReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
Ф*
dtype02
lstm_cell_1/ReadVariableOp
lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_1/strided_slice/stack
!lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ф   2#
!lstm_cell_1/strided_slice/stack_1
!lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_1/strided_slice/stack_2Ц
lstm_cell_1/strided_sliceStridedSlice"lstm_cell_1/ReadVariableOp:value:0(lstm_cell_1/strided_slice/stack:output:0*lstm_cell_1/strided_slice/stack_1:output:0*lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
lstm_cell_1/strided_sliceЄ
lstm_cell_1/MatMul_4MatMullstm_cell_1/mul_4:z:0"lstm_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_4
lstm_cell_1/addAddV2lstm_cell_1/BiasAdd:output:0lstm_cell_1/MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/add}
lstm_cell_1/SigmoidSigmoidlstm_cell_1/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/SigmoidЂ
lstm_cell_1/ReadVariableOp_1ReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
Ф*
dtype02
lstm_cell_1/ReadVariableOp_1
!lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ф   2#
!lstm_cell_1/strided_slice_1/stack
#lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_1/stack_1
#lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_1/stack_2в
lstm_cell_1/strided_slice_1StridedSlice$lstm_cell_1/ReadVariableOp_1:value:0*lstm_cell_1/strided_slice_1/stack:output:0,lstm_cell_1/strided_slice_1/stack_1:output:0,lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_1І
lstm_cell_1/MatMul_5MatMullstm_cell_1/mul_5:z:0$lstm_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_5Ђ
lstm_cell_1/add_1AddV2lstm_cell_1/BiasAdd_1:output:0lstm_cell_1/MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/add_1
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/Sigmoid_1
lstm_cell_1/mul_8Mullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_8Ђ
lstm_cell_1/ReadVariableOp_2ReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
Ф*
dtype02
lstm_cell_1/ReadVariableOp_2
!lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_1/strided_slice_2/stack
#lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2%
#lstm_cell_1/strided_slice_2/stack_1
#lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_2/stack_2в
lstm_cell_1/strided_slice_2StridedSlice$lstm_cell_1/ReadVariableOp_2:value:0*lstm_cell_1/strided_slice_2/stack:output:0,lstm_cell_1/strided_slice_2/stack_1:output:0,lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_2І
lstm_cell_1/MatMul_6MatMullstm_cell_1/mul_6:z:0$lstm_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_6Ђ
lstm_cell_1/add_2AddV2lstm_cell_1/BiasAdd_2:output:0lstm_cell_1/MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/add_2v
lstm_cell_1/TanhTanhlstm_cell_1/add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/Tanh
lstm_cell_1/mul_9Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_9
lstm_cell_1/add_3AddV2lstm_cell_1/mul_8:z:0lstm_cell_1/mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/add_3Ђ
lstm_cell_1/ReadVariableOp_3ReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
Ф*
dtype02
lstm_cell_1/ReadVariableOp_3
!lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2#
!lstm_cell_1/strided_slice_3/stack
#lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_1/strided_slice_3/stack_1
#lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_3/stack_2в
lstm_cell_1/strided_slice_3StridedSlice$lstm_cell_1/ReadVariableOp_3:value:0*lstm_cell_1/strided_slice_3/stack:output:0,lstm_cell_1/strided_slice_3/stack_1:output:0,lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_3І
lstm_cell_1/MatMul_7MatMullstm_cell_1/mul_7:z:0$lstm_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_7Ђ
lstm_cell_1/add_4AddV2lstm_cell_1/BiasAdd_3:output:0lstm_cell_1/MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/add_4
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/Sigmoid_2z
lstm_cell_1/Tanh_1Tanhlstm_cell_1/add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/Tanh_1
lstm_cell_1/mul_10Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_10
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџФ   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterу
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_1_split_readvariableop_resource+lstm_cell_1_split_1_readvariableop_resource#lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџФ:џџџџџџџџџФ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_50043*
condR
while_cond_50042*M
output_shapes<
:: : : : :џџџџџџџџџФ:џџџџџџџџџФ: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџФ   22
0TensorArrayV2Stack/TensorListStack/element_shapeђ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџФ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџФ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЏ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџФ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeЗ
IdentityIdentitystrided_slice_3:output:0^lstm_cell_1/ReadVariableOp^lstm_cell_1/ReadVariableOp_1^lstm_cell_1/ReadVariableOp_2^lstm_cell_1/ReadVariableOp_3!^lstm_cell_1/split/ReadVariableOp#^lstm_cell_1/split_1/ReadVariableOp^while*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:џџџџџџџџџџџџџџџџџџ:::28
lstm_cell_1/ReadVariableOplstm_cell_1/ReadVariableOp2<
lstm_cell_1/ReadVariableOp_1lstm_cell_1/ReadVariableOp_12<
lstm_cell_1/ReadVariableOp_2lstm_cell_1/ReadVariableOp_22<
lstm_cell_1/ReadVariableOp_3lstm_cell_1/ReadVariableOp_32D
 lstm_cell_1/split/ReadVariableOp lstm_cell_1/split/ReadVariableOp2H
"lstm_cell_1/split_1/ReadVariableOp"lstm_cell_1/split_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
Ћ

F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_51029

inputs
states_0
states_1!
split_readvariableop_resource#
split_1_readvariableop_resource
readvariableop_resource
identity

identity_1

identity_2ЂReadVariableOpЂReadVariableOp_1ЂReadVariableOp_2ЂReadVariableOp_3Ђsplit/ReadVariableOpЂsplit_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shapeд
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2аи2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout/GreaterEqual/yП
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_1/Const
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shapeк
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2ЇІ2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_1/GreaterEqual/yЧ
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout_1/GreaterEqual
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
dropout_1/Cast
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_2/Const
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shapeк
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2ф2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_2/GreaterEqual/yЧ
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout_2/GreaterEqual
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
dropout_2/Cast
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_3/Const
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/Shapeк
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2мДС2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_3/GreaterEqual/yЧ
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout_3/GreaterEqual
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
dropout_3/Cast
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dropout_3/Mul_1^
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like_1/Const
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
ones_like_1g
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_4/Const
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
dropout_4/Mulf
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_4/Shapeк
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2Пљ2(
&dropout_4/random_uniform/RandomUniformy
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_4/GreaterEqual/yЧ
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
dropout_4/GreaterEqual
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2
dropout_4/Cast
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
dropout_4/Mul_1g
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_5/Const
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
dropout_5/Mulf
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_5/Shapeк
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2Е2(
&dropout_5/random_uniform/RandomUniformy
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_5/GreaterEqual/yЧ
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
dropout_5/GreaterEqual
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2
dropout_5/Cast
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
dropout_5/Mul_1g
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_6/Const
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
dropout_6/Mulf
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_6/Shapeй
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2Ш2(
&dropout_6/random_uniform/RandomUniformy
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_6/GreaterEqual/yЧ
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
dropout_6/GreaterEqual
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2
dropout_6/Cast
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
dropout_6/Mul_1g
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_7/Const
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
dropout_7/Mulf
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_7/Shapeк
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2Ийд2(
&dropout_7/random_uniform/RandomUniformy
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
dropout_7/GreaterEqual/yЧ
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
dropout_7/GreaterEqual
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2
dropout_7/Cast
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
dropout_7/Mul_1_
mulMulinputsdropout/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
mule
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
mul_1e
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
mul_2e
mul_3Mulinputsdropout_3/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
mul_3P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
*
dtype02
split/ReadVariableOpЏ
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ф:
Ф:
Ф:
Ф*
	num_split2
splitf
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
MatMull
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2

MatMul_1l
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2

MatMul_2l
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2

MatMul_3T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype02
split_1/ReadVariableOpЃ
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ф:Ф:Ф:Ф*
	num_split2	
split_1t
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2	
BiasAddz
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2
	BiasAdd_1z
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2
	BiasAdd_2z
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2
	BiasAdd_3g
mul_4Mulstates_0dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
mul_4g
mul_5Mulstates_0dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
mul_5g
mul_6Mulstates_0dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
mul_6g
mul_7Mulstates_0dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
mul_7z
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ф*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ф   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2ў
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
strided_slicet
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2

MatMul_4l
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2	
Sigmoid~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ф*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ф   2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
strided_slice_1v
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2

MatMul_5r
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
	Sigmoid_1a
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:џџџџџџџџџФ2
mul_8~
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ф*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
strided_slice_2v
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2

MatMul_6r
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
Tanh_
mul_9MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
mul_9`
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
add_3~
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ф*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
strided_slice_3v
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2

MatMul_7r
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
add_4_
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
	Sigmoid_2V
Tanh_1Tanh	add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
Tanh_1e
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
mul_10й
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identityн

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity_1м

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*[
_input_shapesJ
H:џџџџџџџџџ:џџџџџџџџџФ:џџџџџџџџџФ:::2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:RN
(
_output_shapes
:џџџџџџџџџФ
"
_user_specified_name
states/0:RN
(
_output_shapes
:џџџџџџџџџФ
"
_user_specified_name
states/1
І
К

lstm_1_while_body_49273*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3)
%lstm_1_while_lstm_1_strided_slice_1_0e
alstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0<
8lstm_1_while_lstm_cell_1_split_readvariableop_resource_0>
:lstm_1_while_lstm_cell_1_split_1_readvariableop_resource_06
2lstm_1_while_lstm_cell_1_readvariableop_resource_0
lstm_1_while_identity
lstm_1_while_identity_1
lstm_1_while_identity_2
lstm_1_while_identity_3
lstm_1_while_identity_4
lstm_1_while_identity_5'
#lstm_1_while_lstm_1_strided_slice_1c
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor:
6lstm_1_while_lstm_cell_1_split_readvariableop_resource<
8lstm_1_while_lstm_cell_1_split_1_readvariableop_resource4
0lstm_1_while_lstm_cell_1_readvariableop_resourceЂ'lstm_1/while/lstm_cell_1/ReadVariableOpЂ)lstm_1/while/lstm_cell_1/ReadVariableOp_1Ђ)lstm_1/while/lstm_cell_1/ReadVariableOp_2Ђ)lstm_1/while/lstm_cell_1/ReadVariableOp_3Ђ-lstm_1/while/lstm_cell_1/split/ReadVariableOpЂ/lstm_1/while/lstm_cell_1/split_1/ReadVariableOpб
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2@
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeў
0lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0lstm_1_while_placeholderGlstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype022
0lstm_1/while/TensorArrayV2Read/TensorListGetItemЛ
(lstm_1/while/lstm_cell_1/ones_like/ShapeShape7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2*
(lstm_1/while/lstm_cell_1/ones_like/Shape
(lstm_1/while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2*
(lstm_1/while/lstm_cell_1/ones_like/Constщ
"lstm_1/while/lstm_cell_1/ones_likeFill1lstm_1/while/lstm_cell_1/ones_like/Shape:output:01lstm_1/while/lstm_cell_1/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2$
"lstm_1/while/lstm_cell_1/ones_likeЂ
*lstm_1/while/lstm_cell_1/ones_like_1/ShapeShapelstm_1_while_placeholder_2*
T0*
_output_shapes
:2,
*lstm_1/while/lstm_cell_1/ones_like_1/Shape
*lstm_1/while/lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*lstm_1/while/lstm_cell_1/ones_like_1/Constё
$lstm_1/while/lstm_cell_1/ones_like_1Fill3lstm_1/while/lstm_cell_1/ones_like_1/Shape:output:03lstm_1/while/lstm_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2&
$lstm_1/while/lstm_cell_1/ones_like_1м
lstm_1/while/lstm_cell_1/mulMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_1/while/lstm_cell_1/mulр
lstm_1/while/lstm_cell_1/mul_1Mul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2 
lstm_1/while/lstm_cell_1/mul_1р
lstm_1/while/lstm_cell_1/mul_2Mul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2 
lstm_1/while/lstm_cell_1/mul_2р
lstm_1/while/lstm_cell_1/mul_3Mul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2 
lstm_1/while/lstm_cell_1/mul_3
lstm_1/while/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2 
lstm_1/while/lstm_cell_1/Const
(lstm_1/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_1/while/lstm_cell_1/split/split_dimй
-lstm_1/while/lstm_cell_1/split/ReadVariableOpReadVariableOp8lstm_1_while_lstm_cell_1_split_readvariableop_resource_0* 
_output_shapes
:
*
dtype02/
-lstm_1/while/lstm_cell_1/split/ReadVariableOp
lstm_1/while/lstm_cell_1/splitSplit1lstm_1/while/lstm_cell_1/split/split_dim:output:05lstm_1/while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ф:
Ф:
Ф:
Ф*
	num_split2 
lstm_1/while/lstm_cell_1/splitЪ
lstm_1/while/lstm_cell_1/MatMulMatMul lstm_1/while/lstm_cell_1/mul:z:0'lstm_1/while/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2!
lstm_1/while/lstm_cell_1/MatMulа
!lstm_1/while/lstm_cell_1/MatMul_1MatMul"lstm_1/while/lstm_cell_1/mul_1:z:0'lstm_1/while/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2#
!lstm_1/while/lstm_cell_1/MatMul_1а
!lstm_1/while/lstm_cell_1/MatMul_2MatMul"lstm_1/while/lstm_cell_1/mul_2:z:0'lstm_1/while/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2#
!lstm_1/while/lstm_cell_1/MatMul_2а
!lstm_1/while/lstm_cell_1/MatMul_3MatMul"lstm_1/while/lstm_cell_1/mul_3:z:0'lstm_1/while/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2#
!lstm_1/while/lstm_cell_1/MatMul_3
 lstm_1/while/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2"
 lstm_1/while/lstm_cell_1/Const_1
*lstm_1/while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2,
*lstm_1/while/lstm_cell_1/split_1/split_dimк
/lstm_1/while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp:lstm_1_while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype021
/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp
 lstm_1/while/lstm_cell_1/split_1Split3lstm_1/while/lstm_cell_1/split_1/split_dim:output:07lstm_1/while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ф:Ф:Ф:Ф*
	num_split2"
 lstm_1/while/lstm_cell_1/split_1и
 lstm_1/while/lstm_cell_1/BiasAddBiasAdd)lstm_1/while/lstm_cell_1/MatMul:product:0)lstm_1/while/lstm_cell_1/split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2"
 lstm_1/while/lstm_cell_1/BiasAddо
"lstm_1/while/lstm_cell_1/BiasAdd_1BiasAdd+lstm_1/while/lstm_cell_1/MatMul_1:product:0)lstm_1/while/lstm_cell_1/split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2$
"lstm_1/while/lstm_cell_1/BiasAdd_1о
"lstm_1/while/lstm_cell_1/BiasAdd_2BiasAdd+lstm_1/while/lstm_cell_1/MatMul_2:product:0)lstm_1/while/lstm_cell_1/split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2$
"lstm_1/while/lstm_cell_1/BiasAdd_2о
"lstm_1/while/lstm_cell_1/BiasAdd_3BiasAdd+lstm_1/while/lstm_cell_1/MatMul_3:product:0)lstm_1/while/lstm_cell_1/split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2$
"lstm_1/while/lstm_cell_1/BiasAdd_3Х
lstm_1/while/lstm_cell_1/mul_4Mullstm_1_while_placeholder_2-lstm_1/while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2 
lstm_1/while/lstm_cell_1/mul_4Х
lstm_1/while/lstm_cell_1/mul_5Mullstm_1_while_placeholder_2-lstm_1/while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2 
lstm_1/while/lstm_cell_1/mul_5Х
lstm_1/while/lstm_cell_1/mul_6Mullstm_1_while_placeholder_2-lstm_1/while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2 
lstm_1/while/lstm_cell_1/mul_6Х
lstm_1/while/lstm_cell_1/mul_7Mullstm_1_while_placeholder_2-lstm_1/while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2 
lstm_1/while/lstm_cell_1/mul_7Ч
'lstm_1/while/lstm_cell_1/ReadVariableOpReadVariableOp2lstm_1_while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
Ф*
dtype02)
'lstm_1/while/lstm_cell_1/ReadVariableOp­
,lstm_1/while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_1/while/lstm_cell_1/strided_slice/stackБ
.lstm_1/while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ф   20
.lstm_1/while/lstm_cell_1/strided_slice/stack_1Б
.lstm_1/while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_1/while/lstm_cell_1/strided_slice/stack_2
&lstm_1/while/lstm_cell_1/strided_sliceStridedSlice/lstm_1/while/lstm_cell_1/ReadVariableOp:value:05lstm_1/while/lstm_cell_1/strided_slice/stack:output:07lstm_1/while/lstm_cell_1/strided_slice/stack_1:output:07lstm_1/while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2(
&lstm_1/while/lstm_cell_1/strided_sliceи
!lstm_1/while/lstm_cell_1/MatMul_4MatMul"lstm_1/while/lstm_cell_1/mul_4:z:0/lstm_1/while/lstm_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2#
!lstm_1/while/lstm_cell_1/MatMul_4а
lstm_1/while/lstm_cell_1/addAddV2)lstm_1/while/lstm_cell_1/BiasAdd:output:0+lstm_1/while/lstm_cell_1/MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/while/lstm_cell_1/addЄ
 lstm_1/while/lstm_cell_1/SigmoidSigmoid lstm_1/while/lstm_cell_1/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2"
 lstm_1/while/lstm_cell_1/SigmoidЫ
)lstm_1/while/lstm_cell_1/ReadVariableOp_1ReadVariableOp2lstm_1_while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
Ф*
dtype02+
)lstm_1/while/lstm_cell_1/ReadVariableOp_1Б
.lstm_1/while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ф   20
.lstm_1/while/lstm_cell_1/strided_slice_1/stackЕ
0lstm_1/while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_1/while/lstm_cell_1/strided_slice_1/stack_1Е
0lstm_1/while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_1/while/lstm_cell_1/strided_slice_1/stack_2 
(lstm_1/while/lstm_cell_1/strided_slice_1StridedSlice1lstm_1/while/lstm_cell_1/ReadVariableOp_1:value:07lstm_1/while/lstm_cell_1/strided_slice_1/stack:output:09lstm_1/while/lstm_cell_1/strided_slice_1/stack_1:output:09lstm_1/while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2*
(lstm_1/while/lstm_cell_1/strided_slice_1к
!lstm_1/while/lstm_cell_1/MatMul_5MatMul"lstm_1/while/lstm_cell_1/mul_5:z:01lstm_1/while/lstm_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2#
!lstm_1/while/lstm_cell_1/MatMul_5ж
lstm_1/while/lstm_cell_1/add_1AddV2+lstm_1/while/lstm_cell_1/BiasAdd_1:output:0+lstm_1/while/lstm_cell_1/MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2 
lstm_1/while/lstm_cell_1/add_1Њ
"lstm_1/while/lstm_cell_1/Sigmoid_1Sigmoid"lstm_1/while/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2$
"lstm_1/while/lstm_cell_1/Sigmoid_1О
lstm_1/while/lstm_cell_1/mul_8Mul&lstm_1/while/lstm_cell_1/Sigmoid_1:y:0lstm_1_while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџФ2 
lstm_1/while/lstm_cell_1/mul_8Ы
)lstm_1/while/lstm_cell_1/ReadVariableOp_2ReadVariableOp2lstm_1_while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
Ф*
dtype02+
)lstm_1/while/lstm_cell_1/ReadVariableOp_2Б
.lstm_1/while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_1/while/lstm_cell_1/strided_slice_2/stackЕ
0lstm_1/while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  22
0lstm_1/while/lstm_cell_1/strided_slice_2/stack_1Е
0lstm_1/while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_1/while/lstm_cell_1/strided_slice_2/stack_2 
(lstm_1/while/lstm_cell_1/strided_slice_2StridedSlice1lstm_1/while/lstm_cell_1/ReadVariableOp_2:value:07lstm_1/while/lstm_cell_1/strided_slice_2/stack:output:09lstm_1/while/lstm_cell_1/strided_slice_2/stack_1:output:09lstm_1/while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2*
(lstm_1/while/lstm_cell_1/strided_slice_2к
!lstm_1/while/lstm_cell_1/MatMul_6MatMul"lstm_1/while/lstm_cell_1/mul_6:z:01lstm_1/while/lstm_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2#
!lstm_1/while/lstm_cell_1/MatMul_6ж
lstm_1/while/lstm_cell_1/add_2AddV2+lstm_1/while/lstm_cell_1/BiasAdd_2:output:0+lstm_1/while/lstm_cell_1/MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2 
lstm_1/while/lstm_cell_1/add_2
lstm_1/while/lstm_cell_1/TanhTanh"lstm_1/while/lstm_cell_1/add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/while/lstm_cell_1/TanhУ
lstm_1/while/lstm_cell_1/mul_9Mul$lstm_1/while/lstm_cell_1/Sigmoid:y:0!lstm_1/while/lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2 
lstm_1/while/lstm_cell_1/mul_9Ф
lstm_1/while/lstm_cell_1/add_3AddV2"lstm_1/while/lstm_cell_1/mul_8:z:0"lstm_1/while/lstm_cell_1/mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2 
lstm_1/while/lstm_cell_1/add_3Ы
)lstm_1/while/lstm_cell_1/ReadVariableOp_3ReadVariableOp2lstm_1_while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
Ф*
dtype02+
)lstm_1/while/lstm_cell_1/ReadVariableOp_3Б
.lstm_1/while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  20
.lstm_1/while/lstm_cell_1/strided_slice_3/stackЕ
0lstm_1/while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_1/while/lstm_cell_1/strided_slice_3/stack_1Е
0lstm_1/while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_1/while/lstm_cell_1/strided_slice_3/stack_2 
(lstm_1/while/lstm_cell_1/strided_slice_3StridedSlice1lstm_1/while/lstm_cell_1/ReadVariableOp_3:value:07lstm_1/while/lstm_cell_1/strided_slice_3/stack:output:09lstm_1/while/lstm_cell_1/strided_slice_3/stack_1:output:09lstm_1/while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2*
(lstm_1/while/lstm_cell_1/strided_slice_3к
!lstm_1/while/lstm_cell_1/MatMul_7MatMul"lstm_1/while/lstm_cell_1/mul_7:z:01lstm_1/while/lstm_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2#
!lstm_1/while/lstm_cell_1/MatMul_7ж
lstm_1/while/lstm_cell_1/add_4AddV2+lstm_1/while/lstm_cell_1/BiasAdd_3:output:0+lstm_1/while/lstm_cell_1/MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2 
lstm_1/while/lstm_cell_1/add_4Њ
"lstm_1/while/lstm_cell_1/Sigmoid_2Sigmoid"lstm_1/while/lstm_cell_1/add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2$
"lstm_1/while/lstm_cell_1/Sigmoid_2Ё
lstm_1/while/lstm_cell_1/Tanh_1Tanh"lstm_1/while/lstm_cell_1/add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2!
lstm_1/while/lstm_cell_1/Tanh_1Щ
lstm_1/while/lstm_cell_1/mul_10Mul&lstm_1/while/lstm_cell_1/Sigmoid_2:y:0#lstm_1/while/lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2!
lstm_1/while/lstm_cell_1/mul_10
1lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_1_while_placeholder_1lstm_1_while_placeholder#lstm_1/while/lstm_cell_1/mul_10:z:0*
_output_shapes
: *
element_dtype023
1lstm_1/while/TensorArrayV2Write/TensorListSetItemj
lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/while/add/y
lstm_1/while/addAddV2lstm_1_while_placeholderlstm_1/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_1/while/addn
lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/while/add_1/y
lstm_1/while/add_1AddV2&lstm_1_while_lstm_1_while_loop_counterlstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_1/while/add_1
lstm_1/while/IdentityIdentitylstm_1/while/add_1:z:0(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity
lstm_1/while/Identity_1Identity,lstm_1_while_lstm_1_while_maximum_iterations(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_1
lstm_1/while/Identity_2Identitylstm_1/while/add:z:0(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_2В
lstm_1/while/Identity_3IdentityAlstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_3І
lstm_1/while/Identity_4Identity#lstm_1/while/lstm_cell_1/mul_10:z:0(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/while/Identity_4Ѕ
lstm_1/while/Identity_5Identity"lstm_1/while/lstm_cell_1/add_3:z:0(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/while/Identity_5"7
lstm_1_while_identitylstm_1/while/Identity:output:0";
lstm_1_while_identity_1 lstm_1/while/Identity_1:output:0";
lstm_1_while_identity_2 lstm_1/while/Identity_2:output:0";
lstm_1_while_identity_3 lstm_1/while/Identity_3:output:0";
lstm_1_while_identity_4 lstm_1/while/Identity_4:output:0";
lstm_1_while_identity_5 lstm_1/while/Identity_5:output:0"L
#lstm_1_while_lstm_1_strided_slice_1%lstm_1_while_lstm_1_strided_slice_1_0"f
0lstm_1_while_lstm_cell_1_readvariableop_resource2lstm_1_while_lstm_cell_1_readvariableop_resource_0"v
8lstm_1_while_lstm_cell_1_split_1_readvariableop_resource:lstm_1_while_lstm_cell_1_split_1_readvariableop_resource_0"r
6lstm_1_while_lstm_cell_1_split_readvariableop_resource8lstm_1_while_lstm_cell_1_split_readvariableop_resource_0"Ф
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensoralstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :џџџџџџџџџФ:џџџџџџџџџФ: : :::2R
'lstm_1/while/lstm_cell_1/ReadVariableOp'lstm_1/while/lstm_cell_1/ReadVariableOp2V
)lstm_1/while/lstm_cell_1/ReadVariableOp_1)lstm_1/while/lstm_cell_1/ReadVariableOp_12V
)lstm_1/while/lstm_cell_1/ReadVariableOp_2)lstm_1/while/lstm_cell_1/ReadVariableOp_22V
)lstm_1/while/lstm_cell_1/ReadVariableOp_3)lstm_1/while/lstm_cell_1/ReadVariableOp_32^
-lstm_1/while/lstm_cell_1/split/ReadVariableOp-lstm_1/while/lstm_cell_1/split/ReadVariableOp2b
/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџФ:.*
(
_output_shapes
:џџџџџџџџџФ:

_output_shapes
: :

_output_shapes
: 


&__inference_lstm_1_layer_call_fn_50861

inputs
unknown
	unknown_0
	unknown_1
identityЂStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџФ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_485532
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџ+:::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџ+
 
_user_specified_nameinputs
Ю
ћ
G__inference_sequential_1_layer_call_and_return_conditional_losses_48611
embedding_1_input
embedding_1_47875
lstm_1_48576
lstm_1_48578
lstm_1_48580
dense_1_48605
dense_1_48607
identityЂdense_1/StatefulPartitionedCallЂ#embedding_1/StatefulPartitionedCallЂlstm_1/StatefulPartitionedCallЂ+spatial_dropout1d_1/StatefulPartitionedCall
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallembedding_1_inputembedding_1_47875*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ+*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_478662%
#embedding_1/StatefulPartitionedCallЗ
+spatial_dropout1d_1/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ+* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_478992-
+spatial_dropout1d_1/StatefulPartitionedCallЦ
lstm_1/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout1d_1/StatefulPartitionedCall:output:0lstm_1_48576lstm_1_48578lstm_1_48580*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџФ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_482982 
lstm_1/StatefulPartitionedCall­
dense_1/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0dense_1_48605dense_1_48607*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_485942!
dense_1/StatefulPartitionedCall
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall,^spatial_dropout1d_1/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ+::::::2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2Z
+spatial_dropout1d_1/StatefulPartitionedCall+spatial_dropout1d_1/StatefulPartitionedCall:Z V
'
_output_shapes
:џџџџџџџџџ+
+
_user_specified_nameembedding_1_input
вD
г
A__inference_lstm_1_layer_call_and_return_conditional_losses_47843

inputs
lstm_cell_1_47761
lstm_cell_1_47763
lstm_cell_1_47765
identityЂ#lstm_cell_1/StatefulPartitionedCallЂwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ф2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ф2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ф2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ф2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2§
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2
#lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_1_47761lstm_cell_1_47763lstm_cell_1_47765*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџФ:џџџџџџџџџФ:џџџџџџџџџФ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_473482%
#lstm_cell_1/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџФ   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_1_47761lstm_cell_1_47763lstm_cell_1_47765*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџФ:џџџџџџџџџФ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_47774*
condR
while_cond_47773*M
output_shapes<
:: : : : :џџџџџџџџџФ:џџџџџџџџџФ: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџФ   22
0TensorArrayV2Stack/TensorListStack/element_shapeђ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџФ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџФ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЏ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџФ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_1/StatefulPartitionedCall^while*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:џџџџџџџџџџџџџџџџџџ:::2J
#lstm_cell_1/StatefulPartitionedCall#lstm_cell_1/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
е
Т
G__inference_sequential_1_layer_call_and_return_conditional_losses_48691

inputs
embedding_1_48674
lstm_1_48678
lstm_1_48680
lstm_1_48682
dense_1_48685
dense_1_48687
identityЂdense_1/StatefulPartitionedCallЂ#embedding_1/StatefulPartitionedCallЂlstm_1/StatefulPartitionedCall
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_1_48674*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ+*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_478662%
#embedding_1/StatefulPartitionedCall
#spatial_dropout1d_1/PartitionedCallPartitionedCall,embedding_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ+* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_479042%
#spatial_dropout1d_1/PartitionedCallО
lstm_1/StatefulPartitionedCallStatefulPartitionedCall,spatial_dropout1d_1/PartitionedCall:output:0lstm_1_48678lstm_1_48680lstm_1_48682*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџФ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_485532 
lstm_1/StatefulPartitionedCall­
dense_1/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0dense_1_48685dense_1_48687*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_485942!
dense_1/StatefulPartitionedCallх
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ+::::::2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ+
 
_user_specified_nameinputs
і$

while_body_47774
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_1_47798_0
while_lstm_cell_1_47800_0
while_lstm_cell_1_47802_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_1_47798
while_lstm_cell_1_47800
while_lstm_cell_1_47802Ђ)while/lstm_cell_1/StatefulPartitionedCallУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeд
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemк
)while/lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_1_47798_0while_lstm_cell_1_47800_0while_lstm_cell_1_47802_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџФ:џџџџџџџџџФ:џџџџџџџџџФ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_473482+
)while/lstm_cell_1/StatefulPartitionedCallі
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2Й
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3У
while/Identity_4Identity2while/lstm_cell_1/StatefulPartitionedCall:output:1*^while/lstm_cell_1/StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/Identity_4У
while/Identity_5Identity2while/lstm_cell_1/StatefulPartitionedCall:output:2*^while/lstm_cell_1/StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_1_47798while_lstm_cell_1_47798_0"4
while_lstm_cell_1_47800while_lstm_cell_1_47800_0"4
while_lstm_cell_1_47802while_lstm_cell_1_47802_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :џџџџџџџџџФ:џџџџџџџџџФ: : :::2V
)while/lstm_cell_1/StatefulPartitionedCall)while/lstm_cell_1/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџФ:.*
(
_output_shapes
:џџџџџџџџџФ:

_output_shapes
: :

_output_shapes
: 
о	

F__inference_embedding_1_layer_call_and_return_conditional_losses_49460

inputs
embedding_lookup_49454
identityЂembedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџ+2
Castќ
embedding_lookupResourceGatherembedding_lookup_49454Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/49454*,
_output_shapes
:џџџџџџџџџ+*
dtype02
embedding_lookupэ
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/49454*,
_output_shapes
:џџџџџџџџџ+2
embedding_lookup/IdentityЁ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:џџџџџџџџџ+2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*,
_output_shapes
:џџџџџџџџџ+2

Identity"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ+:2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:џџџџџџџџџ+
 
_user_specified_nameinputs


&__inference_lstm_1_layer_call_fn_50190
inputs_0
unknown
	unknown_0
	unknown_1
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџФ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_477112
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:џџџџџџџџџџџџџџџџџџ:::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
у
Н
,__inference_sequential_1_layer_call_fn_49450

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityЂStatefulPartitionedCallЋ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_486912
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ+::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ+
 
_user_specified_nameinputs
х
l
N__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_47904

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:џџџџџџџџџ+2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:џџџџџџџџџ+2

Identity_1"!

identity_1Identity_1:output:0*+
_input_shapes
:џџџџџџџџџ+:T P
,
_output_shapes
:џџџџџџџџџ+
 
_user_specified_nameinputs
г
m
N__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_47899

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:џџџџџџџџџ+2
dropout/Mul
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1Э
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shapeа
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2
dropout/GreaterEqual/yЫ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:џџџџџџџџџ+2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:џџџџџџџџџ+2

Identity"
identityIdentity:output:0*+
_input_shapes
:џџџџџџџџџ+:T P
,
_output_shapes
:џџџџџџџџџ+
 
_user_specified_nameinputs
Њ
О
while_cond_47641
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_47641___redundant_placeholder03
/while_while_cond_47641___redundant_placeholder13
/while_while_cond_47641___redundant_placeholder23
/while_while_cond_47641___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :џџџџџџџџџФ:џџџџџџџџџФ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџФ:.*
(
_output_shapes
:џџџџџџџџџФ:

_output_shapes
: :

_output_shapes
:
Ј
Х
while_body_50043
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
1while_lstm_cell_1_split_readvariableop_resource_07
3while_lstm_cell_1_split_1_readvariableop_resource_0/
+while_lstm_cell_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
/while_lstm_cell_1_split_readvariableop_resource5
1while_lstm_cell_1_split_1_readvariableop_resource-
)while_lstm_cell_1_readvariableop_resourceЂ while/lstm_cell_1/ReadVariableOpЂ"while/lstm_cell_1/ReadVariableOp_1Ђ"while/lstm_cell_1/ReadVariableOp_2Ђ"while/lstm_cell_1/ReadVariableOp_3Ђ&while/lstm_cell_1/split/ReadVariableOpЂ(while/lstm_cell_1/split_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeд
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemІ
!while/lstm_cell_1/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/ones_like/Shape
!while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_1/ones_like/ConstЭ
while/lstm_cell_1/ones_likeFill*while/lstm_cell_1/ones_like/Shape:output:0*while/lstm_cell_1/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_1/ones_like
#while/lstm_cell_1/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_1/ones_like_1/Shape
#while/lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_1/ones_like_1/Constе
while/lstm_cell_1/ones_like_1Fill,while/lstm_cell_1/ones_like_1/Shape:output:0,while/lstm_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/ones_like_1Р
while/lstm_cell_1/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_1/mulФ
while/lstm_cell_1/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_1/mul_1Ф
while/lstm_cell_1/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_1/mul_2Ф
while/lstm_cell_1/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_1/mul_3t
while/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_1/Const
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_1/split/split_dimФ
&while/lstm_cell_1/split/ReadVariableOpReadVariableOp1while_lstm_cell_1_split_readvariableop_resource_0* 
_output_shapes
:
*
dtype02(
&while/lstm_cell_1/split/ReadVariableOpї
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0.while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ф:
Ф:
Ф:
Ф*
	num_split2
while/lstm_cell_1/splitЎ
while/lstm_cell_1/MatMulMatMulwhile/lstm_cell_1/mul:z:0 while/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMulД
while/lstm_cell_1/MatMul_1MatMulwhile/lstm_cell_1/mul_1:z:0 while/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_1Д
while/lstm_cell_1/MatMul_2MatMulwhile/lstm_cell_1/mul_2:z:0 while/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_2Д
while/lstm_cell_1/MatMul_3MatMulwhile/lstm_cell_1/mul_3:z:0 while/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_3x
while/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_1/Const_1
#while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_1/split_1/split_dimХ
(while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02*
(while/lstm_cell_1/split_1/ReadVariableOpы
while/lstm_cell_1/split_1Split,while/lstm_cell_1/split_1/split_dim:output:00while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ф:Ф:Ф:Ф*
	num_split2
while/lstm_cell_1/split_1М
while/lstm_cell_1/BiasAddBiasAdd"while/lstm_cell_1/MatMul:product:0"while/lstm_cell_1/split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/BiasAddТ
while/lstm_cell_1/BiasAdd_1BiasAdd$while/lstm_cell_1/MatMul_1:product:0"while/lstm_cell_1/split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/BiasAdd_1Т
while/lstm_cell_1/BiasAdd_2BiasAdd$while/lstm_cell_1/MatMul_2:product:0"while/lstm_cell_1/split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/BiasAdd_2Т
while/lstm_cell_1/BiasAdd_3BiasAdd$while/lstm_cell_1/MatMul_3:product:0"while/lstm_cell_1/split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/BiasAdd_3Љ
while/lstm_cell_1/mul_4Mulwhile_placeholder_2&while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_4Љ
while/lstm_cell_1/mul_5Mulwhile_placeholder_2&while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_5Љ
while/lstm_cell_1/mul_6Mulwhile_placeholder_2&while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_6Љ
while/lstm_cell_1/mul_7Mulwhile_placeholder_2&while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_7В
 while/lstm_cell_1/ReadVariableOpReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
Ф*
dtype02"
 while/lstm_cell_1/ReadVariableOp
%while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_1/strided_slice/stackЃ
'while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ф   2)
'while/lstm_cell_1/strided_slice/stack_1Ѓ
'while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_1/strided_slice/stack_2ъ
while/lstm_cell_1/strided_sliceStridedSlice(while/lstm_cell_1/ReadVariableOp:value:0.while/lstm_cell_1/strided_slice/stack:output:00while/lstm_cell_1/strided_slice/stack_1:output:00while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2!
while/lstm_cell_1/strided_sliceМ
while/lstm_cell_1/MatMul_4MatMulwhile/lstm_cell_1/mul_4:z:0(while/lstm_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_4Д
while/lstm_cell_1/addAddV2"while/lstm_cell_1/BiasAdd:output:0$while/lstm_cell_1/MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/add
while/lstm_cell_1/SigmoidSigmoidwhile/lstm_cell_1/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/SigmoidЖ
"while/lstm_cell_1/ReadVariableOp_1ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
Ф*
dtype02$
"while/lstm_cell_1/ReadVariableOp_1Ѓ
'while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ф   2)
'while/lstm_cell_1/strided_slice_1/stackЇ
)while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_1/stack_1Ї
)while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_1/stack_2і
!while/lstm_cell_1/strided_slice_1StridedSlice*while/lstm_cell_1/ReadVariableOp_1:value:00while/lstm_cell_1/strided_slice_1/stack:output:02while/lstm_cell_1/strided_slice_1/stack_1:output:02while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_1О
while/lstm_cell_1/MatMul_5MatMulwhile/lstm_cell_1/mul_5:z:0*while/lstm_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_5К
while/lstm_cell_1/add_1AddV2$while/lstm_cell_1/BiasAdd_1:output:0$while/lstm_cell_1/MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/add_1
while/lstm_cell_1/Sigmoid_1Sigmoidwhile/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/Sigmoid_1Ђ
while/lstm_cell_1/mul_8Mulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_8Ж
"while/lstm_cell_1/ReadVariableOp_2ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
Ф*
dtype02$
"while/lstm_cell_1/ReadVariableOp_2Ѓ
'while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_1/strided_slice_2/stackЇ
)while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2+
)while/lstm_cell_1/strided_slice_2/stack_1Ї
)while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_2/stack_2і
!while/lstm_cell_1/strided_slice_2StridedSlice*while/lstm_cell_1/ReadVariableOp_2:value:00while/lstm_cell_1/strided_slice_2/stack:output:02while/lstm_cell_1/strided_slice_2/stack_1:output:02while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_2О
while/lstm_cell_1/MatMul_6MatMulwhile/lstm_cell_1/mul_6:z:0*while/lstm_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_6К
while/lstm_cell_1/add_2AddV2$while/lstm_cell_1/BiasAdd_2:output:0$while/lstm_cell_1/MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/add_2
while/lstm_cell_1/TanhTanhwhile/lstm_cell_1/add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/TanhЇ
while/lstm_cell_1/mul_9Mulwhile/lstm_cell_1/Sigmoid:y:0while/lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_9Ј
while/lstm_cell_1/add_3AddV2while/lstm_cell_1/mul_8:z:0while/lstm_cell_1/mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/add_3Ж
"while/lstm_cell_1/ReadVariableOp_3ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
Ф*
dtype02$
"while/lstm_cell_1/ReadVariableOp_3Ѓ
'while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2)
'while/lstm_cell_1/strided_slice_3/stackЇ
)while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_1/strided_slice_3/stack_1Ї
)while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_3/stack_2і
!while/lstm_cell_1/strided_slice_3StridedSlice*while/lstm_cell_1/ReadVariableOp_3:value:00while/lstm_cell_1/strided_slice_3/stack:output:02while/lstm_cell_1/strided_slice_3/stack_1:output:02while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_3О
while/lstm_cell_1/MatMul_7MatMulwhile/lstm_cell_1/mul_7:z:0*while/lstm_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_7К
while/lstm_cell_1/add_4AddV2$while/lstm_cell_1/BiasAdd_3:output:0$while/lstm_cell_1/MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/add_4
while/lstm_cell_1/Sigmoid_2Sigmoidwhile/lstm_cell_1/add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/Sigmoid_2
while/lstm_cell_1/Tanh_1Tanhwhile/lstm_cell_1/add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/Tanh_1­
while/lstm_cell_1/mul_10Mulwhile/lstm_cell_1/Sigmoid_2:y:0while/lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_10р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ф
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityз
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Ц
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ѓ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3ч
while/Identity_4Identitywhile/lstm_cell_1/mul_10:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/Identity_4ц
while/Identity_5Identitywhile/lstm_cell_1/add_3:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_1_readvariableop_resource+while_lstm_cell_1_readvariableop_resource_0"h
1while_lstm_cell_1_split_1_readvariableop_resource3while_lstm_cell_1_split_1_readvariableop_resource_0"d
/while_lstm_cell_1_split_readvariableop_resource1while_lstm_cell_1_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :џџџџџџџџџФ:џџџџџџџџџФ: : :::2D
 while/lstm_cell_1/ReadVariableOp while/lstm_cell_1/ReadVariableOp2H
"while/lstm_cell_1/ReadVariableOp_1"while/lstm_cell_1/ReadVariableOp_12H
"while/lstm_cell_1/ReadVariableOp_2"while/lstm_cell_1/ReadVariableOp_22H
"while/lstm_cell_1/ReadVariableOp_3"while/lstm_cell_1/ReadVariableOp_32P
&while/lstm_cell_1/split/ReadVariableOp&while/lstm_cell_1/split/ReadVariableOp2T
(while/lstm_cell_1/split_1/ReadVariableOp(while/lstm_cell_1/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџФ:.*
(
_output_shapes
:џџџџџџџџџФ:

_output_shapes
: :

_output_shapes
: 
Њ
О
while_cond_49723
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_49723___redundant_placeholder03
/while_while_cond_49723___redundant_placeholder13
/while_while_cond_49723___redundant_placeholder23
/while_while_cond_49723___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :џџџџџџџџџФ:џџџџџџџџџФ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџФ:.*
(
_output_shapes
:џџџџџџџџџФ:

_output_shapes
: :

_output_shapes
:
Љ
l
N__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_47073

inputs

identity_1p
IdentityIdentityinputs*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity

Identity_1IdentityIdentity:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity_1"!

identity_1Identity_1:output:0*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
­
№
G__inference_sequential_1_layer_call_and_return_conditional_losses_48654

inputs
embedding_1_48637
lstm_1_48641
lstm_1_48643
lstm_1_48645
dense_1_48648
dense_1_48650
identityЂdense_1/StatefulPartitionedCallЂ#embedding_1/StatefulPartitionedCallЂlstm_1/StatefulPartitionedCallЂ+spatial_dropout1d_1/StatefulPartitionedCall
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_1_48637*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ+*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_478662%
#embedding_1/StatefulPartitionedCallЗ
+spatial_dropout1d_1/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ+* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_478992-
+spatial_dropout1d_1/StatefulPartitionedCallЦ
lstm_1/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout1d_1/StatefulPartitionedCall:output:0lstm_1_48641lstm_1_48643lstm_1_48645*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџФ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_482982 
lstm_1/StatefulPartitionedCall­
dense_1/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0dense_1_48648dense_1_48650*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_485942!
dense_1/StatefulPartitionedCall
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall,^spatial_dropout1d_1/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ+::::::2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2Z
+spatial_dropout1d_1/StatefulPartitionedCall+spatial_dropout1d_1/StatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ+
 
_user_specified_nameinputs
ј
Г
A__inference_lstm_1_layer_call_and_return_conditional_losses_48298

inputs-
)lstm_cell_1_split_readvariableop_resource/
+lstm_cell_1_split_1_readvariableop_resource'
#lstm_cell_1_readvariableop_resource
identityЂlstm_cell_1/ReadVariableOpЂlstm_cell_1/ReadVariableOp_1Ђlstm_cell_1/ReadVariableOp_2Ђlstm_cell_1/ReadVariableOp_3Ђ lstm_cell_1/split/ReadVariableOpЂ"lstm_cell_1/split_1/ReadVariableOpЂwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ф2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ф2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ф2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ф2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:+џџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2§
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2
lstm_cell_1/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_1/ones_like/Shape
lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_1/ones_like/ConstЕ
lstm_cell_1/ones_likeFill$lstm_cell_1/ones_like/Shape:output:0$lstm_cell_1/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/ones_like{
lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_1/dropout/ConstА
lstm_cell_1/dropout/MulMullstm_cell_1/ones_like:output:0"lstm_cell_1/dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/dropout/Mul
lstm_cell_1/dropout/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout/Shapeј
0lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_1/dropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2ЌъК22
0lstm_cell_1/dropout/random_uniform/RandomUniform
"lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2$
"lstm_cell_1/dropout/GreaterEqual/yя
 lstm_cell_1/dropout/GreaterEqualGreaterEqual9lstm_cell_1/dropout/random_uniform/RandomUniform:output:0+lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2"
 lstm_cell_1/dropout/GreaterEqualЄ
lstm_cell_1/dropout/CastCast$lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/dropout/CastЋ
lstm_cell_1/dropout/Mul_1Mullstm_cell_1/dropout/Mul:z:0lstm_cell_1/dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/dropout/Mul_1
lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_1/dropout_1/ConstЖ
lstm_cell_1/dropout_1/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/dropout_1/Mul
lstm_cell_1/dropout_1/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_1/Shapeў
2lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_1/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2ІЇ24
2lstm_cell_1/dropout_1/random_uniform/RandomUniform
$lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_1/dropout_1/GreaterEqual/yї
"lstm_cell_1/dropout_1/GreaterEqualGreaterEqual;lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2$
"lstm_cell_1/dropout_1/GreaterEqualЊ
lstm_cell_1/dropout_1/CastCast&lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/dropout_1/CastГ
lstm_cell_1/dropout_1/Mul_1Mullstm_cell_1/dropout_1/Mul:z:0lstm_cell_1/dropout_1/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/dropout_1/Mul_1
lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_1/dropout_2/ConstЖ
lstm_cell_1/dropout_2/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_2/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/dropout_2/Mul
lstm_cell_1/dropout_2/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_2/Shape§
2lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_2/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2ДТ124
2lstm_cell_1/dropout_2/random_uniform/RandomUniform
$lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_1/dropout_2/GreaterEqual/yї
"lstm_cell_1/dropout_2/GreaterEqualGreaterEqual;lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2$
"lstm_cell_1/dropout_2/GreaterEqualЊ
lstm_cell_1/dropout_2/CastCast&lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/dropout_2/CastГ
lstm_cell_1/dropout_2/Mul_1Mullstm_cell_1/dropout_2/Mul:z:0lstm_cell_1/dropout_2/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/dropout_2/Mul_1
lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_1/dropout_3/ConstЖ
lstm_cell_1/dropout_3/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_3/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/dropout_3/Mul
lstm_cell_1/dropout_3/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_3/Shapeў
2lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_3/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2ЩфЭ24
2lstm_cell_1/dropout_3/random_uniform/RandomUniform
$lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_1/dropout_3/GreaterEqual/yї
"lstm_cell_1/dropout_3/GreaterEqualGreaterEqual;lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2$
"lstm_cell_1/dropout_3/GreaterEqualЊ
lstm_cell_1/dropout_3/CastCast&lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/dropout_3/CastГ
lstm_cell_1/dropout_3/Mul_1Mullstm_cell_1/dropout_3/Mul:z:0lstm_cell_1/dropout_3/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/dropout_3/Mul_1|
lstm_cell_1/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_1/ones_like_1/Shape
lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_1/ones_like_1/ConstН
lstm_cell_1/ones_like_1Fill&lstm_cell_1/ones_like_1/Shape:output:0&lstm_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/ones_like_1
lstm_cell_1/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_1/dropout_4/ConstИ
lstm_cell_1/dropout_4/MulMul lstm_cell_1/ones_like_1:output:0$lstm_cell_1/dropout_4/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/dropout_4/Mul
lstm_cell_1/dropout_4/ShapeShape lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_4/Shapeў
2lstm_cell_1/dropout_4/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_4/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2ЩСУ24
2lstm_cell_1/dropout_4/random_uniform/RandomUniform
$lstm_cell_1/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_1/dropout_4/GreaterEqual/yї
"lstm_cell_1/dropout_4/GreaterEqualGreaterEqual;lstm_cell_1/dropout_4/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2$
"lstm_cell_1/dropout_4/GreaterEqualЊ
lstm_cell_1/dropout_4/CastCast&lstm_cell_1/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/dropout_4/CastГ
lstm_cell_1/dropout_4/Mul_1Mullstm_cell_1/dropout_4/Mul:z:0lstm_cell_1/dropout_4/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/dropout_4/Mul_1
lstm_cell_1/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_1/dropout_5/ConstИ
lstm_cell_1/dropout_5/MulMul lstm_cell_1/ones_like_1:output:0$lstm_cell_1/dropout_5/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/dropout_5/Mul
lstm_cell_1/dropout_5/ShapeShape lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_5/Shapeў
2lstm_cell_1/dropout_5/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_5/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2§їЏ24
2lstm_cell_1/dropout_5/random_uniform/RandomUniform
$lstm_cell_1/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_1/dropout_5/GreaterEqual/yї
"lstm_cell_1/dropout_5/GreaterEqualGreaterEqual;lstm_cell_1/dropout_5/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2$
"lstm_cell_1/dropout_5/GreaterEqualЊ
lstm_cell_1/dropout_5/CastCast&lstm_cell_1/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/dropout_5/CastГ
lstm_cell_1/dropout_5/Mul_1Mullstm_cell_1/dropout_5/Mul:z:0lstm_cell_1/dropout_5/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/dropout_5/Mul_1
lstm_cell_1/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_1/dropout_6/ConstИ
lstm_cell_1/dropout_6/MulMul lstm_cell_1/ones_like_1:output:0$lstm_cell_1/dropout_6/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/dropout_6/Mul
lstm_cell_1/dropout_6/ShapeShape lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_6/Shapeў
2lstm_cell_1/dropout_6/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_6/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2ёы24
2lstm_cell_1/dropout_6/random_uniform/RandomUniform
$lstm_cell_1/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_1/dropout_6/GreaterEqual/yї
"lstm_cell_1/dropout_6/GreaterEqualGreaterEqual;lstm_cell_1/dropout_6/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2$
"lstm_cell_1/dropout_6/GreaterEqualЊ
lstm_cell_1/dropout_6/CastCast&lstm_cell_1/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/dropout_6/CastГ
lstm_cell_1/dropout_6/Mul_1Mullstm_cell_1/dropout_6/Mul:z:0lstm_cell_1/dropout_6/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/dropout_6/Mul_1
lstm_cell_1/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_1/dropout_7/ConstИ
lstm_cell_1/dropout_7/MulMul lstm_cell_1/ones_like_1:output:0$lstm_cell_1/dropout_7/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/dropout_7/Mul
lstm_cell_1/dropout_7/ShapeShape lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_7/Shape§
2lstm_cell_1/dropout_7/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_7/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2Ђ24
2lstm_cell_1/dropout_7/random_uniform/RandomUniform
$lstm_cell_1/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_1/dropout_7/GreaterEqual/yї
"lstm_cell_1/dropout_7/GreaterEqualGreaterEqual;lstm_cell_1/dropout_7/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2$
"lstm_cell_1/dropout_7/GreaterEqualЊ
lstm_cell_1/dropout_7/CastCast&lstm_cell_1/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/dropout_7/CastГ
lstm_cell_1/dropout_7/Mul_1Mullstm_cell_1/dropout_7/Mul:z:0lstm_cell_1/dropout_7/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/dropout_7/Mul_1
lstm_cell_1/mulMulstrided_slice_2:output:0lstm_cell_1/dropout/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/mul
lstm_cell_1/mul_1Mulstrided_slice_2:output:0lstm_cell_1/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/mul_1
lstm_cell_1/mul_2Mulstrided_slice_2:output:0lstm_cell_1/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/mul_2
lstm_cell_1/mul_3Mulstrided_slice_2:output:0lstm_cell_1/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/mul_3h
lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/Const|
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/split/split_dimА
 lstm_cell_1/split/ReadVariableOpReadVariableOp)lstm_cell_1_split_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 lstm_cell_1/split/ReadVariableOpп
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0(lstm_cell_1/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ф:
Ф:
Ф:
Ф*
	num_split2
lstm_cell_1/split
lstm_cell_1/MatMulMatMullstm_cell_1/mul:z:0lstm_cell_1/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul
lstm_cell_1/MatMul_1MatMullstm_cell_1/mul_1:z:0lstm_cell_1/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_1
lstm_cell_1/MatMul_2MatMullstm_cell_1/mul_2:z:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_2
lstm_cell_1/MatMul_3MatMullstm_cell_1/mul_3:z:0lstm_cell_1/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_3l
lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/Const_1
lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_1/split_1/split_dimБ
"lstm_cell_1/split_1/ReadVariableOpReadVariableOp+lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02$
"lstm_cell_1/split_1/ReadVariableOpг
lstm_cell_1/split_1Split&lstm_cell_1/split_1/split_dim:output:0*lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ф:Ф:Ф:Ф*
	num_split2
lstm_cell_1/split_1Є
lstm_cell_1/BiasAddBiasAddlstm_cell_1/MatMul:product:0lstm_cell_1/split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/BiasAddЊ
lstm_cell_1/BiasAdd_1BiasAddlstm_cell_1/MatMul_1:product:0lstm_cell_1/split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/BiasAdd_1Њ
lstm_cell_1/BiasAdd_2BiasAddlstm_cell_1/MatMul_2:product:0lstm_cell_1/split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/BiasAdd_2Њ
lstm_cell_1/BiasAdd_3BiasAddlstm_cell_1/MatMul_3:product:0lstm_cell_1/split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/BiasAdd_3
lstm_cell_1/mul_4Mulzeros:output:0lstm_cell_1/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_4
lstm_cell_1/mul_5Mulzeros:output:0lstm_cell_1/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_5
lstm_cell_1/mul_6Mulzeros:output:0lstm_cell_1/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_6
lstm_cell_1/mul_7Mulzeros:output:0lstm_cell_1/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_7
lstm_cell_1/ReadVariableOpReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
Ф*
dtype02
lstm_cell_1/ReadVariableOp
lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_1/strided_slice/stack
!lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ф   2#
!lstm_cell_1/strided_slice/stack_1
!lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_1/strided_slice/stack_2Ц
lstm_cell_1/strided_sliceStridedSlice"lstm_cell_1/ReadVariableOp:value:0(lstm_cell_1/strided_slice/stack:output:0*lstm_cell_1/strided_slice/stack_1:output:0*lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
lstm_cell_1/strided_sliceЄ
lstm_cell_1/MatMul_4MatMullstm_cell_1/mul_4:z:0"lstm_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_4
lstm_cell_1/addAddV2lstm_cell_1/BiasAdd:output:0lstm_cell_1/MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/add}
lstm_cell_1/SigmoidSigmoidlstm_cell_1/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/SigmoidЂ
lstm_cell_1/ReadVariableOp_1ReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
Ф*
dtype02
lstm_cell_1/ReadVariableOp_1
!lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ф   2#
!lstm_cell_1/strided_slice_1/stack
#lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_1/stack_1
#lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_1/stack_2в
lstm_cell_1/strided_slice_1StridedSlice$lstm_cell_1/ReadVariableOp_1:value:0*lstm_cell_1/strided_slice_1/stack:output:0,lstm_cell_1/strided_slice_1/stack_1:output:0,lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_1І
lstm_cell_1/MatMul_5MatMullstm_cell_1/mul_5:z:0$lstm_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_5Ђ
lstm_cell_1/add_1AddV2lstm_cell_1/BiasAdd_1:output:0lstm_cell_1/MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/add_1
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/Sigmoid_1
lstm_cell_1/mul_8Mullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_8Ђ
lstm_cell_1/ReadVariableOp_2ReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
Ф*
dtype02
lstm_cell_1/ReadVariableOp_2
!lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_1/strided_slice_2/stack
#lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2%
#lstm_cell_1/strided_slice_2/stack_1
#lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_2/stack_2в
lstm_cell_1/strided_slice_2StridedSlice$lstm_cell_1/ReadVariableOp_2:value:0*lstm_cell_1/strided_slice_2/stack:output:0,lstm_cell_1/strided_slice_2/stack_1:output:0,lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_2І
lstm_cell_1/MatMul_6MatMullstm_cell_1/mul_6:z:0$lstm_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_6Ђ
lstm_cell_1/add_2AddV2lstm_cell_1/BiasAdd_2:output:0lstm_cell_1/MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/add_2v
lstm_cell_1/TanhTanhlstm_cell_1/add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/Tanh
lstm_cell_1/mul_9Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_9
lstm_cell_1/add_3AddV2lstm_cell_1/mul_8:z:0lstm_cell_1/mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/add_3Ђ
lstm_cell_1/ReadVariableOp_3ReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
Ф*
dtype02
lstm_cell_1/ReadVariableOp_3
!lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2#
!lstm_cell_1/strided_slice_3/stack
#lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_1/strided_slice_3/stack_1
#lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_3/stack_2в
lstm_cell_1/strided_slice_3StridedSlice$lstm_cell_1/ReadVariableOp_3:value:0*lstm_cell_1/strided_slice_3/stack:output:0,lstm_cell_1/strided_slice_3/stack_1:output:0,lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_3І
lstm_cell_1/MatMul_7MatMullstm_cell_1/mul_7:z:0$lstm_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_7Ђ
lstm_cell_1/add_4AddV2lstm_cell_1/BiasAdd_3:output:0lstm_cell_1/MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/add_4
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/Sigmoid_2z
lstm_cell_1/Tanh_1Tanhlstm_cell_1/add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/Tanh_1
lstm_cell_1/mul_10Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_10
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџФ   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterу
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_1_split_readvariableop_resource+lstm_cell_1_split_1_readvariableop_resource#lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџФ:џџџџџџџџџФ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_48098*
condR
while_cond_48097*M
output_shapes<
:: : : : :џџџџџџџџџФ:џџџџџџџџџФ: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџФ   22
0TensorArrayV2Stack/TensorListStack/element_shapeщ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:+џџџџџџџџџФ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџФ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permІ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџ+Ф2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeЗ
IdentityIdentitystrided_slice_3:output:0^lstm_cell_1/ReadVariableOp^lstm_cell_1/ReadVariableOp_1^lstm_cell_1/ReadVariableOp_2^lstm_cell_1/ReadVariableOp_3!^lstm_cell_1/split/ReadVariableOp#^lstm_cell_1/split_1/ReadVariableOp^while*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџ+:::28
lstm_cell_1/ReadVariableOplstm_cell_1/ReadVariableOp2<
lstm_cell_1/ReadVariableOp_1lstm_cell_1/ReadVariableOp_12<
lstm_cell_1/ReadVariableOp_2lstm_cell_1/ReadVariableOp_22<
lstm_cell_1/ReadVariableOp_3lstm_cell_1/ReadVariableOp_32D
 lstm_cell_1/split/ReadVariableOp lstm_cell_1/split/ReadVariableOp2H
"lstm_cell_1/split_1/ReadVariableOp"lstm_cell_1/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџ+
 
_user_specified_nameinputs
ї	
л
B__inference_dense_1_layer_call_and_return_conditional_losses_50872

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Ф*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџФ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџФ
 
_user_specified_nameinputs
К
O
3__inference_spatial_dropout1d_1_layer_call_fn_49504

inputs
identityб
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ+* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_479042
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:џџџџџџџџџ+2

Identity"
identityIdentity:output:0*+
_input_shapes
:џџџџџџџџџ+:T P
,
_output_shapes
:џџџџџџџџџ+
 
_user_specified_nameinputs
Ј
Х
while_body_48417
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
1while_lstm_cell_1_split_readvariableop_resource_07
3while_lstm_cell_1_split_1_readvariableop_resource_0/
+while_lstm_cell_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
/while_lstm_cell_1_split_readvariableop_resource5
1while_lstm_cell_1_split_1_readvariableop_resource-
)while_lstm_cell_1_readvariableop_resourceЂ while/lstm_cell_1/ReadVariableOpЂ"while/lstm_cell_1/ReadVariableOp_1Ђ"while/lstm_cell_1/ReadVariableOp_2Ђ"while/lstm_cell_1/ReadVariableOp_3Ђ&while/lstm_cell_1/split/ReadVariableOpЂ(while/lstm_cell_1/split_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeд
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemІ
!while/lstm_cell_1/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/ones_like/Shape
!while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_1/ones_like/ConstЭ
while/lstm_cell_1/ones_likeFill*while/lstm_cell_1/ones_like/Shape:output:0*while/lstm_cell_1/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_1/ones_like
#while/lstm_cell_1/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_1/ones_like_1/Shape
#while/lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_1/ones_like_1/Constе
while/lstm_cell_1/ones_like_1Fill,while/lstm_cell_1/ones_like_1/Shape:output:0,while/lstm_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/ones_like_1Р
while/lstm_cell_1/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_1/mulФ
while/lstm_cell_1/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_1/mul_1Ф
while/lstm_cell_1/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_1/mul_2Ф
while/lstm_cell_1/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_1/mul_3t
while/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_1/Const
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_1/split/split_dimФ
&while/lstm_cell_1/split/ReadVariableOpReadVariableOp1while_lstm_cell_1_split_readvariableop_resource_0* 
_output_shapes
:
*
dtype02(
&while/lstm_cell_1/split/ReadVariableOpї
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0.while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ф:
Ф:
Ф:
Ф*
	num_split2
while/lstm_cell_1/splitЎ
while/lstm_cell_1/MatMulMatMulwhile/lstm_cell_1/mul:z:0 while/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMulД
while/lstm_cell_1/MatMul_1MatMulwhile/lstm_cell_1/mul_1:z:0 while/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_1Д
while/lstm_cell_1/MatMul_2MatMulwhile/lstm_cell_1/mul_2:z:0 while/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_2Д
while/lstm_cell_1/MatMul_3MatMulwhile/lstm_cell_1/mul_3:z:0 while/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_3x
while/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_1/Const_1
#while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_1/split_1/split_dimХ
(while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02*
(while/lstm_cell_1/split_1/ReadVariableOpы
while/lstm_cell_1/split_1Split,while/lstm_cell_1/split_1/split_dim:output:00while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ф:Ф:Ф:Ф*
	num_split2
while/lstm_cell_1/split_1М
while/lstm_cell_1/BiasAddBiasAdd"while/lstm_cell_1/MatMul:product:0"while/lstm_cell_1/split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/BiasAddТ
while/lstm_cell_1/BiasAdd_1BiasAdd$while/lstm_cell_1/MatMul_1:product:0"while/lstm_cell_1/split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/BiasAdd_1Т
while/lstm_cell_1/BiasAdd_2BiasAdd$while/lstm_cell_1/MatMul_2:product:0"while/lstm_cell_1/split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/BiasAdd_2Т
while/lstm_cell_1/BiasAdd_3BiasAdd$while/lstm_cell_1/MatMul_3:product:0"while/lstm_cell_1/split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/BiasAdd_3Љ
while/lstm_cell_1/mul_4Mulwhile_placeholder_2&while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_4Љ
while/lstm_cell_1/mul_5Mulwhile_placeholder_2&while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_5Љ
while/lstm_cell_1/mul_6Mulwhile_placeholder_2&while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_6Љ
while/lstm_cell_1/mul_7Mulwhile_placeholder_2&while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_7В
 while/lstm_cell_1/ReadVariableOpReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
Ф*
dtype02"
 while/lstm_cell_1/ReadVariableOp
%while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_1/strided_slice/stackЃ
'while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ф   2)
'while/lstm_cell_1/strided_slice/stack_1Ѓ
'while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_1/strided_slice/stack_2ъ
while/lstm_cell_1/strided_sliceStridedSlice(while/lstm_cell_1/ReadVariableOp:value:0.while/lstm_cell_1/strided_slice/stack:output:00while/lstm_cell_1/strided_slice/stack_1:output:00while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2!
while/lstm_cell_1/strided_sliceМ
while/lstm_cell_1/MatMul_4MatMulwhile/lstm_cell_1/mul_4:z:0(while/lstm_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_4Д
while/lstm_cell_1/addAddV2"while/lstm_cell_1/BiasAdd:output:0$while/lstm_cell_1/MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/add
while/lstm_cell_1/SigmoidSigmoidwhile/lstm_cell_1/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/SigmoidЖ
"while/lstm_cell_1/ReadVariableOp_1ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
Ф*
dtype02$
"while/lstm_cell_1/ReadVariableOp_1Ѓ
'while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ф   2)
'while/lstm_cell_1/strided_slice_1/stackЇ
)while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_1/stack_1Ї
)while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_1/stack_2і
!while/lstm_cell_1/strided_slice_1StridedSlice*while/lstm_cell_1/ReadVariableOp_1:value:00while/lstm_cell_1/strided_slice_1/stack:output:02while/lstm_cell_1/strided_slice_1/stack_1:output:02while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_1О
while/lstm_cell_1/MatMul_5MatMulwhile/lstm_cell_1/mul_5:z:0*while/lstm_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_5К
while/lstm_cell_1/add_1AddV2$while/lstm_cell_1/BiasAdd_1:output:0$while/lstm_cell_1/MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/add_1
while/lstm_cell_1/Sigmoid_1Sigmoidwhile/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/Sigmoid_1Ђ
while/lstm_cell_1/mul_8Mulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_8Ж
"while/lstm_cell_1/ReadVariableOp_2ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
Ф*
dtype02$
"while/lstm_cell_1/ReadVariableOp_2Ѓ
'while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_1/strided_slice_2/stackЇ
)while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2+
)while/lstm_cell_1/strided_slice_2/stack_1Ї
)while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_2/stack_2і
!while/lstm_cell_1/strided_slice_2StridedSlice*while/lstm_cell_1/ReadVariableOp_2:value:00while/lstm_cell_1/strided_slice_2/stack:output:02while/lstm_cell_1/strided_slice_2/stack_1:output:02while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_2О
while/lstm_cell_1/MatMul_6MatMulwhile/lstm_cell_1/mul_6:z:0*while/lstm_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_6К
while/lstm_cell_1/add_2AddV2$while/lstm_cell_1/BiasAdd_2:output:0$while/lstm_cell_1/MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/add_2
while/lstm_cell_1/TanhTanhwhile/lstm_cell_1/add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/TanhЇ
while/lstm_cell_1/mul_9Mulwhile/lstm_cell_1/Sigmoid:y:0while/lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_9Ј
while/lstm_cell_1/add_3AddV2while/lstm_cell_1/mul_8:z:0while/lstm_cell_1/mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/add_3Ж
"while/lstm_cell_1/ReadVariableOp_3ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
Ф*
dtype02$
"while/lstm_cell_1/ReadVariableOp_3Ѓ
'while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2)
'while/lstm_cell_1/strided_slice_3/stackЇ
)while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_1/strided_slice_3/stack_1Ї
)while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_3/stack_2і
!while/lstm_cell_1/strided_slice_3StridedSlice*while/lstm_cell_1/ReadVariableOp_3:value:00while/lstm_cell_1/strided_slice_3/stack:output:02while/lstm_cell_1/strided_slice_3/stack_1:output:02while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_3О
while/lstm_cell_1/MatMul_7MatMulwhile/lstm_cell_1/mul_7:z:0*while/lstm_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_7К
while/lstm_cell_1/add_4AddV2$while/lstm_cell_1/BiasAdd_3:output:0$while/lstm_cell_1/MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/add_4
while/lstm_cell_1/Sigmoid_2Sigmoidwhile/lstm_cell_1/add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/Sigmoid_2
while/lstm_cell_1/Tanh_1Tanhwhile/lstm_cell_1/add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/Tanh_1­
while/lstm_cell_1/mul_10Mulwhile/lstm_cell_1/Sigmoid_2:y:0while/lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_10р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ф
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityз
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Ц
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ѓ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3ч
while/Identity_4Identitywhile/lstm_cell_1/mul_10:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/Identity_4ц
while/Identity_5Identitywhile/lstm_cell_1/add_3:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_1_readvariableop_resource+while_lstm_cell_1_readvariableop_resource_0"h
1while_lstm_cell_1_split_1_readvariableop_resource3while_lstm_cell_1_split_1_readvariableop_resource_0"d
/while_lstm_cell_1_split_readvariableop_resource1while_lstm_cell_1_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :џџџџџџџџџФ:џџџџџџџџџФ: : :::2D
 while/lstm_cell_1/ReadVariableOp while/lstm_cell_1/ReadVariableOp2H
"while/lstm_cell_1/ReadVariableOp_1"while/lstm_cell_1/ReadVariableOp_12H
"while/lstm_cell_1/ReadVariableOp_2"while/lstm_cell_1/ReadVariableOp_22H
"while/lstm_cell_1/ReadVariableOp_3"while/lstm_cell_1/ReadVariableOp_32P
&while/lstm_cell_1/split/ReadVariableOp&while/lstm_cell_1/split/ReadVariableOp2T
(while/lstm_cell_1/split_1/ReadVariableOp(while/lstm_cell_1/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџФ:.*
(
_output_shapes
:џџџџџџџџџФ:

_output_shapes
: :

_output_shapes
: 
ВЧ
р
G__inference_sequential_1_layer_call_and_return_conditional_losses_49416

inputs&
"embedding_1_embedding_lookup_491514
0lstm_1_lstm_cell_1_split_readvariableop_resource6
2lstm_1_lstm_cell_1_split_1_readvariableop_resource.
*lstm_1_lstm_cell_1_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identityЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOpЂembedding_1/embedding_lookupЂ!lstm_1/lstm_cell_1/ReadVariableOpЂ#lstm_1/lstm_cell_1/ReadVariableOp_1Ђ#lstm_1/lstm_cell_1/ReadVariableOp_2Ђ#lstm_1/lstm_cell_1/ReadVariableOp_3Ђ'lstm_1/lstm_cell_1/split/ReadVariableOpЂ)lstm_1/lstm_cell_1/split_1/ReadVariableOpЂlstm_1/whileu
embedding_1/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџ+2
embedding_1/CastИ
embedding_1/embedding_lookupResourceGather"embedding_1_embedding_lookup_49151embedding_1/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_1/embedding_lookup/49151*,
_output_shapes
:џџџџџџџџџ+*
dtype02
embedding_1/embedding_lookup
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_1/embedding_lookup/49151*,
_output_shapes
:џџџџџџџџџ+2'
%embedding_1/embedding_lookup/IdentityХ
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:џџџџџџџџџ+2)
'embedding_1/embedding_lookup/Identity_1Б
spatial_dropout1d_1/IdentityIdentity0embedding_1/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:џџџџџџџџџ+2
spatial_dropout1d_1/Identityq
lstm_1/ShapeShape%spatial_dropout1d_1/Identity:output:0*
T0*
_output_shapes
:2
lstm_1/Shape
lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice/stack
lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_1/strided_slice/stack_1
lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_1/strided_slice/stack_2
lstm_1/strided_sliceStridedSlicelstm_1/Shape:output:0#lstm_1/strided_slice/stack:output:0%lstm_1/strided_slice/stack_1:output:0%lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_1/strided_slicek
lstm_1/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ф2
lstm_1/zeros/mul/y
lstm_1/zeros/mulMullstm_1/strided_slice:output:0lstm_1/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros/mulm
lstm_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_1/zeros/Less/y
lstm_1/zeros/LessLesslstm_1/zeros/mul:z:0lstm_1/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros/Lessq
lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ф2
lstm_1/zeros/packed/1
lstm_1/zeros/packedPacklstm_1/strided_slice:output:0lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_1/zeros/packedm
lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_1/zeros/Const
lstm_1/zerosFilllstm_1/zeros/packed:output:0lstm_1/zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/zeroso
lstm_1/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ф2
lstm_1/zeros_1/mul/y
lstm_1/zeros_1/mulMullstm_1/strided_slice:output:0lstm_1/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros_1/mulq
lstm_1/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_1/zeros_1/Less/y
lstm_1/zeros_1/LessLesslstm_1/zeros_1/mul:z:0lstm_1/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros_1/Lessu
lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ф2
lstm_1/zeros_1/packed/1Ѕ
lstm_1/zeros_1/packedPacklstm_1/strided_slice:output:0 lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_1/zeros_1/packedq
lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_1/zeros_1/Const
lstm_1/zeros_1Filllstm_1/zeros_1/packed:output:0lstm_1/zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/zeros_1
lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_1/transpose/permЏ
lstm_1/transpose	Transpose%spatial_dropout1d_1/Identity:output:0lstm_1/transpose/perm:output:0*
T0*,
_output_shapes
:+џџџџџџџџџ2
lstm_1/transposed
lstm_1/Shape_1Shapelstm_1/transpose:y:0*
T0*
_output_shapes
:2
lstm_1/Shape_1
lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice_1/stack
lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_1/stack_1
lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_1/stack_2
lstm_1/strided_slice_1StridedSlicelstm_1/Shape_1:output:0%lstm_1/strided_slice_1/stack:output:0'lstm_1/strided_slice_1/stack_1:output:0'lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_1/strided_slice_1
"lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2$
"lstm_1/TensorArrayV2/element_shapeЮ
lstm_1/TensorArrayV2TensorListReserve+lstm_1/TensorArrayV2/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_1/TensorArrayV2Э
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2>
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape
.lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_1/transpose:y:0Elstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_1/TensorArrayUnstack/TensorListFromTensor
lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice_2/stack
lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_2/stack_1
lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_2/stack_2Ї
lstm_1/strided_slice_2StridedSlicelstm_1/transpose:y:0%lstm_1/strided_slice_2/stack:output:0'lstm_1/strided_slice_2/stack_1:output:0'lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
lstm_1/strided_slice_2
"lstm_1/lstm_cell_1/ones_like/ShapeShapelstm_1/strided_slice_2:output:0*
T0*
_output_shapes
:2$
"lstm_1/lstm_cell_1/ones_like/Shape
"lstm_1/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"lstm_1/lstm_cell_1/ones_like/Constб
lstm_1/lstm_cell_1/ones_likeFill+lstm_1/lstm_cell_1/ones_like/Shape:output:0+lstm_1/lstm_cell_1/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_1/ones_like
$lstm_1/lstm_cell_1/ones_like_1/ShapeShapelstm_1/zeros:output:0*
T0*
_output_shapes
:2&
$lstm_1/lstm_cell_1/ones_like_1/Shape
$lstm_1/lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$lstm_1/lstm_cell_1/ones_like_1/Constй
lstm_1/lstm_cell_1/ones_like_1Fill-lstm_1/lstm_cell_1/ones_like_1/Shape:output:0-lstm_1/lstm_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2 
lstm_1/lstm_cell_1/ones_like_1В
lstm_1/lstm_cell_1/mulMullstm_1/strided_slice_2:output:0%lstm_1/lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_1/mulЖ
lstm_1/lstm_cell_1/mul_1Mullstm_1/strided_slice_2:output:0%lstm_1/lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_1/mul_1Ж
lstm_1/lstm_cell_1/mul_2Mullstm_1/strided_slice_2:output:0%lstm_1/lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_1/mul_2Ж
lstm_1/lstm_cell_1/mul_3Mullstm_1/strided_slice_2:output:0%lstm_1/lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_1/lstm_cell_1/mul_3v
lstm_1/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/lstm_cell_1/Const
"lstm_1/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_1/lstm_cell_1/split/split_dimХ
'lstm_1/lstm_cell_1/split/ReadVariableOpReadVariableOp0lstm_1_lstm_cell_1_split_readvariableop_resource* 
_output_shapes
:
*
dtype02)
'lstm_1/lstm_cell_1/split/ReadVariableOpћ
lstm_1/lstm_cell_1/splitSplit+lstm_1/lstm_cell_1/split/split_dim:output:0/lstm_1/lstm_cell_1/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ф:
Ф:
Ф:
Ф*
	num_split2
lstm_1/lstm_cell_1/splitВ
lstm_1/lstm_cell_1/MatMulMatMullstm_1/lstm_cell_1/mul:z:0!lstm_1/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/MatMulИ
lstm_1/lstm_cell_1/MatMul_1MatMullstm_1/lstm_cell_1/mul_1:z:0!lstm_1/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/MatMul_1И
lstm_1/lstm_cell_1/MatMul_2MatMullstm_1/lstm_cell_1/mul_2:z:0!lstm_1/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/MatMul_2И
lstm_1/lstm_cell_1/MatMul_3MatMullstm_1/lstm_cell_1/mul_3:z:0!lstm_1/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/MatMul_3z
lstm_1/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/lstm_cell_1/Const_1
$lstm_1/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$lstm_1/lstm_cell_1/split_1/split_dimЦ
)lstm_1/lstm_cell_1/split_1/ReadVariableOpReadVariableOp2lstm_1_lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02+
)lstm_1/lstm_cell_1/split_1/ReadVariableOpя
lstm_1/lstm_cell_1/split_1Split-lstm_1/lstm_cell_1/split_1/split_dim:output:01lstm_1/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ф:Ф:Ф:Ф*
	num_split2
lstm_1/lstm_cell_1/split_1Р
lstm_1/lstm_cell_1/BiasAddBiasAdd#lstm_1/lstm_cell_1/MatMul:product:0#lstm_1/lstm_cell_1/split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/BiasAddЦ
lstm_1/lstm_cell_1/BiasAdd_1BiasAdd%lstm_1/lstm_cell_1/MatMul_1:product:0#lstm_1/lstm_cell_1/split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/BiasAdd_1Ц
lstm_1/lstm_cell_1/BiasAdd_2BiasAdd%lstm_1/lstm_cell_1/MatMul_2:product:0#lstm_1/lstm_cell_1/split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/BiasAdd_2Ц
lstm_1/lstm_cell_1/BiasAdd_3BiasAdd%lstm_1/lstm_cell_1/MatMul_3:product:0#lstm_1/lstm_cell_1/split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/BiasAdd_3Ў
lstm_1/lstm_cell_1/mul_4Mullstm_1/zeros:output:0'lstm_1/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/mul_4Ў
lstm_1/lstm_cell_1/mul_5Mullstm_1/zeros:output:0'lstm_1/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/mul_5Ў
lstm_1/lstm_cell_1/mul_6Mullstm_1/zeros:output:0'lstm_1/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/mul_6Ў
lstm_1/lstm_cell_1/mul_7Mullstm_1/zeros:output:0'lstm_1/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/mul_7Г
!lstm_1/lstm_cell_1/ReadVariableOpReadVariableOp*lstm_1_lstm_cell_1_readvariableop_resource* 
_output_shapes
:
Ф*
dtype02#
!lstm_1/lstm_cell_1/ReadVariableOpЁ
&lstm_1/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&lstm_1/lstm_cell_1/strided_slice/stackЅ
(lstm_1/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ф   2*
(lstm_1/lstm_cell_1/strided_slice/stack_1Ѕ
(lstm_1/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm_1/lstm_cell_1/strided_slice/stack_2№
 lstm_1/lstm_cell_1/strided_sliceStridedSlice)lstm_1/lstm_cell_1/ReadVariableOp:value:0/lstm_1/lstm_cell_1/strided_slice/stack:output:01lstm_1/lstm_cell_1/strided_slice/stack_1:output:01lstm_1/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2"
 lstm_1/lstm_cell_1/strided_sliceР
lstm_1/lstm_cell_1/MatMul_4MatMullstm_1/lstm_cell_1/mul_4:z:0)lstm_1/lstm_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/MatMul_4И
lstm_1/lstm_cell_1/addAddV2#lstm_1/lstm_cell_1/BiasAdd:output:0%lstm_1/lstm_cell_1/MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/add
lstm_1/lstm_cell_1/SigmoidSigmoidlstm_1/lstm_cell_1/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/SigmoidЗ
#lstm_1/lstm_cell_1/ReadVariableOp_1ReadVariableOp*lstm_1_lstm_cell_1_readvariableop_resource* 
_output_shapes
:
Ф*
dtype02%
#lstm_1/lstm_cell_1/ReadVariableOp_1Ѕ
(lstm_1/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ф   2*
(lstm_1/lstm_cell_1/strided_slice_1/stackЉ
*lstm_1/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_1/lstm_cell_1/strided_slice_1/stack_1Љ
*lstm_1/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_1/lstm_cell_1/strided_slice_1/stack_2ќ
"lstm_1/lstm_cell_1/strided_slice_1StridedSlice+lstm_1/lstm_cell_1/ReadVariableOp_1:value:01lstm_1/lstm_cell_1/strided_slice_1/stack:output:03lstm_1/lstm_cell_1/strided_slice_1/stack_1:output:03lstm_1/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2$
"lstm_1/lstm_cell_1/strided_slice_1Т
lstm_1/lstm_cell_1/MatMul_5MatMullstm_1/lstm_cell_1/mul_5:z:0+lstm_1/lstm_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/MatMul_5О
lstm_1/lstm_cell_1/add_1AddV2%lstm_1/lstm_cell_1/BiasAdd_1:output:0%lstm_1/lstm_cell_1/MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/add_1
lstm_1/lstm_cell_1/Sigmoid_1Sigmoidlstm_1/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/Sigmoid_1Љ
lstm_1/lstm_cell_1/mul_8Mul lstm_1/lstm_cell_1/Sigmoid_1:y:0lstm_1/zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/mul_8З
#lstm_1/lstm_cell_1/ReadVariableOp_2ReadVariableOp*lstm_1_lstm_cell_1_readvariableop_resource* 
_output_shapes
:
Ф*
dtype02%
#lstm_1/lstm_cell_1/ReadVariableOp_2Ѕ
(lstm_1/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm_1/lstm_cell_1/strided_slice_2/stackЉ
*lstm_1/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2,
*lstm_1/lstm_cell_1/strided_slice_2/stack_1Љ
*lstm_1/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_1/lstm_cell_1/strided_slice_2/stack_2ќ
"lstm_1/lstm_cell_1/strided_slice_2StridedSlice+lstm_1/lstm_cell_1/ReadVariableOp_2:value:01lstm_1/lstm_cell_1/strided_slice_2/stack:output:03lstm_1/lstm_cell_1/strided_slice_2/stack_1:output:03lstm_1/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2$
"lstm_1/lstm_cell_1/strided_slice_2Т
lstm_1/lstm_cell_1/MatMul_6MatMullstm_1/lstm_cell_1/mul_6:z:0+lstm_1/lstm_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/MatMul_6О
lstm_1/lstm_cell_1/add_2AddV2%lstm_1/lstm_cell_1/BiasAdd_2:output:0%lstm_1/lstm_cell_1/MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/add_2
lstm_1/lstm_cell_1/TanhTanhlstm_1/lstm_cell_1/add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/TanhЋ
lstm_1/lstm_cell_1/mul_9Mullstm_1/lstm_cell_1/Sigmoid:y:0lstm_1/lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/mul_9Ќ
lstm_1/lstm_cell_1/add_3AddV2lstm_1/lstm_cell_1/mul_8:z:0lstm_1/lstm_cell_1/mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/add_3З
#lstm_1/lstm_cell_1/ReadVariableOp_3ReadVariableOp*lstm_1_lstm_cell_1_readvariableop_resource* 
_output_shapes
:
Ф*
dtype02%
#lstm_1/lstm_cell_1/ReadVariableOp_3Ѕ
(lstm_1/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2*
(lstm_1/lstm_cell_1/strided_slice_3/stackЉ
*lstm_1/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_1/lstm_cell_1/strided_slice_3/stack_1Љ
*lstm_1/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_1/lstm_cell_1/strided_slice_3/stack_2ќ
"lstm_1/lstm_cell_1/strided_slice_3StridedSlice+lstm_1/lstm_cell_1/ReadVariableOp_3:value:01lstm_1/lstm_cell_1/strided_slice_3/stack:output:03lstm_1/lstm_cell_1/strided_slice_3/stack_1:output:03lstm_1/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2$
"lstm_1/lstm_cell_1/strided_slice_3Т
lstm_1/lstm_cell_1/MatMul_7MatMullstm_1/lstm_cell_1/mul_7:z:0+lstm_1/lstm_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/MatMul_7О
lstm_1/lstm_cell_1/add_4AddV2%lstm_1/lstm_cell_1/BiasAdd_3:output:0%lstm_1/lstm_cell_1/MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/add_4
lstm_1/lstm_cell_1/Sigmoid_2Sigmoidlstm_1/lstm_cell_1/add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/Sigmoid_2
lstm_1/lstm_cell_1/Tanh_1Tanhlstm_1/lstm_cell_1/add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/Tanh_1Б
lstm_1/lstm_cell_1/mul_10Mul lstm_1/lstm_cell_1/Sigmoid_2:y:0lstm_1/lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_1/lstm_cell_1/mul_10
$lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџФ   2&
$lstm_1/TensorArrayV2_1/element_shapeд
lstm_1/TensorArrayV2_1TensorListReserve-lstm_1/TensorArrayV2_1/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_1/TensorArrayV2_1\
lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_1/time
lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2!
lstm_1/while/maximum_iterationsx
lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_1/while/loop_counterЬ
lstm_1/whileWhile"lstm_1/while/loop_counter:output:0(lstm_1/while/maximum_iterations:output:0lstm_1/time:output:0lstm_1/TensorArrayV2_1:handle:0lstm_1/zeros:output:0lstm_1/zeros_1:output:0lstm_1/strided_slice_1:output:0>lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:00lstm_1_lstm_cell_1_split_readvariableop_resource2lstm_1_lstm_cell_1_split_1_readvariableop_resource*lstm_1_lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџФ:џџџџџџџџџФ: : : : : *%
_read_only_resource_inputs
	
*#
bodyR
lstm_1_while_body_49273*#
condR
lstm_1_while_cond_49272*M
output_shapes<
:: : : : :џџџџџџџџџФ:џџџџџџџџџФ: : : : : *
parallel_iterations 2
lstm_1/whileУ
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџФ   29
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shape
)lstm_1/TensorArrayV2Stack/TensorListStackTensorListStacklstm_1/while:output:3@lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:+џџџџџџџџџФ*
element_dtype02+
)lstm_1/TensorArrayV2Stack/TensorListStack
lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
lstm_1/strided_slice_3/stack
lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_1/strided_slice_3/stack_1
lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_3/stack_2Х
lstm_1/strided_slice_3StridedSlice2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_1/strided_slice_3/stack:output:0'lstm_1/strided_slice_3/stack_1:output:0'lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџФ*
shrink_axis_mask2
lstm_1/strided_slice_3
lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_1/transpose_1/permТ
lstm_1/transpose_1	Transpose2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџ+Ф2
lstm_1/transpose_1t
lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_1/runtimeІ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	Ф*
dtype02
dense_1/MatMul/ReadVariableOpЄ
dense_1/MatMulMatMullstm_1/strided_slice_3:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_1/MatMulЄ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOpЁ
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_1/BiasAddy
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_1/SoftmaxШ
IdentityIdentitydense_1/Softmax:softmax:0^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding_1/embedding_lookup"^lstm_1/lstm_cell_1/ReadVariableOp$^lstm_1/lstm_cell_1/ReadVariableOp_1$^lstm_1/lstm_cell_1/ReadVariableOp_2$^lstm_1/lstm_cell_1/ReadVariableOp_3(^lstm_1/lstm_cell_1/split/ReadVariableOp*^lstm_1/lstm_cell_1/split_1/ReadVariableOp^lstm_1/while*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ+::::::2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2<
embedding_1/embedding_lookupembedding_1/embedding_lookup2F
!lstm_1/lstm_cell_1/ReadVariableOp!lstm_1/lstm_cell_1/ReadVariableOp2J
#lstm_1/lstm_cell_1/ReadVariableOp_1#lstm_1/lstm_cell_1/ReadVariableOp_12J
#lstm_1/lstm_cell_1/ReadVariableOp_2#lstm_1/lstm_cell_1/ReadVariableOp_22J
#lstm_1/lstm_cell_1/ReadVariableOp_3#lstm_1/lstm_cell_1/ReadVariableOp_32R
'lstm_1/lstm_cell_1/split/ReadVariableOp'lstm_1/lstm_cell_1/split/ReadVariableOp2V
)lstm_1/lstm_cell_1/split_1/ReadVariableOp)lstm_1/lstm_cell_1/split_1/ReadVariableOp2
lstm_1/whilelstm_1/while:O K
'
_output_shapes
:џџџџџџџџџ+
 
_user_specified_nameinputs
ѕѕ
Х
while_body_49724
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
1while_lstm_cell_1_split_readvariableop_resource_07
3while_lstm_cell_1_split_1_readvariableop_resource_0/
+while_lstm_cell_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
/while_lstm_cell_1_split_readvariableop_resource5
1while_lstm_cell_1_split_1_readvariableop_resource-
)while_lstm_cell_1_readvariableop_resourceЂ while/lstm_cell_1/ReadVariableOpЂ"while/lstm_cell_1/ReadVariableOp_1Ђ"while/lstm_cell_1/ReadVariableOp_2Ђ"while/lstm_cell_1/ReadVariableOp_3Ђ&while/lstm_cell_1/split/ReadVariableOpЂ(while/lstm_cell_1/split_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeд
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemІ
!while/lstm_cell_1/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/ones_like/Shape
!while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_1/ones_like/ConstЭ
while/lstm_cell_1/ones_likeFill*while/lstm_cell_1/ones_like/Shape:output:0*while/lstm_cell_1/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_1/ones_like
while/lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2!
while/lstm_cell_1/dropout/ConstШ
while/lstm_cell_1/dropout/MulMul$while/lstm_cell_1/ones_like:output:0(while/lstm_cell_1/dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_1/dropout/Mul
while/lstm_cell_1/dropout/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_1/dropout/Shape
6while/lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_1/dropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2Ку28
6while/lstm_cell_1/dropout/random_uniform/RandomUniform
(while/lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2*
(while/lstm_cell_1/dropout/GreaterEqual/y
&while/lstm_cell_1/dropout/GreaterEqualGreaterEqual?while/lstm_cell_1/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2(
&while/lstm_cell_1/dropout/GreaterEqualЖ
while/lstm_cell_1/dropout/CastCast*while/lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2 
while/lstm_cell_1/dropout/CastУ
while/lstm_cell_1/dropout/Mul_1Mul!while/lstm_cell_1/dropout/Mul:z:0"while/lstm_cell_1/dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2!
while/lstm_cell_1/dropout/Mul_1
!while/lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_1/dropout_1/ConstЮ
while/lstm_cell_1/dropout_1/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2!
while/lstm_cell_1/dropout_1/Mul
!while/lstm_cell_1/dropout_1/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_1/Shape
8while/lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_1/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2МЊ`2:
8while/lstm_cell_1/dropout_1/random_uniform/RandomUniform
*while/lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_1/dropout_1/GreaterEqual/y
(while/lstm_cell_1/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2*
(while/lstm_cell_1/dropout_1/GreaterEqualМ
 while/lstm_cell_1/dropout_1/CastCast,while/lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2"
 while/lstm_cell_1/dropout_1/CastЫ
!while/lstm_cell_1/dropout_1/Mul_1Mul#while/lstm_cell_1/dropout_1/Mul:z:0$while/lstm_cell_1/dropout_1/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2#
!while/lstm_cell_1/dropout_1/Mul_1
!while/lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_1/dropout_2/ConstЮ
while/lstm_cell_1/dropout_2/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_2/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2!
while/lstm_cell_1/dropout_2/Mul
!while/lstm_cell_1/dropout_2/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_2/Shape
8while/lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_2/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2лњ2:
8while/lstm_cell_1/dropout_2/random_uniform/RandomUniform
*while/lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_1/dropout_2/GreaterEqual/y
(while/lstm_cell_1/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2*
(while/lstm_cell_1/dropout_2/GreaterEqualМ
 while/lstm_cell_1/dropout_2/CastCast,while/lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2"
 while/lstm_cell_1/dropout_2/CastЫ
!while/lstm_cell_1/dropout_2/Mul_1Mul#while/lstm_cell_1/dropout_2/Mul:z:0$while/lstm_cell_1/dropout_2/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2#
!while/lstm_cell_1/dropout_2/Mul_1
!while/lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_1/dropout_3/ConstЮ
while/lstm_cell_1/dropout_3/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_3/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2!
while/lstm_cell_1/dropout_3/Mul
!while/lstm_cell_1/dropout_3/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_3/Shape
8while/lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_3/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2эБ2:
8while/lstm_cell_1/dropout_3/random_uniform/RandomUniform
*while/lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_1/dropout_3/GreaterEqual/y
(while/lstm_cell_1/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2*
(while/lstm_cell_1/dropout_3/GreaterEqualМ
 while/lstm_cell_1/dropout_3/CastCast,while/lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2"
 while/lstm_cell_1/dropout_3/CastЫ
!while/lstm_cell_1/dropout_3/Mul_1Mul#while/lstm_cell_1/dropout_3/Mul:z:0$while/lstm_cell_1/dropout_3/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2#
!while/lstm_cell_1/dropout_3/Mul_1
#while/lstm_cell_1/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_1/ones_like_1/Shape
#while/lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_1/ones_like_1/Constе
while/lstm_cell_1/ones_like_1Fill,while/lstm_cell_1/ones_like_1/Shape:output:0,while/lstm_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/ones_like_1
!while/lstm_cell_1/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_1/dropout_4/Constа
while/lstm_cell_1/dropout_4/MulMul&while/lstm_cell_1/ones_like_1:output:0*while/lstm_cell_1/dropout_4/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2!
while/lstm_cell_1/dropout_4/Mul
!while/lstm_cell_1/dropout_4/ShapeShape&while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_4/Shape
8while/lstm_cell_1/dropout_4/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_4/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2УЪј2:
8while/lstm_cell_1/dropout_4/random_uniform/RandomUniform
*while/lstm_cell_1/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_1/dropout_4/GreaterEqual/y
(while/lstm_cell_1/dropout_4/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_4/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2*
(while/lstm_cell_1/dropout_4/GreaterEqualМ
 while/lstm_cell_1/dropout_4/CastCast,while/lstm_cell_1/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2"
 while/lstm_cell_1/dropout_4/CastЫ
!while/lstm_cell_1/dropout_4/Mul_1Mul#while/lstm_cell_1/dropout_4/Mul:z:0$while/lstm_cell_1/dropout_4/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2#
!while/lstm_cell_1/dropout_4/Mul_1
!while/lstm_cell_1/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_1/dropout_5/Constа
while/lstm_cell_1/dropout_5/MulMul&while/lstm_cell_1/ones_like_1:output:0*while/lstm_cell_1/dropout_5/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2!
while/lstm_cell_1/dropout_5/Mul
!while/lstm_cell_1/dropout_5/ShapeShape&while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_5/Shape
8while/lstm_cell_1/dropout_5/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_5/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2Ръ02:
8while/lstm_cell_1/dropout_5/random_uniform/RandomUniform
*while/lstm_cell_1/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_1/dropout_5/GreaterEqual/y
(while/lstm_cell_1/dropout_5/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_5/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2*
(while/lstm_cell_1/dropout_5/GreaterEqualМ
 while/lstm_cell_1/dropout_5/CastCast,while/lstm_cell_1/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2"
 while/lstm_cell_1/dropout_5/CastЫ
!while/lstm_cell_1/dropout_5/Mul_1Mul#while/lstm_cell_1/dropout_5/Mul:z:0$while/lstm_cell_1/dropout_5/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2#
!while/lstm_cell_1/dropout_5/Mul_1
!while/lstm_cell_1/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_1/dropout_6/Constа
while/lstm_cell_1/dropout_6/MulMul&while/lstm_cell_1/ones_like_1:output:0*while/lstm_cell_1/dropout_6/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2!
while/lstm_cell_1/dropout_6/Mul
!while/lstm_cell_1/dropout_6/ShapeShape&while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_6/Shape
8while/lstm_cell_1/dropout_6/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_6/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2№E2:
8while/lstm_cell_1/dropout_6/random_uniform/RandomUniform
*while/lstm_cell_1/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_1/dropout_6/GreaterEqual/y
(while/lstm_cell_1/dropout_6/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_6/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2*
(while/lstm_cell_1/dropout_6/GreaterEqualМ
 while/lstm_cell_1/dropout_6/CastCast,while/lstm_cell_1/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2"
 while/lstm_cell_1/dropout_6/CastЫ
!while/lstm_cell_1/dropout_6/Mul_1Mul#while/lstm_cell_1/dropout_6/Mul:z:0$while/lstm_cell_1/dropout_6/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2#
!while/lstm_cell_1/dropout_6/Mul_1
!while/lstm_cell_1/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_1/dropout_7/Constа
while/lstm_cell_1/dropout_7/MulMul&while/lstm_cell_1/ones_like_1:output:0*while/lstm_cell_1/dropout_7/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2!
while/lstm_cell_1/dropout_7/Mul
!while/lstm_cell_1/dropout_7/ShapeShape&while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_7/Shape
8while/lstm_cell_1/dropout_7/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_7/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2шД§2:
8while/lstm_cell_1/dropout_7/random_uniform/RandomUniform
*while/lstm_cell_1/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2,
*while/lstm_cell_1/dropout_7/GreaterEqual/y
(while/lstm_cell_1/dropout_7/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_7/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2*
(while/lstm_cell_1/dropout_7/GreaterEqualМ
 while/lstm_cell_1/dropout_7/CastCast,while/lstm_cell_1/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2"
 while/lstm_cell_1/dropout_7/CastЫ
!while/lstm_cell_1/dropout_7/Mul_1Mul#while/lstm_cell_1/dropout_7/Mul:z:0$while/lstm_cell_1/dropout_7/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2#
!while/lstm_cell_1/dropout_7/Mul_1П
while/lstm_cell_1/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_1/dropout/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_1/mulХ
while/lstm_cell_1/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_1/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_1/mul_1Х
while/lstm_cell_1/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_1/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_1/mul_2Х
while/lstm_cell_1/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_1/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_1/mul_3t
while/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_1/Const
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_1/split/split_dimФ
&while/lstm_cell_1/split/ReadVariableOpReadVariableOp1while_lstm_cell_1_split_readvariableop_resource_0* 
_output_shapes
:
*
dtype02(
&while/lstm_cell_1/split/ReadVariableOpї
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0.while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ф:
Ф:
Ф:
Ф*
	num_split2
while/lstm_cell_1/splitЎ
while/lstm_cell_1/MatMulMatMulwhile/lstm_cell_1/mul:z:0 while/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMulД
while/lstm_cell_1/MatMul_1MatMulwhile/lstm_cell_1/mul_1:z:0 while/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_1Д
while/lstm_cell_1/MatMul_2MatMulwhile/lstm_cell_1/mul_2:z:0 while/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_2Д
while/lstm_cell_1/MatMul_3MatMulwhile/lstm_cell_1/mul_3:z:0 while/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_3x
while/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_1/Const_1
#while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_1/split_1/split_dimХ
(while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02*
(while/lstm_cell_1/split_1/ReadVariableOpы
while/lstm_cell_1/split_1Split,while/lstm_cell_1/split_1/split_dim:output:00while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ф:Ф:Ф:Ф*
	num_split2
while/lstm_cell_1/split_1М
while/lstm_cell_1/BiasAddBiasAdd"while/lstm_cell_1/MatMul:product:0"while/lstm_cell_1/split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/BiasAddТ
while/lstm_cell_1/BiasAdd_1BiasAdd$while/lstm_cell_1/MatMul_1:product:0"while/lstm_cell_1/split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/BiasAdd_1Т
while/lstm_cell_1/BiasAdd_2BiasAdd$while/lstm_cell_1/MatMul_2:product:0"while/lstm_cell_1/split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/BiasAdd_2Т
while/lstm_cell_1/BiasAdd_3BiasAdd$while/lstm_cell_1/MatMul_3:product:0"while/lstm_cell_1/split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/BiasAdd_3Ј
while/lstm_cell_1/mul_4Mulwhile_placeholder_2%while/lstm_cell_1/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_4Ј
while/lstm_cell_1/mul_5Mulwhile_placeholder_2%while/lstm_cell_1/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_5Ј
while/lstm_cell_1/mul_6Mulwhile_placeholder_2%while/lstm_cell_1/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_6Ј
while/lstm_cell_1/mul_7Mulwhile_placeholder_2%while/lstm_cell_1/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_7В
 while/lstm_cell_1/ReadVariableOpReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
Ф*
dtype02"
 while/lstm_cell_1/ReadVariableOp
%while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_1/strided_slice/stackЃ
'while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ф   2)
'while/lstm_cell_1/strided_slice/stack_1Ѓ
'while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_1/strided_slice/stack_2ъ
while/lstm_cell_1/strided_sliceStridedSlice(while/lstm_cell_1/ReadVariableOp:value:0.while/lstm_cell_1/strided_slice/stack:output:00while/lstm_cell_1/strided_slice/stack_1:output:00while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2!
while/lstm_cell_1/strided_sliceМ
while/lstm_cell_1/MatMul_4MatMulwhile/lstm_cell_1/mul_4:z:0(while/lstm_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_4Д
while/lstm_cell_1/addAddV2"while/lstm_cell_1/BiasAdd:output:0$while/lstm_cell_1/MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/add
while/lstm_cell_1/SigmoidSigmoidwhile/lstm_cell_1/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/SigmoidЖ
"while/lstm_cell_1/ReadVariableOp_1ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
Ф*
dtype02$
"while/lstm_cell_1/ReadVariableOp_1Ѓ
'while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ф   2)
'while/lstm_cell_1/strided_slice_1/stackЇ
)while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_1/stack_1Ї
)while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_1/stack_2і
!while/lstm_cell_1/strided_slice_1StridedSlice*while/lstm_cell_1/ReadVariableOp_1:value:00while/lstm_cell_1/strided_slice_1/stack:output:02while/lstm_cell_1/strided_slice_1/stack_1:output:02while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_1О
while/lstm_cell_1/MatMul_5MatMulwhile/lstm_cell_1/mul_5:z:0*while/lstm_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_5К
while/lstm_cell_1/add_1AddV2$while/lstm_cell_1/BiasAdd_1:output:0$while/lstm_cell_1/MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/add_1
while/lstm_cell_1/Sigmoid_1Sigmoidwhile/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/Sigmoid_1Ђ
while/lstm_cell_1/mul_8Mulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_8Ж
"while/lstm_cell_1/ReadVariableOp_2ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
Ф*
dtype02$
"while/lstm_cell_1/ReadVariableOp_2Ѓ
'while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_1/strided_slice_2/stackЇ
)while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2+
)while/lstm_cell_1/strided_slice_2/stack_1Ї
)while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_2/stack_2і
!while/lstm_cell_1/strided_slice_2StridedSlice*while/lstm_cell_1/ReadVariableOp_2:value:00while/lstm_cell_1/strided_slice_2/stack:output:02while/lstm_cell_1/strided_slice_2/stack_1:output:02while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_2О
while/lstm_cell_1/MatMul_6MatMulwhile/lstm_cell_1/mul_6:z:0*while/lstm_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_6К
while/lstm_cell_1/add_2AddV2$while/lstm_cell_1/BiasAdd_2:output:0$while/lstm_cell_1/MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/add_2
while/lstm_cell_1/TanhTanhwhile/lstm_cell_1/add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/TanhЇ
while/lstm_cell_1/mul_9Mulwhile/lstm_cell_1/Sigmoid:y:0while/lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_9Ј
while/lstm_cell_1/add_3AddV2while/lstm_cell_1/mul_8:z:0while/lstm_cell_1/mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/add_3Ж
"while/lstm_cell_1/ReadVariableOp_3ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
Ф*
dtype02$
"while/lstm_cell_1/ReadVariableOp_3Ѓ
'while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2)
'while/lstm_cell_1/strided_slice_3/stackЇ
)while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_1/strided_slice_3/stack_1Ї
)while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_3/stack_2і
!while/lstm_cell_1/strided_slice_3StridedSlice*while/lstm_cell_1/ReadVariableOp_3:value:00while/lstm_cell_1/strided_slice_3/stack:output:02while/lstm_cell_1/strided_slice_3/stack_1:output:02while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_3О
while/lstm_cell_1/MatMul_7MatMulwhile/lstm_cell_1/mul_7:z:0*while/lstm_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/MatMul_7К
while/lstm_cell_1/add_4AddV2$while/lstm_cell_1/BiasAdd_3:output:0$while/lstm_cell_1/MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/add_4
while/lstm_cell_1/Sigmoid_2Sigmoidwhile/lstm_cell_1/add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/Sigmoid_2
while/lstm_cell_1/Tanh_1Tanhwhile/lstm_cell_1/add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/Tanh_1­
while/lstm_cell_1/mul_10Mulwhile/lstm_cell_1/Sigmoid_2:y:0while/lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/lstm_cell_1/mul_10р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ф
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityз
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Ц
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ѓ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3ч
while/Identity_4Identitywhile/lstm_cell_1/mul_10:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/Identity_4ц
while/Identity_5Identitywhile/lstm_cell_1/add_3:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_1_readvariableop_resource+while_lstm_cell_1_readvariableop_resource_0"h
1while_lstm_cell_1_split_1_readvariableop_resource3while_lstm_cell_1_split_1_readvariableop_resource_0"d
/while_lstm_cell_1_split_readvariableop_resource1while_lstm_cell_1_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :џџџџџџџџџФ:џџџџџџџџџФ: : :::2D
 while/lstm_cell_1/ReadVariableOp while/lstm_cell_1/ReadVariableOp2H
"while/lstm_cell_1/ReadVariableOp_1"while/lstm_cell_1/ReadVariableOp_12H
"while/lstm_cell_1/ReadVariableOp_2"while/lstm_cell_1/ReadVariableOp_22H
"while/lstm_cell_1/ReadVariableOp_3"while/lstm_cell_1/ReadVariableOp_32P
&while/lstm_cell_1/split/ReadVariableOp&while/lstm_cell_1/split/ReadVariableOp2T
(while/lstm_cell_1/split_1/ReadVariableOp(while/lstm_cell_1/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџФ:.*
(
_output_shapes
:џџџџџџџџџФ:

_output_shapes
: :

_output_shapes
: 
O

F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_51113

inputs
states_0
states_1!
split_readvariableop_resource#
split_1_readvariableop_resource
readvariableop_resource
identity

identity_1

identity_2ЂReadVariableOpЂReadVariableOp_1ЂReadVariableOp_2ЂReadVariableOp_3Ђsplit/ReadVariableOpЂsplit_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
	ones_like^
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like_1/Const
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
ones_like_1`
mulMulinputsones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
muld
mul_1Mulinputsones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
mul_1d
mul_2Mulinputsones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
mul_2d
mul_3Mulinputsones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
mul_3P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
*
dtype02
split/ReadVariableOpЏ
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ф:
Ф:
Ф:
Ф*
	num_split2
splitf
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
MatMull
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2

MatMul_1l
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2

MatMul_2l
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2

MatMul_3T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype02
split_1/ReadVariableOpЃ
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ф:Ф:Ф:Ф*
	num_split2	
split_1t
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2	
BiasAddz
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2
	BiasAdd_1z
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2
	BiasAdd_2z
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2
	BiasAdd_3h
mul_4Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
mul_4h
mul_5Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
mul_5h
mul_6Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
mul_6h
mul_7Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
mul_7z
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ф*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ф   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2ў
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
strided_slicet
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2

MatMul_4l
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2	
Sigmoid~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ф*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ф   2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
strided_slice_1v
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2

MatMul_5r
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
	Sigmoid_1a
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:џџџџџџџџџФ2
mul_8~
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ф*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
strided_slice_2v
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2

MatMul_6r
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
Tanh_
mul_9MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
mul_9`
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
add_3~
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ф*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
strided_slice_3v
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2

MatMul_7r
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
add_4_
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
	Sigmoid_2V
Tanh_1Tanh	add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
Tanh_1e
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
mul_10й
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identityн

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity_1м

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*[
_input_shapesJ
H:џџџџџџџџџ:џџџџџџџџџФ:џџџџџџџџџФ:::2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:RN
(
_output_shapes
:џџџџџџџџџФ
"
_user_specified_name
states/0:RN
(
_output_shapes
:џџџџџџџџџФ
"
_user_specified_name
states/1
Њ
О
while_cond_47773
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_47773___redundant_placeholder03
/while_while_cond_47773___redundant_placeholder13
/while_while_cond_47773___redundant_placeholder23
/while_while_cond_47773___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :џџџџџџџџџФ:џџџџџџџџџФ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџФ:.*
(
_output_shapes
:џџџџџџџџџФ:

_output_shapes
: :

_output_shapes
:
Љ
l
N__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_49531

inputs

identity_1p
IdentityIdentityinputs*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity

Identity_1IdentityIdentity:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity_1"!

identity_1Identity_1:output:0*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
іЬ

$sequential_1_lstm_1_while_body_46867D
@sequential_1_lstm_1_while_sequential_1_lstm_1_while_loop_counterJ
Fsequential_1_lstm_1_while_sequential_1_lstm_1_while_maximum_iterations)
%sequential_1_lstm_1_while_placeholder+
'sequential_1_lstm_1_while_placeholder_1+
'sequential_1_lstm_1_while_placeholder_2+
'sequential_1_lstm_1_while_placeholder_3C
?sequential_1_lstm_1_while_sequential_1_lstm_1_strided_slice_1_0
{sequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensor_0I
Esequential_1_lstm_1_while_lstm_cell_1_split_readvariableop_resource_0K
Gsequential_1_lstm_1_while_lstm_cell_1_split_1_readvariableop_resource_0C
?sequential_1_lstm_1_while_lstm_cell_1_readvariableop_resource_0&
"sequential_1_lstm_1_while_identity(
$sequential_1_lstm_1_while_identity_1(
$sequential_1_lstm_1_while_identity_2(
$sequential_1_lstm_1_while_identity_3(
$sequential_1_lstm_1_while_identity_4(
$sequential_1_lstm_1_while_identity_5A
=sequential_1_lstm_1_while_sequential_1_lstm_1_strided_slice_1}
ysequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensorG
Csequential_1_lstm_1_while_lstm_cell_1_split_readvariableop_resourceI
Esequential_1_lstm_1_while_lstm_cell_1_split_1_readvariableop_resourceA
=sequential_1_lstm_1_while_lstm_cell_1_readvariableop_resourceЂ4sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOpЂ6sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_1Ђ6sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_2Ђ6sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_3Ђ:sequential_1/lstm_1/while/lstm_cell_1/split/ReadVariableOpЂ<sequential_1/lstm_1/while/lstm_cell_1/split_1/ReadVariableOpы
Ksequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2M
Ksequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeЬ
=sequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensor_0%sequential_1_lstm_1_while_placeholderTsequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype02?
=sequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItemт
5sequential_1/lstm_1/while/lstm_cell_1/ones_like/ShapeShapeDsequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:27
5sequential_1/lstm_1/while/lstm_cell_1/ones_like/ShapeГ
5sequential_1/lstm_1/while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?27
5sequential_1/lstm_1/while/lstm_cell_1/ones_like/Const
/sequential_1/lstm_1/while/lstm_cell_1/ones_likeFill>sequential_1/lstm_1/while/lstm_cell_1/ones_like/Shape:output:0>sequential_1/lstm_1/while/lstm_cell_1/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ21
/sequential_1/lstm_1/while/lstm_cell_1/ones_likeЩ
7sequential_1/lstm_1/while/lstm_cell_1/ones_like_1/ShapeShape'sequential_1_lstm_1_while_placeholder_2*
T0*
_output_shapes
:29
7sequential_1/lstm_1/while/lstm_cell_1/ones_like_1/ShapeЗ
7sequential_1/lstm_1/while/lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?29
7sequential_1/lstm_1/while/lstm_cell_1/ones_like_1/ConstЅ
1sequential_1/lstm_1/while/lstm_cell_1/ones_like_1Fill@sequential_1/lstm_1/while/lstm_cell_1/ones_like_1/Shape:output:0@sequential_1/lstm_1/while/lstm_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ23
1sequential_1/lstm_1/while/lstm_cell_1/ones_like_1
)sequential_1/lstm_1/while/lstm_cell_1/mulMulDsequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:08sequential_1/lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2+
)sequential_1/lstm_1/while/lstm_cell_1/mul
+sequential_1/lstm_1/while/lstm_cell_1/mul_1MulDsequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:08sequential_1/lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2-
+sequential_1/lstm_1/while/lstm_cell_1/mul_1
+sequential_1/lstm_1/while/lstm_cell_1/mul_2MulDsequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:08sequential_1/lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2-
+sequential_1/lstm_1/while/lstm_cell_1/mul_2
+sequential_1/lstm_1/while/lstm_cell_1/mul_3MulDsequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:08sequential_1/lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2-
+sequential_1/lstm_1/while/lstm_cell_1/mul_3
+sequential_1/lstm_1/while/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2-
+sequential_1/lstm_1/while/lstm_cell_1/ConstА
5sequential_1/lstm_1/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :27
5sequential_1/lstm_1/while/lstm_cell_1/split/split_dim
:sequential_1/lstm_1/while/lstm_cell_1/split/ReadVariableOpReadVariableOpEsequential_1_lstm_1_while_lstm_cell_1_split_readvariableop_resource_0* 
_output_shapes
:
*
dtype02<
:sequential_1/lstm_1/while/lstm_cell_1/split/ReadVariableOpЧ
+sequential_1/lstm_1/while/lstm_cell_1/splitSplit>sequential_1/lstm_1/while/lstm_cell_1/split/split_dim:output:0Bsequential_1/lstm_1/while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ф:
Ф:
Ф:
Ф*
	num_split2-
+sequential_1/lstm_1/while/lstm_cell_1/splitў
,sequential_1/lstm_1/while/lstm_cell_1/MatMulMatMul-sequential_1/lstm_1/while/lstm_cell_1/mul:z:04sequential_1/lstm_1/while/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2.
,sequential_1/lstm_1/while/lstm_cell_1/MatMul
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_1MatMul/sequential_1/lstm_1/while/lstm_cell_1/mul_1:z:04sequential_1/lstm_1/while/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ20
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_1
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_2MatMul/sequential_1/lstm_1/while/lstm_cell_1/mul_2:z:04sequential_1/lstm_1/while/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ20
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_2
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_3MatMul/sequential_1/lstm_1/while/lstm_cell_1/mul_3:z:04sequential_1/lstm_1/while/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ20
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_3 
-sequential_1/lstm_1/while/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2/
-sequential_1/lstm_1/while/lstm_cell_1/Const_1Д
7sequential_1/lstm_1/while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 29
7sequential_1/lstm_1/while/lstm_cell_1/split_1/split_dim
<sequential_1/lstm_1/while/lstm_cell_1/split_1/ReadVariableOpReadVariableOpGsequential_1_lstm_1_while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02>
<sequential_1/lstm_1/while/lstm_cell_1/split_1/ReadVariableOpЛ
-sequential_1/lstm_1/while/lstm_cell_1/split_1Split@sequential_1/lstm_1/while/lstm_cell_1/split_1/split_dim:output:0Dsequential_1/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ф:Ф:Ф:Ф*
	num_split2/
-sequential_1/lstm_1/while/lstm_cell_1/split_1
-sequential_1/lstm_1/while/lstm_cell_1/BiasAddBiasAdd6sequential_1/lstm_1/while/lstm_cell_1/MatMul:product:06sequential_1/lstm_1/while/lstm_cell_1/split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2/
-sequential_1/lstm_1/while/lstm_cell_1/BiasAdd
/sequential_1/lstm_1/while/lstm_cell_1/BiasAdd_1BiasAdd8sequential_1/lstm_1/while/lstm_cell_1/MatMul_1:product:06sequential_1/lstm_1/while/lstm_cell_1/split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ21
/sequential_1/lstm_1/while/lstm_cell_1/BiasAdd_1
/sequential_1/lstm_1/while/lstm_cell_1/BiasAdd_2BiasAdd8sequential_1/lstm_1/while/lstm_cell_1/MatMul_2:product:06sequential_1/lstm_1/while/lstm_cell_1/split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ21
/sequential_1/lstm_1/while/lstm_cell_1/BiasAdd_2
/sequential_1/lstm_1/while/lstm_cell_1/BiasAdd_3BiasAdd8sequential_1/lstm_1/while/lstm_cell_1/MatMul_3:product:06sequential_1/lstm_1/while/lstm_cell_1/split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ21
/sequential_1/lstm_1/while/lstm_cell_1/BiasAdd_3љ
+sequential_1/lstm_1/while/lstm_cell_1/mul_4Mul'sequential_1_lstm_1_while_placeholder_2:sequential_1/lstm_1/while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2-
+sequential_1/lstm_1/while/lstm_cell_1/mul_4љ
+sequential_1/lstm_1/while/lstm_cell_1/mul_5Mul'sequential_1_lstm_1_while_placeholder_2:sequential_1/lstm_1/while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2-
+sequential_1/lstm_1/while/lstm_cell_1/mul_5љ
+sequential_1/lstm_1/while/lstm_cell_1/mul_6Mul'sequential_1_lstm_1_while_placeholder_2:sequential_1/lstm_1/while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2-
+sequential_1/lstm_1/while/lstm_cell_1/mul_6љ
+sequential_1/lstm_1/while/lstm_cell_1/mul_7Mul'sequential_1_lstm_1_while_placeholder_2:sequential_1/lstm_1/while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2-
+sequential_1/lstm_1/while/lstm_cell_1/mul_7ю
4sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOpReadVariableOp?sequential_1_lstm_1_while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
Ф*
dtype026
4sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOpЧ
9sequential_1/lstm_1/while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9sequential_1/lstm_1/while/lstm_cell_1/strided_slice/stackЫ
;sequential_1/lstm_1/while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ф   2=
;sequential_1/lstm_1/while/lstm_cell_1/strided_slice/stack_1Ы
;sequential_1/lstm_1/while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;sequential_1/lstm_1/while/lstm_cell_1/strided_slice/stack_2т
3sequential_1/lstm_1/while/lstm_cell_1/strided_sliceStridedSlice<sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp:value:0Bsequential_1/lstm_1/while/lstm_cell_1/strided_slice/stack:output:0Dsequential_1/lstm_1/while/lstm_cell_1/strided_slice/stack_1:output:0Dsequential_1/lstm_1/while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask25
3sequential_1/lstm_1/while/lstm_cell_1/strided_slice
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_4MatMul/sequential_1/lstm_1/while/lstm_cell_1/mul_4:z:0<sequential_1/lstm_1/while/lstm_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ20
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_4
)sequential_1/lstm_1/while/lstm_cell_1/addAddV26sequential_1/lstm_1/while/lstm_cell_1/BiasAdd:output:08sequential_1/lstm_1/while/lstm_cell_1/MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2+
)sequential_1/lstm_1/while/lstm_cell_1/addЫ
-sequential_1/lstm_1/while/lstm_cell_1/SigmoidSigmoid-sequential_1/lstm_1/while/lstm_cell_1/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2/
-sequential_1/lstm_1/while/lstm_cell_1/Sigmoidђ
6sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_1ReadVariableOp?sequential_1_lstm_1_while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
Ф*
dtype028
6sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_1Ы
;sequential_1/lstm_1/while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ф   2=
;sequential_1/lstm_1/while/lstm_cell_1/strided_slice_1/stackЯ
=sequential_1/lstm_1/while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_1/lstm_1/while/lstm_cell_1/strided_slice_1/stack_1Я
=sequential_1/lstm_1/while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_1/lstm_1/while/lstm_cell_1/strided_slice_1/stack_2ю
5sequential_1/lstm_1/while/lstm_cell_1/strided_slice_1StridedSlice>sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_1:value:0Dsequential_1/lstm_1/while/lstm_cell_1/strided_slice_1/stack:output:0Fsequential_1/lstm_1/while/lstm_cell_1/strided_slice_1/stack_1:output:0Fsequential_1/lstm_1/while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask27
5sequential_1/lstm_1/while/lstm_cell_1/strided_slice_1
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_5MatMul/sequential_1/lstm_1/while/lstm_cell_1/mul_5:z:0>sequential_1/lstm_1/while/lstm_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ20
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_5
+sequential_1/lstm_1/while/lstm_cell_1/add_1AddV28sequential_1/lstm_1/while/lstm_cell_1/BiasAdd_1:output:08sequential_1/lstm_1/while/lstm_cell_1/MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2-
+sequential_1/lstm_1/while/lstm_cell_1/add_1б
/sequential_1/lstm_1/while/lstm_cell_1/Sigmoid_1Sigmoid/sequential_1/lstm_1/while/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ21
/sequential_1/lstm_1/while/lstm_cell_1/Sigmoid_1ђ
+sequential_1/lstm_1/while/lstm_cell_1/mul_8Mul3sequential_1/lstm_1/while/lstm_cell_1/Sigmoid_1:y:0'sequential_1_lstm_1_while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџФ2-
+sequential_1/lstm_1/while/lstm_cell_1/mul_8ђ
6sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_2ReadVariableOp?sequential_1_lstm_1_while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
Ф*
dtype028
6sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_2Ы
;sequential_1/lstm_1/while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2=
;sequential_1/lstm_1/while/lstm_cell_1/strided_slice_2/stackЯ
=sequential_1/lstm_1/while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2?
=sequential_1/lstm_1/while/lstm_cell_1/strided_slice_2/stack_1Я
=sequential_1/lstm_1/while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_1/lstm_1/while/lstm_cell_1/strided_slice_2/stack_2ю
5sequential_1/lstm_1/while/lstm_cell_1/strided_slice_2StridedSlice>sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_2:value:0Dsequential_1/lstm_1/while/lstm_cell_1/strided_slice_2/stack:output:0Fsequential_1/lstm_1/while/lstm_cell_1/strided_slice_2/stack_1:output:0Fsequential_1/lstm_1/while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask27
5sequential_1/lstm_1/while/lstm_cell_1/strided_slice_2
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_6MatMul/sequential_1/lstm_1/while/lstm_cell_1/mul_6:z:0>sequential_1/lstm_1/while/lstm_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ20
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_6
+sequential_1/lstm_1/while/lstm_cell_1/add_2AddV28sequential_1/lstm_1/while/lstm_cell_1/BiasAdd_2:output:08sequential_1/lstm_1/while/lstm_cell_1/MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2-
+sequential_1/lstm_1/while/lstm_cell_1/add_2Ф
*sequential_1/lstm_1/while/lstm_cell_1/TanhTanh/sequential_1/lstm_1/while/lstm_cell_1/add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2,
*sequential_1/lstm_1/while/lstm_cell_1/Tanhї
+sequential_1/lstm_1/while/lstm_cell_1/mul_9Mul1sequential_1/lstm_1/while/lstm_cell_1/Sigmoid:y:0.sequential_1/lstm_1/while/lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2-
+sequential_1/lstm_1/while/lstm_cell_1/mul_9ј
+sequential_1/lstm_1/while/lstm_cell_1/add_3AddV2/sequential_1/lstm_1/while/lstm_cell_1/mul_8:z:0/sequential_1/lstm_1/while/lstm_cell_1/mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2-
+sequential_1/lstm_1/while/lstm_cell_1/add_3ђ
6sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_3ReadVariableOp?sequential_1_lstm_1_while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
Ф*
dtype028
6sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_3Ы
;sequential_1/lstm_1/while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2=
;sequential_1/lstm_1/while/lstm_cell_1/strided_slice_3/stackЯ
=sequential_1/lstm_1/while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2?
=sequential_1/lstm_1/while/lstm_cell_1/strided_slice_3/stack_1Я
=sequential_1/lstm_1/while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_1/lstm_1/while/lstm_cell_1/strided_slice_3/stack_2ю
5sequential_1/lstm_1/while/lstm_cell_1/strided_slice_3StridedSlice>sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_3:value:0Dsequential_1/lstm_1/while/lstm_cell_1/strided_slice_3/stack:output:0Fsequential_1/lstm_1/while/lstm_cell_1/strided_slice_3/stack_1:output:0Fsequential_1/lstm_1/while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask27
5sequential_1/lstm_1/while/lstm_cell_1/strided_slice_3
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_7MatMul/sequential_1/lstm_1/while/lstm_cell_1/mul_7:z:0>sequential_1/lstm_1/while/lstm_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ20
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_7
+sequential_1/lstm_1/while/lstm_cell_1/add_4AddV28sequential_1/lstm_1/while/lstm_cell_1/BiasAdd_3:output:08sequential_1/lstm_1/while/lstm_cell_1/MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2-
+sequential_1/lstm_1/while/lstm_cell_1/add_4б
/sequential_1/lstm_1/while/lstm_cell_1/Sigmoid_2Sigmoid/sequential_1/lstm_1/while/lstm_cell_1/add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ21
/sequential_1/lstm_1/while/lstm_cell_1/Sigmoid_2Ш
,sequential_1/lstm_1/while/lstm_cell_1/Tanh_1Tanh/sequential_1/lstm_1/while/lstm_cell_1/add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2.
,sequential_1/lstm_1/while/lstm_cell_1/Tanh_1§
,sequential_1/lstm_1/while/lstm_cell_1/mul_10Mul3sequential_1/lstm_1/while/lstm_cell_1/Sigmoid_2:y:00sequential_1/lstm_1/while/lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2.
,sequential_1/lstm_1/while/lstm_cell_1/mul_10Ф
>sequential_1/lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_1_lstm_1_while_placeholder_1%sequential_1_lstm_1_while_placeholder0sequential_1/lstm_1/while/lstm_cell_1/mul_10:z:0*
_output_shapes
: *
element_dtype02@
>sequential_1/lstm_1/while/TensorArrayV2Write/TensorListSetItem
sequential_1/lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_1/lstm_1/while/add/yЙ
sequential_1/lstm_1/while/addAddV2%sequential_1_lstm_1_while_placeholder(sequential_1/lstm_1/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_1/lstm_1/while/add
!sequential_1/lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_1/lstm_1/while/add_1/yк
sequential_1/lstm_1/while/add_1AddV2@sequential_1_lstm_1_while_sequential_1_lstm_1_while_loop_counter*sequential_1/lstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
sequential_1/lstm_1/while/add_1ј
"sequential_1/lstm_1/while/IdentityIdentity#sequential_1/lstm_1/while/add_1:z:05^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp7^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_17^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_27^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_3;^sequential_1/lstm_1/while/lstm_cell_1/split/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2$
"sequential_1/lstm_1/while/Identity
$sequential_1/lstm_1/while/Identity_1IdentityFsequential_1_lstm_1_while_sequential_1_lstm_1_while_maximum_iterations5^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp7^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_17^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_27^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_3;^sequential_1/lstm_1/while/lstm_cell_1/split/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_1/while/Identity_1њ
$sequential_1/lstm_1/while/Identity_2Identity!sequential_1/lstm_1/while/add:z:05^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp7^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_17^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_27^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_3;^sequential_1/lstm_1/while/lstm_cell_1/split/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_1/while/Identity_2Ї
$sequential_1/lstm_1/while/Identity_3IdentityNsequential_1/lstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:05^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp7^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_17^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_27^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_3;^sequential_1/lstm_1/while/lstm_cell_1/split/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_1/while/Identity_3
$sequential_1/lstm_1/while/Identity_4Identity0sequential_1/lstm_1/while/lstm_cell_1/mul_10:z:05^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp7^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_17^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_27^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_3;^sequential_1/lstm_1/while/lstm_cell_1/split/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџФ2&
$sequential_1/lstm_1/while/Identity_4
$sequential_1/lstm_1/while/Identity_5Identity/sequential_1/lstm_1/while/lstm_cell_1/add_3:z:05^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp7^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_17^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_27^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_3;^sequential_1/lstm_1/while/lstm_cell_1/split/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџФ2&
$sequential_1/lstm_1/while/Identity_5"Q
"sequential_1_lstm_1_while_identity+sequential_1/lstm_1/while/Identity:output:0"U
$sequential_1_lstm_1_while_identity_1-sequential_1/lstm_1/while/Identity_1:output:0"U
$sequential_1_lstm_1_while_identity_2-sequential_1/lstm_1/while/Identity_2:output:0"U
$sequential_1_lstm_1_while_identity_3-sequential_1/lstm_1/while/Identity_3:output:0"U
$sequential_1_lstm_1_while_identity_4-sequential_1/lstm_1/while/Identity_4:output:0"U
$sequential_1_lstm_1_while_identity_5-sequential_1/lstm_1/while/Identity_5:output:0"
=sequential_1_lstm_1_while_lstm_cell_1_readvariableop_resource?sequential_1_lstm_1_while_lstm_cell_1_readvariableop_resource_0"
Esequential_1_lstm_1_while_lstm_cell_1_split_1_readvariableop_resourceGsequential_1_lstm_1_while_lstm_cell_1_split_1_readvariableop_resource_0"
Csequential_1_lstm_1_while_lstm_cell_1_split_readvariableop_resourceEsequential_1_lstm_1_while_lstm_cell_1_split_readvariableop_resource_0"
=sequential_1_lstm_1_while_sequential_1_lstm_1_strided_slice_1?sequential_1_lstm_1_while_sequential_1_lstm_1_strided_slice_1_0"ј
ysequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensor{sequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :џџџџџџџџџФ:џџџџџџџџџФ: : :::2l
4sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp4sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp2p
6sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_16sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_12p
6sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_26sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_22p
6sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_36sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_32x
:sequential_1/lstm_1/while/lstm_cell_1/split/ReadVariableOp:sequential_1/lstm_1/while/lstm_cell_1/split/ReadVariableOp2|
<sequential_1/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp<sequential_1/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџФ:.*
(
_output_shapes
:џџџџџџџџџФ:

_output_shapes
: :

_output_shapes
: 

Ю
$sequential_1_lstm_1_while_cond_46866D
@sequential_1_lstm_1_while_sequential_1_lstm_1_while_loop_counterJ
Fsequential_1_lstm_1_while_sequential_1_lstm_1_while_maximum_iterations)
%sequential_1_lstm_1_while_placeholder+
'sequential_1_lstm_1_while_placeholder_1+
'sequential_1_lstm_1_while_placeholder_2+
'sequential_1_lstm_1_while_placeholder_3F
Bsequential_1_lstm_1_while_less_sequential_1_lstm_1_strided_slice_1[
Wsequential_1_lstm_1_while_sequential_1_lstm_1_while_cond_46866___redundant_placeholder0[
Wsequential_1_lstm_1_while_sequential_1_lstm_1_while_cond_46866___redundant_placeholder1[
Wsequential_1_lstm_1_while_sequential_1_lstm_1_while_cond_46866___redundant_placeholder2[
Wsequential_1_lstm_1_while_sequential_1_lstm_1_while_cond_46866___redundant_placeholder3&
"sequential_1_lstm_1_while_identity
д
sequential_1/lstm_1/while/LessLess%sequential_1_lstm_1_while_placeholderBsequential_1_lstm_1_while_less_sequential_1_lstm_1_strided_slice_1*
T0*
_output_shapes
: 2 
sequential_1/lstm_1/while/Less
"sequential_1/lstm_1/while/IdentityIdentity"sequential_1/lstm_1/while/Less:z:0*
T0
*
_output_shapes
: 2$
"sequential_1/lstm_1/while/Identity"Q
"sequential_1_lstm_1_while_identity+sequential_1/lstm_1/while/Identity:output:0*U
_input_shapesD
B: : : : :џџџџџџџџџФ:џџџџџџџџџФ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџФ:.*
(
_output_shapes
:џџџџџџџџџФ:

_output_shapes
: :

_output_shapes
:
і$

while_body_47642
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_1_47666_0
while_lstm_cell_1_47668_0
while_lstm_cell_1_47670_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_1_47666
while_lstm_cell_1_47668
while_lstm_cell_1_47670Ђ)while/lstm_cell_1/StatefulPartitionedCallУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeд
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemк
)while/lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_1_47666_0while_lstm_cell_1_47668_0while_lstm_cell_1_47670_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџФ:џџџџџџџџџФ:џџџџџџџџџФ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_472642+
)while/lstm_cell_1/StatefulPartitionedCallі
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2Й
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3У
while/Identity_4Identity2while/lstm_cell_1/StatefulPartitionedCall:output:1*^while/lstm_cell_1/StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/Identity_4У
while/Identity_5Identity2while/lstm_cell_1/StatefulPartitionedCall:output:2*^while/lstm_cell_1/StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџФ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_1_47666while_lstm_cell_1_47666_0"4
while_lstm_cell_1_47668while_lstm_cell_1_47668_0"4
while_lstm_cell_1_47670while_lstm_cell_1_47670_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :џџџџџџџџџФ:џџџџџџџџџФ: : :::2V
)while/lstm_cell_1/StatefulPartitionedCall)while/lstm_cell_1/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџФ:.*
(
_output_shapes
:џџџџџџџџџФ:

_output_shapes
: :

_output_shapes
: 
бј
Е
A__inference_lstm_1_layer_call_and_return_conditional_losses_49924
inputs_0-
)lstm_cell_1_split_readvariableop_resource/
+lstm_cell_1_split_1_readvariableop_resource'
#lstm_cell_1_readvariableop_resource
identityЂlstm_cell_1/ReadVariableOpЂlstm_cell_1/ReadVariableOp_1Ђlstm_cell_1/ReadVariableOp_2Ђlstm_cell_1/ReadVariableOp_3Ђ lstm_cell_1/split/ReadVariableOpЂ"lstm_cell_1/split_1/ReadVariableOpЂwhileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ф2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ф2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ф2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ф2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2§
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2
lstm_cell_1/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_1/ones_like/Shape
lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_1/ones_like/ConstЕ
lstm_cell_1/ones_likeFill$lstm_cell_1/ones_like/Shape:output:0$lstm_cell_1/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/ones_like{
lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_1/dropout/ConstА
lstm_cell_1/dropout/MulMullstm_cell_1/ones_like:output:0"lstm_cell_1/dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/dropout/Mul
lstm_cell_1/dropout/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout/Shapeј
0lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_1/dropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2шђ22
0lstm_cell_1/dropout/random_uniform/RandomUniform
"lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2$
"lstm_cell_1/dropout/GreaterEqual/yя
 lstm_cell_1/dropout/GreaterEqualGreaterEqual9lstm_cell_1/dropout/random_uniform/RandomUniform:output:0+lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2"
 lstm_cell_1/dropout/GreaterEqualЄ
lstm_cell_1/dropout/CastCast$lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/dropout/CastЋ
lstm_cell_1/dropout/Mul_1Mullstm_cell_1/dropout/Mul:z:0lstm_cell_1/dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/dropout/Mul_1
lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_1/dropout_1/ConstЖ
lstm_cell_1/dropout_1/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/dropout_1/Mul
lstm_cell_1/dropout_1/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_1/Shapeў
2lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_1/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2яо24
2lstm_cell_1/dropout_1/random_uniform/RandomUniform
$lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_1/dropout_1/GreaterEqual/yї
"lstm_cell_1/dropout_1/GreaterEqualGreaterEqual;lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2$
"lstm_cell_1/dropout_1/GreaterEqualЊ
lstm_cell_1/dropout_1/CastCast&lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/dropout_1/CastГ
lstm_cell_1/dropout_1/Mul_1Mullstm_cell_1/dropout_1/Mul:z:0lstm_cell_1/dropout_1/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/dropout_1/Mul_1
lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_1/dropout_2/ConstЖ
lstm_cell_1/dropout_2/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_2/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/dropout_2/Mul
lstm_cell_1/dropout_2/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_2/Shape§
2lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_2/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed224
2lstm_cell_1/dropout_2/random_uniform/RandomUniform
$lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_1/dropout_2/GreaterEqual/yї
"lstm_cell_1/dropout_2/GreaterEqualGreaterEqual;lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2$
"lstm_cell_1/dropout_2/GreaterEqualЊ
lstm_cell_1/dropout_2/CastCast&lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/dropout_2/CastГ
lstm_cell_1/dropout_2/Mul_1Mullstm_cell_1/dropout_2/Mul:z:0lstm_cell_1/dropout_2/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/dropout_2/Mul_1
lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_1/dropout_3/ConstЖ
lstm_cell_1/dropout_3/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_3/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/dropout_3/Mul
lstm_cell_1/dropout_3/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_3/Shapeў
2lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_3/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0*
seedБџх)*
seed2ПьЙ24
2lstm_cell_1/dropout_3/random_uniform/RandomUniform
$lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_1/dropout_3/GreaterEqual/yї
"lstm_cell_1/dropout_3/GreaterEqualGreaterEqual;lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2$
"lstm_cell_1/dropout_3/GreaterEqualЊ
lstm_cell_1/dropout_3/CastCast&lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/dropout_3/CastГ
lstm_cell_1/dropout_3/Mul_1Mullstm_cell_1/dropout_3/Mul:z:0lstm_cell_1/dropout_3/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/dropout_3/Mul_1|
lstm_cell_1/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_1/ones_like_1/Shape
lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_1/ones_like_1/ConstН
lstm_cell_1/ones_like_1Fill&lstm_cell_1/ones_like_1/Shape:output:0&lstm_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/ones_like_1
lstm_cell_1/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_1/dropout_4/ConstИ
lstm_cell_1/dropout_4/MulMul lstm_cell_1/ones_like_1:output:0$lstm_cell_1/dropout_4/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/dropout_4/Mul
lstm_cell_1/dropout_4/ShapeShape lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_4/Shapeў
2lstm_cell_1/dropout_4/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_4/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2оІ24
2lstm_cell_1/dropout_4/random_uniform/RandomUniform
$lstm_cell_1/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_1/dropout_4/GreaterEqual/yї
"lstm_cell_1/dropout_4/GreaterEqualGreaterEqual;lstm_cell_1/dropout_4/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2$
"lstm_cell_1/dropout_4/GreaterEqualЊ
lstm_cell_1/dropout_4/CastCast&lstm_cell_1/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/dropout_4/CastГ
lstm_cell_1/dropout_4/Mul_1Mullstm_cell_1/dropout_4/Mul:z:0lstm_cell_1/dropout_4/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/dropout_4/Mul_1
lstm_cell_1/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_1/dropout_5/ConstИ
lstm_cell_1/dropout_5/MulMul lstm_cell_1/ones_like_1:output:0$lstm_cell_1/dropout_5/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/dropout_5/Mul
lstm_cell_1/dropout_5/ShapeShape lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_5/Shape§
2lstm_cell_1/dropout_5/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_5/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2ъ24
2lstm_cell_1/dropout_5/random_uniform/RandomUniform
$lstm_cell_1/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_1/dropout_5/GreaterEqual/yї
"lstm_cell_1/dropout_5/GreaterEqualGreaterEqual;lstm_cell_1/dropout_5/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2$
"lstm_cell_1/dropout_5/GreaterEqualЊ
lstm_cell_1/dropout_5/CastCast&lstm_cell_1/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/dropout_5/CastГ
lstm_cell_1/dropout_5/Mul_1Mullstm_cell_1/dropout_5/Mul:z:0lstm_cell_1/dropout_5/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/dropout_5/Mul_1
lstm_cell_1/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_1/dropout_6/ConstИ
lstm_cell_1/dropout_6/MulMul lstm_cell_1/ones_like_1:output:0$lstm_cell_1/dropout_6/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/dropout_6/Mul
lstm_cell_1/dropout_6/ShapeShape lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_6/Shapeў
2lstm_cell_1/dropout_6/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_6/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2­24
2lstm_cell_1/dropout_6/random_uniform/RandomUniform
$lstm_cell_1/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_1/dropout_6/GreaterEqual/yї
"lstm_cell_1/dropout_6/GreaterEqualGreaterEqual;lstm_cell_1/dropout_6/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2$
"lstm_cell_1/dropout_6/GreaterEqualЊ
lstm_cell_1/dropout_6/CastCast&lstm_cell_1/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/dropout_6/CastГ
lstm_cell_1/dropout_6/Mul_1Mullstm_cell_1/dropout_6/Mul:z:0lstm_cell_1/dropout_6/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/dropout_6/Mul_1
lstm_cell_1/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_1/dropout_7/ConstИ
lstm_cell_1/dropout_7/MulMul lstm_cell_1/ones_like_1:output:0$lstm_cell_1/dropout_7/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/dropout_7/Mul
lstm_cell_1/dropout_7/ShapeShape lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_7/Shapeў
2lstm_cell_1/dropout_7/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_7/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ*
dtype0*
seedБџх)*
seed2еЭќ24
2lstm_cell_1/dropout_7/random_uniform/RandomUniform
$lstm_cell_1/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2&
$lstm_cell_1/dropout_7/GreaterEqual/yї
"lstm_cell_1/dropout_7/GreaterEqualGreaterEqual;lstm_cell_1/dropout_7/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2$
"lstm_cell_1/dropout_7/GreaterEqualЊ
lstm_cell_1/dropout_7/CastCast&lstm_cell_1/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/dropout_7/CastГ
lstm_cell_1/dropout_7/Mul_1Mullstm_cell_1/dropout_7/Mul:z:0lstm_cell_1/dropout_7/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/dropout_7/Mul_1
lstm_cell_1/mulMulstrided_slice_2:output:0lstm_cell_1/dropout/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/mul
lstm_cell_1/mul_1Mulstrided_slice_2:output:0lstm_cell_1/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/mul_1
lstm_cell_1/mul_2Mulstrided_slice_2:output:0lstm_cell_1/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/mul_2
lstm_cell_1/mul_3Mulstrided_slice_2:output:0lstm_cell_1/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ2
lstm_cell_1/mul_3h
lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/Const|
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/split/split_dimА
 lstm_cell_1/split/ReadVariableOpReadVariableOp)lstm_cell_1_split_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 lstm_cell_1/split/ReadVariableOpп
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0(lstm_cell_1/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ф:
Ф:
Ф:
Ф*
	num_split2
lstm_cell_1/split
lstm_cell_1/MatMulMatMullstm_cell_1/mul:z:0lstm_cell_1/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul
lstm_cell_1/MatMul_1MatMullstm_cell_1/mul_1:z:0lstm_cell_1/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_1
lstm_cell_1/MatMul_2MatMullstm_cell_1/mul_2:z:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_2
lstm_cell_1/MatMul_3MatMullstm_cell_1/mul_3:z:0lstm_cell_1/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_3l
lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/Const_1
lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_1/split_1/split_dimБ
"lstm_cell_1/split_1/ReadVariableOpReadVariableOp+lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02$
"lstm_cell_1/split_1/ReadVariableOpг
lstm_cell_1/split_1Split&lstm_cell_1/split_1/split_dim:output:0*lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ф:Ф:Ф:Ф*
	num_split2
lstm_cell_1/split_1Є
lstm_cell_1/BiasAddBiasAddlstm_cell_1/MatMul:product:0lstm_cell_1/split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/BiasAddЊ
lstm_cell_1/BiasAdd_1BiasAddlstm_cell_1/MatMul_1:product:0lstm_cell_1/split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/BiasAdd_1Њ
lstm_cell_1/BiasAdd_2BiasAddlstm_cell_1/MatMul_2:product:0lstm_cell_1/split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/BiasAdd_2Њ
lstm_cell_1/BiasAdd_3BiasAddlstm_cell_1/MatMul_3:product:0lstm_cell_1/split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/BiasAdd_3
lstm_cell_1/mul_4Mulzeros:output:0lstm_cell_1/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_4
lstm_cell_1/mul_5Mulzeros:output:0lstm_cell_1/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_5
lstm_cell_1/mul_6Mulzeros:output:0lstm_cell_1/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_6
lstm_cell_1/mul_7Mulzeros:output:0lstm_cell_1/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_7
lstm_cell_1/ReadVariableOpReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
Ф*
dtype02
lstm_cell_1/ReadVariableOp
lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_1/strided_slice/stack
!lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ф   2#
!lstm_cell_1/strided_slice/stack_1
!lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_1/strided_slice/stack_2Ц
lstm_cell_1/strided_sliceStridedSlice"lstm_cell_1/ReadVariableOp:value:0(lstm_cell_1/strided_slice/stack:output:0*lstm_cell_1/strided_slice/stack_1:output:0*lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
lstm_cell_1/strided_sliceЄ
lstm_cell_1/MatMul_4MatMullstm_cell_1/mul_4:z:0"lstm_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_4
lstm_cell_1/addAddV2lstm_cell_1/BiasAdd:output:0lstm_cell_1/MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/add}
lstm_cell_1/SigmoidSigmoidlstm_cell_1/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/SigmoidЂ
lstm_cell_1/ReadVariableOp_1ReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
Ф*
dtype02
lstm_cell_1/ReadVariableOp_1
!lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ф   2#
!lstm_cell_1/strided_slice_1/stack
#lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_1/stack_1
#lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_1/stack_2в
lstm_cell_1/strided_slice_1StridedSlice$lstm_cell_1/ReadVariableOp_1:value:0*lstm_cell_1/strided_slice_1/stack:output:0,lstm_cell_1/strided_slice_1/stack_1:output:0,lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_1І
lstm_cell_1/MatMul_5MatMullstm_cell_1/mul_5:z:0$lstm_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_5Ђ
lstm_cell_1/add_1AddV2lstm_cell_1/BiasAdd_1:output:0lstm_cell_1/MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/add_1
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/Sigmoid_1
lstm_cell_1/mul_8Mullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_8Ђ
lstm_cell_1/ReadVariableOp_2ReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
Ф*
dtype02
lstm_cell_1/ReadVariableOp_2
!lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_1/strided_slice_2/stack
#lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2%
#lstm_cell_1/strided_slice_2/stack_1
#lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_2/stack_2в
lstm_cell_1/strided_slice_2StridedSlice$lstm_cell_1/ReadVariableOp_2:value:0*lstm_cell_1/strided_slice_2/stack:output:0,lstm_cell_1/strided_slice_2/stack_1:output:0,lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_2І
lstm_cell_1/MatMul_6MatMullstm_cell_1/mul_6:z:0$lstm_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_6Ђ
lstm_cell_1/add_2AddV2lstm_cell_1/BiasAdd_2:output:0lstm_cell_1/MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/add_2v
lstm_cell_1/TanhTanhlstm_cell_1/add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/Tanh
lstm_cell_1/mul_9Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_9
lstm_cell_1/add_3AddV2lstm_cell_1/mul_8:z:0lstm_cell_1/mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/add_3Ђ
lstm_cell_1/ReadVariableOp_3ReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
Ф*
dtype02
lstm_cell_1/ReadVariableOp_3
!lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2#
!lstm_cell_1/strided_slice_3/stack
#lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_1/strided_slice_3/stack_1
#lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_3/stack_2в
lstm_cell_1/strided_slice_3StridedSlice$lstm_cell_1/ReadVariableOp_3:value:0*lstm_cell_1/strided_slice_3/stack:output:0,lstm_cell_1/strided_slice_3/stack_1:output:0,lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ФФ*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_3І
lstm_cell_1/MatMul_7MatMullstm_cell_1/mul_7:z:0$lstm_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/MatMul_7Ђ
lstm_cell_1/add_4AddV2lstm_cell_1/BiasAdd_3:output:0lstm_cell_1/MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/add_4
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/Sigmoid_2z
lstm_cell_1/Tanh_1Tanhlstm_cell_1/add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/Tanh_1
lstm_cell_1/mul_10Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
lstm_cell_1/mul_10
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџФ   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterу
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_1_split_readvariableop_resource+lstm_cell_1_split_1_readvariableop_resource#lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџФ:џџџџџџџџџФ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_49724*
condR
while_cond_49723*M
output_shapes<
:: : : : :џџџџџџџџџФ:џџџџџџџџџФ: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџФ   22
0TensorArrayV2Stack/TensorListStack/element_shapeђ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџФ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџФ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЏ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџФ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeЗ
IdentityIdentitystrided_slice_3:output:0^lstm_cell_1/ReadVariableOp^lstm_cell_1/ReadVariableOp_1^lstm_cell_1/ReadVariableOp_2^lstm_cell_1/ReadVariableOp_3!^lstm_cell_1/split/ReadVariableOp#^lstm_cell_1/split_1/ReadVariableOp^while*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:џџџџџџџџџџџџџџџџџџ:::28
lstm_cell_1/ReadVariableOplstm_cell_1/ReadVariableOp2<
lstm_cell_1/ReadVariableOp_1lstm_cell_1/ReadVariableOp_12<
lstm_cell_1/ReadVariableOp_2lstm_cell_1/ReadVariableOp_22<
lstm_cell_1/ReadVariableOp_3lstm_cell_1/ReadVariableOp_32D
 lstm_cell_1/split/ReadVariableOp lstm_cell_1/split/ReadVariableOp2H
"lstm_cell_1/split_1/ReadVariableOp"lstm_cell_1/split_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
Њ
О
while_cond_48416
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_48416___redundant_placeholder03
/while_while_cond_48416___redundant_placeholder13
/while_while_cond_48416___redundant_placeholder23
/while_while_cond_48416___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :џџџџџџџџџФ:џџџџџџџџџФ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџФ:.*
(
_output_shapes
:џџџџџџџџџФ:

_output_shapes
: :

_output_shapes
:"БL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*О
serving_defaultЊ
O
embedding_1_input:
#serving_default_embedding_1_input:0џџџџџџџџџ+;
dense_10
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:ж
м*
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
	variables
regularization_losses
trainable_variables
		keras_api


signatures
b_default_save_signature
c__call__
*d&call_and_return_all_conditional_losses"(
_tf_keras_sequential№'{"class_name": "Sequential", "name": "sequential_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 43]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_1_input"}}, {"class_name": "Embedding", "config": {"name": "embedding_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 43]}, "dtype": "float32", "input_dim": 37320, "output_dim": 128, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 43}}, {"class_name": "SpatialDropout1D", "config": {"name": "spatial_dropout1d_1", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}, {"class_name": "LSTM", "config": {"name": "lstm_1", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 196, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.2, "implementation": 1}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 3, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 43]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 43]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_1_input"}}, {"class_name": "Embedding", "config": {"name": "embedding_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 43]}, "dtype": "float32", "input_dim": 37320, "output_dim": 128, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 43}}, {"class_name": "SpatialDropout1D", "config": {"name": "spatial_dropout1d_1", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}, {"class_name": "LSTM", "config": {"name": "lstm_1", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 196, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.2, "implementation": 1}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 3, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
Њ

embeddings
	variables
regularization_losses
trainable_variables
	keras_api
e__call__
*f&call_and_return_all_conditional_losses"
_tf_keras_layerё{"class_name": "Embedding", "name": "embedding_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 43]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 43]}, "dtype": "float32", "input_dim": 37320, "output_dim": 128, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 43}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 43]}}

	variables
regularization_losses
trainable_variables
	keras_api
g__call__
*h&call_and_return_all_conditional_losses"
_tf_keras_layerщ{"class_name": "SpatialDropout1D", "name": "spatial_dropout1d_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "spatial_dropout1d_1", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}
Р
cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
i__call__
*j&call_and_return_all_conditional_losses"

_tf_keras_rnn_layerљ	{"class_name": "LSTM", "name": "lstm_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_1", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 196, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.2, "implementation": 1}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 128]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 43, 128]}}
є

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
k__call__
*l&call_and_return_all_conditional_losses"Я
_tf_keras_layerЕ{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 3, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 196}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 196]}}
П
 iter

!beta_1

"beta_2
	#decay
$learning_ratemVmWmX%mY&mZ'm[v\v]v^%v_&v`'va"
	optimizer
J
0
%1
&2
'3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
J
0
%1
&2
'3
4
5"
trackable_list_wrapper
Ъ
(layer_metrics
	variables
regularization_losses

)layers
*non_trainable_variables
trainable_variables
+layer_regularization_losses
,metrics
c__call__
b_default_save_signature
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
,
mserving_default"
signature_map
+:)ШЃ2embedding_1/embeddings
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
­
-layer_metrics
	variables
regularization_losses

.layers
/non_trainable_variables
trainable_variables
0layer_regularization_losses
1metrics
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
2layer_metrics
	variables
regularization_losses

3layers
4non_trainable_variables
trainable_variables
5layer_regularization_losses
6metrics
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
Љ

%kernel
&recurrent_kernel
'bias
7	variables
8regularization_losses
9trainable_variables
:	keras_api
n__call__
*o&call_and_return_all_conditional_losses"ю
_tf_keras_layerд{"class_name": "LSTMCell", "name": "lstm_cell_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell_1", "trainable": true, "dtype": "float32", "units": 196, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.2, "implementation": 1}}
 "
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
Й
;layer_metrics
	variables
regularization_losses

<layers
=non_trainable_variables

>states
trainable_variables
?layer_regularization_losses
@metrics
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
!:	Ф2dense_1/kernel
:2dense_1/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
Alayer_metrics
	variables
regularization_losses

Blayers
Cnon_trainable_variables
trainable_variables
Dlayer_regularization_losses
Emetrics
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
-:+
2lstm_1/lstm_cell_1/kernel
7:5
Ф2#lstm_1/lstm_cell_1/recurrent_kernel
&:$2lstm_1/lstm_cell_1/bias
 "
trackable_dict_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
F0
G1"
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
5
%0
&1
'2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
­
Hlayer_metrics
7	variables
8regularization_losses

Ilayers
Jnon_trainable_variables
9trainable_variables
Klayer_regularization_losses
Lmetrics
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
'
0"
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
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Л
	Mtotal
	Ncount
O	variables
P	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
џ
	Qtotal
	Rcount
S
_fn_kwargs
T	variables
U	keras_api"И
_tf_keras_metric{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
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
:  (2total
:  (2count
.
M0
N1"
trackable_list_wrapper
-
O	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
Q0
R1"
trackable_list_wrapper
-
T	variables"
_generic_user_object
0:.ШЃ2Adam/embedding_1/embeddings/m
&:$	Ф2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
2:0
2 Adam/lstm_1/lstm_cell_1/kernel/m
<::
Ф2*Adam/lstm_1/lstm_cell_1/recurrent_kernel/m
+:)2Adam/lstm_1/lstm_cell_1/bias/m
0:.ШЃ2Adam/embedding_1/embeddings/v
&:$	Ф2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v
2:0
2 Adam/lstm_1/lstm_cell_1/kernel/v
<::
Ф2*Adam/lstm_1/lstm_cell_1/recurrent_kernel/v
+:)2Adam/lstm_1/lstm_cell_1/bias/v
ш2х
 __inference__wrapped_model_47010Р
В
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *0Ђ-
+(
embedding_1_inputџџџџџџџџџ+
ў2ћ
,__inference_sequential_1_layer_call_fn_49450
,__inference_sequential_1_layer_call_fn_49433
,__inference_sequential_1_layer_call_fn_48669
,__inference_sequential_1_layer_call_fn_48706Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ъ2ч
G__inference_sequential_1_layer_call_and_return_conditional_losses_49147
G__inference_sequential_1_layer_call_and_return_conditional_losses_49416
G__inference_sequential_1_layer_call_and_return_conditional_losses_48611
G__inference_sequential_1_layer_call_and_return_conditional_losses_48631Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
е2в
+__inference_embedding_1_layer_call_fn_49467Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№2э
F__inference_embedding_1_layer_call_and_return_conditional_losses_49460Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
3__inference_spatial_dropout1d_1_layer_call_fn_49541
3__inference_spatial_dropout1d_1_layer_call_fn_49536
3__inference_spatial_dropout1d_1_layer_call_fn_49499
3__inference_spatial_dropout1d_1_layer_call_fn_49504Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
њ2ї
N__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_49526
N__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_49494
N__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_49489
N__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_49531Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ћ2ј
&__inference_lstm_1_layer_call_fn_50190
&__inference_lstm_1_layer_call_fn_50861
&__inference_lstm_1_layer_call_fn_50850
&__inference_lstm_1_layer_call_fn_50201е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ч2ф
A__inference_lstm_1_layer_call_and_return_conditional_losses_50179
A__inference_lstm_1_layer_call_and_return_conditional_losses_49924
A__inference_lstm_1_layer_call_and_return_conditional_losses_50584
A__inference_lstm_1_layer_call_and_return_conditional_losses_50839е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
б2Ю
'__inference_dense_1_layer_call_fn_50881Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ь2щ
B__inference_dense_1_layer_call_and_return_conditional_losses_50872Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
дBб
#__inference_signature_wrapper_48733embedding_1_input"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
+__inference_lstm_cell_1_layer_call_fn_51130
+__inference_lstm_cell_1_layer_call_fn_51147О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
д2б
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_51029
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_51113О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
 __inference__wrapped_model_47010w%'&:Ђ7
0Ђ-
+(
embedding_1_inputџџџџџџџџџ+
Њ "1Њ.
,
dense_1!
dense_1џџџџџџџџџЃ
B__inference_dense_1_layer_call_and_return_conditional_losses_50872]0Ђ-
&Ђ#
!
inputsџџџџџџџџџФ
Њ "%Ђ"

0џџџџџџџџџ
 {
'__inference_dense_1_layer_call_fn_50881P0Ђ-
&Ђ#
!
inputsџџџџџџџџџФ
Њ "џџџџџџџџџЊ
F__inference_embedding_1_layer_call_and_return_conditional_losses_49460`/Ђ,
%Ђ"
 
inputsџџџџџџџџџ+
Њ "*Ђ'
 
0џџџџџџџџџ+
 
+__inference_embedding_1_layer_call_fn_49467S/Ђ,
%Ђ"
 
inputsџџџџџџџџџ+
Њ "џџџџџџџџџ+Ф
A__inference_lstm_1_layer_call_and_return_conditional_losses_49924%'&PЂM
FЂC
52
0-
inputs/0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "&Ђ#

0џџџџџџџџџФ
 Ф
A__inference_lstm_1_layer_call_and_return_conditional_losses_50179%'&PЂM
FЂC
52
0-
inputs/0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "&Ђ#

0џџџџџџџџџФ
 Д
A__inference_lstm_1_layer_call_and_return_conditional_losses_50584o%'&@Ђ=
6Ђ3
%"
inputsџџџџџџџџџ+

 
p

 
Њ "&Ђ#

0џџџџџџџџџФ
 Д
A__inference_lstm_1_layer_call_and_return_conditional_losses_50839o%'&@Ђ=
6Ђ3
%"
inputsџџџџџџџџџ+

 
p 

 
Њ "&Ђ#

0џџџџџџџџџФ
 
&__inference_lstm_1_layer_call_fn_50190r%'&PЂM
FЂC
52
0-
inputs/0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "џџџџџџџџџФ
&__inference_lstm_1_layer_call_fn_50201r%'&PЂM
FЂC
52
0-
inputs/0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "џџџџџџџџџФ
&__inference_lstm_1_layer_call_fn_50850b%'&@Ђ=
6Ђ3
%"
inputsџџџџџџџџџ+

 
p

 
Њ "џџџџџџџџџФ
&__inference_lstm_1_layer_call_fn_50861b%'&@Ђ=
6Ђ3
%"
inputsџџџџџџџџџ+

 
p 

 
Њ "џџџџџџџџџФЯ
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_51029%'&Ђ
yЂv
!
inputsџџџџџџџџџ
MЂJ
# 
states/0џџџџџџџџџФ
# 
states/1џџџџџџџџџФ
p
Њ "vЂs
lЂi

0/0џџџџџџџџџФ
GD
 
0/1/0џџџџџџџџџФ
 
0/1/1џџџџџџџџџФ
 Я
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_51113%'&Ђ
yЂv
!
inputsџџџџџџџџџ
MЂJ
# 
states/0џџџџџџџџџФ
# 
states/1џџџџџџџџџФ
p 
Њ "vЂs
lЂi

0/0џџџџџџџџџФ
GD
 
0/1/0џџџџџџџџџФ
 
0/1/1џџџџџџџџџФ
 Є
+__inference_lstm_cell_1_layer_call_fn_51130є%'&Ђ
yЂv
!
inputsџџџџџџџџџ
MЂJ
# 
states/0џџџџџџџџџФ
# 
states/1џџџџџџџџџФ
p
Њ "fЂc

0џџџџџџџџџФ
C@

1/0џџџџџџџџџФ

1/1џџџџџџџџџФЄ
+__inference_lstm_cell_1_layer_call_fn_51147є%'&Ђ
yЂv
!
inputsџџџџџџџџџ
MЂJ
# 
states/0џџџџџџџџџФ
# 
states/1џџџџџџџџџФ
p 
Њ "fЂc

0џџџџџџџџџФ
C@

1/0џџџџџџџџџФ

1/1џџџџџџџџџФО
G__inference_sequential_1_layer_call_and_return_conditional_losses_48611s%'&BЂ?
8Ђ5
+(
embedding_1_inputџџџџџџџџџ+
p

 
Њ "%Ђ"

0џџџџџџџџџ
 О
G__inference_sequential_1_layer_call_and_return_conditional_losses_48631s%'&BЂ?
8Ђ5
+(
embedding_1_inputџџџџџџџџџ+
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 Г
G__inference_sequential_1_layer_call_and_return_conditional_losses_49147h%'&7Ђ4
-Ђ*
 
inputsџџџџџџџџџ+
p

 
Њ "%Ђ"

0џџџџџџџџџ
 Г
G__inference_sequential_1_layer_call_and_return_conditional_losses_49416h%'&7Ђ4
-Ђ*
 
inputsџџџџџџџџџ+
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 
,__inference_sequential_1_layer_call_fn_48669f%'&BЂ?
8Ђ5
+(
embedding_1_inputџџџџџџџџџ+
p

 
Њ "џџџџџџџџџ
,__inference_sequential_1_layer_call_fn_48706f%'&BЂ?
8Ђ5
+(
embedding_1_inputџџџџџџџџџ+
p 

 
Њ "џџџџџџџџџ
,__inference_sequential_1_layer_call_fn_49433[%'&7Ђ4
-Ђ*
 
inputsџџџџџџџџџ+
p

 
Њ "џџџџџџџџџ
,__inference_sequential_1_layer_call_fn_49450[%'&7Ђ4
-Ђ*
 
inputsџџџџџџџџџ+
p 

 
Њ "џџџџџџџџџД
#__inference_signature_wrapper_48733%'&OЂL
Ђ 
EЊB
@
embedding_1_input+(
embedding_1_inputџџџџџџџџџ+"1Њ.
,
dense_1!
dense_1џџџџџџџџџИ
N__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_49489f8Ђ5
.Ђ+
%"
inputsџџџџџџџџџ+
p
Њ "*Ђ'
 
0џџџџџџџџџ+
 И
N__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_49494f8Ђ5
.Ђ+
%"
inputsџџџџџџџџџ+
p 
Њ "*Ђ'
 
0џџџџџџџџџ+
 л
N__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_49526IЂF
?Ђ<
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p
Њ ";Ђ8
1.
0'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 л
N__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_49531IЂF
?Ђ<
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 
Њ ";Ђ8
1.
0'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
3__inference_spatial_dropout1d_1_layer_call_fn_49499Y8Ђ5
.Ђ+
%"
inputsџџџџџџџџџ+
p
Њ "џџџџџџџџџ+
3__inference_spatial_dropout1d_1_layer_call_fn_49504Y8Ђ5
.Ђ+
%"
inputsџџџџџџџџџ+
p 
Њ "џџџџџџџџџ+В
3__inference_spatial_dropout1d_1_layer_call_fn_49536{IЂF
?Ђ<
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p
Њ ".+'џџџџџџџџџџџџџџџџџџџџџџџџџџџВ
3__inference_spatial_dropout1d_1_layer_call_fn_49541{IЂF
?Ђ<
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 
Њ ".+'џџџџџџџџџџџџџџџџџџџџџџџџџџџ