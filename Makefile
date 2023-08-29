CC = gcc
CFLAGS = -Wall -Wextra -Werror -pedantic
SRC-0 = binary_tree_print.c 0-main.c 0-binary_tree_node.c
SRC-1 = binary_tree_print.c 1-main.c 1-binary_tree_insert_left.c \
	0-binary_tree_node.c
SRC-2 = binary_tree_print.c 2-main.c 2-binary_tree_insert_right.c \
	0-binary_tree_node.c
SRC-3 = binary_tree_print.c 3-main.c 3-binary_tree_delete.c \
	0-binary_tree_node.c 2-binary_tree_insert_right.c
SRC-4 = binary_tree_print.c 4-binary_tree_is_leaf.c 4-main.c \
	0-binary_tree_node.c 2-binary_tree_insert_right.c
SRC-5 = binary_tree_print.c 5-binary_tree_is_root.c 5-main.c \
	0-binary_tree_node.c 2-binary_tree_insert_right.c
SRC-6 = binary_tree_print.c 6-main.c 6-binary_tree_preorder.c \
	0-binary_tree_node.c
SRC-7 = binary_tree_print.c 7-main.c 7-binary_tree_inorder.c 0-binary_tree_node.c
FILES = binary_trees.h 0-binary_tree_node.c 1-binary_tree_insert_left.c \
	2-binary_tree_insert_right.c 3-binary_tree_delete.c \
	4-binary_tree_is_leaf.c 5-binary_tree_is_root.c \
	6-binary_tree_preorder.c

task-0: $(SRC-0)
	@$(CC) $(CFLAGS) $(SRC-0) -o 0-node
	./0-node && rm 0-node

task-1: $(SRC-1)
	@$(CC) $(CFLAGS) $(SRC-1) -o 1-left
	./1-left && rm 1-left

task-2: $(SRC-2)
	@$(CC) $(CFLAGS) $(SRC-2) -o 2-right
	./2-right && rm 2-right

task-3: $(SRC-3)
	$(CC) $(CFLAGS) $(SRC-3) -o 3-del
	valgrind ./3-del

task-4: $(SRC-4)
	@$(CC) $(CFLAGS) $(SRC-4) -o 4-leaf
	./4-leaf && rm 4-leaf

task-5: $(SRC-5)
	@$(CC) $(CFLAGS) $(SRC-5) -o 5-root
	./5-root && rm 5-root

task-6: $(SRC-6)
	@$(CC) $(CFLAGS) $(SRC-6) -o 6-pre
	./6-pre && rm 6-pre

task-7: $(SRC-7)
	@$(CC) $(CFLAGS) $(SRC-7) -o 7-in
	./7-in && rm 7-in

betty: $(FILES)
	@betty $(FILES)

clean:
	rm 0-node 1-left 2-right 3-del
