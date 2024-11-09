class_name CargoHold extends Object

var cargo_hold_items: Array = []

func add_item(name: String, quantity: int) -> void:
	cargo_hold_items.append(CargoItem.new(name, quantity))

func get_manifest() -> String:
	var manifest_in_text: String = ""
	for item in cargo_hold_items:
		manifest_in_text += item.name + ": " + str(item.quantity) + "\n"
	return manifest_in_text.strip_edges()
