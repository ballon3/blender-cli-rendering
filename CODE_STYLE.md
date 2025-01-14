Warning: the following requirements are not fully satisfied in the current scripts. This issue needs to be fixed.

## Formatting

PEP8 with an exception of using 120-column-limit.

`yapf` users can easily ensure this rule by the following command:
```
find . -name "*.py" | xargs -I {} yapf --style='{based_on_style: pep8, column_limit: 120}' -i {}
```

Useful link: <https://wiki.blender.org/wiki/Style_Guide/Python>

## Naming Conventions

- A function named `create_XXX` instantiates an `object`/`node` to the specified `scene`/`node_tree`. This function returns the newly created `object`/`node`.
- A function named `create_XXXs` instantiates a set of `object`/`node` to the specified `scene`/`node_tree`. This function returns a tuple of the newly created `object`/`node`.
- A function named `build_XXX` manipulates the specified `scene`/`node_tree` by various operations; for example, by instantiating a set of objects. This function does not return anything.
- A function named `set_XXX` changes parameters of specified objects etc. This function does not instantiate new objects. This function does not return anything.
- A function named `add_XXX_constraint`/`modifier` adds either a constraint or modifier to an object. This function does not instantiate new objects. This function does not return anything.
- A function named `add_XXX_YYY` adds a data-block to data-blocks in `bpy.data.YYYs`. This function does not instantiate any `object`/`node` to `scene`/`node_tree`. This function returns the newly added `YYY`.
