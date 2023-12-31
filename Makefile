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
SRC-8 = binary_tree_print.c 8-main.c 8-binary_tree_postorder.c \
	0-binary_tree_node.c
SRC-9 = binary_tree_print.c 9-binary_tree_height.c 9-main.c \
	0-binary_tree_node.c 2-binary_tree_insert_right.c
SRC-10 = binary_tree_print.c 10-binary_tree_depth.c 10-main.c \
	0-binary_tree_node.c 2-binary_tree_insert_right.c
SRC-11 = binary_tree_print.c 11-binary_tree_size.c 11-main.c \
	0-binary_tree_node.c 2-binary_tree_insert_right.c
SRC-12 = binary_tree_print.c 12-binary_tree_leaves.c 12-main.c \
	0-binary_tree_node.c 2-binary_tree_insert_right.c
SRC-13 = binary_tree_print.c 13-binary_tree_nodes.c 13-main.c \
	0-binary_tree_node.c 2-binary_tree_insert_right.c
SRC-14 = binary_tree_print.c 14-binary_tree_balance.c 14-main.c \
	0-binary_tree_node.c 2-binary_tree_insert_right.c \
	1-binary_tree_insert_left.c
SRC-15 = binary_tree_print.c 15-binary_tree_is_full.c 15-main.c \
	0-binary_tree_node.c 2-binary_tree_insert_right.c
SRC-16 = binary_tree_print.c 16-binary_tree_is_perfect.c 16-main.c \
	0-binary_tree_node.c 2-binary_tree_insert_right.c
SRC-17 = binary_tree_print.c 17-main.c 17-binary_tree_sibling.c \
	0-binary_tree_node.c
FILES = binary_trees.h 0-binary_tree_node.c 1-binary_tree_insert_left.c \
	2-binary_tree_insert_right.c 3-binary_tree_delete.c \
	4-binary_tree_is_leaf.c 5-binary_tree_is_root.c \
	6-binary_tree_preorder.c 7-binary_tree_inorder.c \
	8-binary_tree_postorder.c 9-binary_tree_height.c \
	10-binary_tree_depth.c 11-binary_tree_size.c 12-binary_tree_leaves.c \
	13-binary_tree_nodes.c 14-binary_tree_balance.c \
	15-binary_tree_is_full.c 16-binary_tree_is_perfect.c \
	17-binary_tree_sibling.c

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

task-8: $(SRC-8)
	@$(CC) $(CFLAGS) $(SRC-8) -o 8-post
	./8-post && rm 8-post

task-9: $(SRC-9)
	@$(CC) $(CFLAGS) $(SRC-9) -o 9-height
	./9-height && rm 9-height

task-10: $(SRC-10)
	@$(CC) $(CFLAGS) $(SRC-10) -o 10-depth
	./10-depth && rm 10-depth

task-11: $(SRC-11)
	@$(CC) $(CFLAGS) $(SRC-11) -o 11-size
	./11-size && rm 11-size

task-12: $(SRC-12)
	@$(CC) $(CFLAGS) $(SRC-12) -o 12-leaves
	./12-leaves && rm 12-leaves

task-13: $(SRC-13)
	@$(CC) $(CFLAGS) $(SRC-13) -o 13-nodes
	./13-nodes && rm 13-nodes

task-14: $(SRC-14)
	@$(CC) $(CFLAGS) $(SRC-14) -o 14-balance
	./14-balance && rm 14-balance

task-15: $(SRC-15)
	@$(CC) $(CFLAGS) $(SRC-15) -o 15-full
	./15-full && rm 15-full

task-16: $(SRC-16)
	@$(CC) $(CFLAGS) $(SRC-16) -o 16-perfect
	./16-perfect && rm 16-perfect

task-17: $(SRC-17)
	@$(CC) $(CFLAGS) $(SRC-17) -o 17-sibling
	./17-sibling && rm 17-sibling

betty: $(FILES)
	@betty $(FILES)

