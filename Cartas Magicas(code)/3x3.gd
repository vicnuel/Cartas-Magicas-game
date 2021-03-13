extends Node2D
func clone(lista):
	var clone = []
	for objeto in lista:
		clone.append(objeto)
	return clone
onready var lbl = $lbl1
onready var lbl2 = $lbl2
onready var mago = $mago
onready var btn = $Button
onready var btn2 = $Button2
onready var btn3 = $Button3
onready var A = [[$A0, $A3, $A6 ],
		 [$A1, $A4, $A7],
		 [$A2, $A5, $A8]]
var A1 = [["res://imagens/A1.png","res://imagens/A2.png","res://imagens/A3.png"  ],
		["res://imagens/A4.png","res://imagens/A5.png", "res://imagens/A6.png"],
		["res://imagens/A7.png", "res://imagens/A8.png","res://imagens/A9.png" ]]
var B = [["res://imagens/A1.png", "res://imagens/A4.png","res://imagens/A7.png" ],
		["res://imagens/A2.png", "res://imagens/A5.png","res://imagens/A8.png" ],
		["res://imagens/A3.png", "res://imagens/A6.png", "res://imagens/A9.png"]]
var C = [["res://imagens/A1.png", "res://imagens/A4.png","res://imagens/A7.png" ],
		["res://imagens/A2.png", "res://imagens/A5.png","res://imagens/A8.png" ],
		["res://imagens/A3.png", "res://imagens/A6.png", "res://imagens/A9.png"]]

var col1 = [["res://imagens/A4.png", "res://imagens/A1.png","res://imagens/A7.png" ],
			["res://imagens/A5.png","res://imagens/A2.png", "res://imagens/A8.png"],
			["res://imagens/A6.png","res://imagens/A3.png", "res://imagens/A9.png"]]

var col3 = [["res://imagens/A1.png", "res://imagens/A7.png","res://imagens/A4.png" ],
			["res://imagens/A2.png", "res://imagens/A8.png","res://imagens/A5.png" ],
			["res://imagens/A3.png", "res://imagens/A9.png", "res://imagens/A6.png"]]
var coluna = 0 
var D = 0
var res
func _ready():
	pass # Replace with function body.



func _on_Button_pressed():
	if D<2:
		if D == 0:
			C = clone(col1.duplicate())
			for j in range(len(A)):
				for i in range(len(A[0])):
					A[j][i].texture = load(C[i][j])
			for j in range(len(A)):
				for i in range(len(A[0])):
					B[j][i] = C[i][j]
			 lbl.text = "Indique a coluna onde a carta está novamente."
		else:
			for i in range(len(A)):
				if B[i][0] in A1[coluna]:
					res = B[i][0]
					
			for j in range(len(A)):
				for i in range(len(A[0])):
					A[j][i].texture = load("none")
			A[1][1].texture= load(res)
			A[1][1].scale.x = 2
			A[1][1].scale.y = 2
			lbl.visible = false
			lbl2.visible = true
			mago.visible = true
			btn.visible = false
			btn2.visible = false
			btn3.visible = false
		C = clone(B.duplicate())
		print(B)
		print(C)
		D+=1
		coluna = 0


func _on_Button2_pressed():
	if D<2:
		if D == 0:
			for j in range(len(A)):
				for i in range(len(A[0])):
					A[j][i].texture = load(C[i][j])
			for j in range(len(A)):
				for i in range(len(A[0])):
					B[j][i] = C[i][j]
			lbl.text = "Indique a coluna onde a carta está novamente."
		else:
			for i in range(len(A)):
				if B[i][1] in A1[coluna]:
					res = B[i][1]
					
			for j in range(len(A)):
				for i in range(len(A[0])):
					A[j][i].texture = load("none")
			A[1][1].texture= load(res)
			A[1][1].scale.x = 2
			A[1][1].scale.y = 2
			lbl.visible = false
			lbl2.visible = true
			mago.visible = true
			btn.visible = false
			btn2.visible = false
			btn3.visible = false
		C = clone(B.duplicate())
		D+=1
		coluna = 1


func _on_Button3_pressed():
	if D<2:
		if D == 0:
			C = clone(col3.duplicate())
			for j in range(len(A)):
				for i in range(len(A[0])):
					A[j][i].texture = load(C[i][j])
			for j in range(len(A)):
				for i in range(len(A[0])):
					B[j][i] = C[i][j]
			lbl.text = "Indique a coluna onde a carta está novamente."
		else:
			for i in range(len(A)):
				if B[i][2] in A1[coluna]:
					res = B[i][2]
					
			for j in range(len(A)):
				for i in range(len(A[0])):
					A[j][i].texture = load("none")
			A[1][1].texture= load(res)
			A[1][1].scale.x = 2
			A[1][1].scale.y = 2
			lbl.visible = false
			lbl2.visible = true
			mago.visible = true
			btn.visible = false
			btn2.visible = false
			btn3.visible = false
		C = clone(B.duplicate())
		print(B)
		D+=1
		coluna = 2


func _on_Button4_pressed():
	get_tree().change_scene("res://menu2.tscn")


func _on_Button5_pressed():
	get_tree().change_scene("res://3x3.tscn")
