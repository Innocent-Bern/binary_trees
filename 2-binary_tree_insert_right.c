#include "binary_trees.h"

/**
 * binary_tree_inser_right - function that add node to right of parent node.
 * @parent: node to which a new node will be added.
 * @value: data that the new node will hold.
 * Return: pointer to the new node.
*/
binary_tree_t *binary_tree_insert_right(binary_tree_t *parent, int value)
{
	binary_tree_t *node = NULL;

	if (parent == NULL)
		return (NULL);

	node = binary_tree_node(node, value);
	node->parent = parent;

	if (parent->right == NULL)
	{
		parent->right = node;
		return (node);
	}

	node->right = parent->right;
	parent->right->parent = node;
	parent->right = node;

	return (node);
}
