# standing or sneaking enabled?
execute if score standing timber matches 1.. unless predicate timber:sneaking if predicate timber:timber_axe run function timber:run
execute if score sneaking timber matches 1.. if predicate timber:sneaking if predicate timber:timber_axe run function timber:run