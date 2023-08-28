#include "binary_trees.h"

/**
 * binary_tree_insert_left - adds a node to the left of the parent.
 * @parent: node to which a new node is to be inserted.
 * @value: data that the new node will hold.
 * Return: pointer to the newly created node.
*/
binary_tree_t *binary_tree_insert_left(binary_tree_t *parent, int value)
{
	binary_tree_t *node = NULL;

	if (parent == NULL)
		return (NULL);

	node = binary_tree_node(node, value);
	node->parent = parent;

	if (parent->left == NULL)
	{
		parent->left = node;
		return (node);
	}
	node->left = parent->left;
	parent->left->parent = node;
	parent->left = node;

	return (node);
}
