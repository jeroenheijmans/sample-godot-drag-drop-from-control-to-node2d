# Sample Godot 4 Drag & Drop between Control and Node2D nodes

This sample demonstrates how you could Drag & Drop items from a `Control` node, to _either_ another `Control` or onto a `Node2D` (via a `SubViewport`).

## Notes

Be warned!
This repository:

- Was created while _learning_ Godot 4, and is _not_ "expert advice";
- Will likely not be kept up to date;
- Might have differences for Godot 3.x and earlier;

Still, it might help someone!

## Demo

This is what it should do:

![sample-godot-drag-and-drop-between-control-and-node2d.gif](sample-godot-drag-and-drop-between-control-and-node2d.gif)

I found this Question without any answer, and wanted the same thing. I'm a beginner with Godot but still came up with something that works, not sure if it would hold up or is proper. Disclaimers out of the way, here's my solution.

## The essence

The essence of the repository linked above is:

- Encapsulate the `Node2D` stuff in a `SubViewport` node that's again a child of a `SubViewportContainer`node;
- Implement the `_drop_data(...)` function on the `SubViewportcontainer`;
- Make it "drop" the actual stuff as a child of the `Node2D` stuff

See the various scripts for how this works:

- [`item.gd`](src/item.gd): for the start of Drag & Drop operations
- [`drop_zone_sub_viewport_container.gd`](src/drop_zone_sub_viewport_container.gd): for the Drop part onto a `Node2D` target, via a `SubViewportContainer`
- [`drop_zone_control_node.gd`](src/drop_zone_control_node.gd): for the Drop part onto a `Control` target
