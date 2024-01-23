extends Control

@onready var anim = get_node("AnimatedSprite2D")
@onready var money_text = get_node("Label")

signal change_value(value: int)

var amount: int
# Called when the node enters the scene tree for the first time.
func _ready():
	anim.play()
	amount = 100
	self.change_value.connect(change_money)
	#set default amount to 100 for testing
	money_text.change_amount(amount)


func change_money(value):
	amount += value
	money_text.change_amount(amount)
