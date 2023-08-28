#include "binary_trees.h"

/**
 * binary_tree_node - function that creates a binary tree node.
 * @parent: pointer to parent of the node
 * @value: Data that the node will hold
 * Return: pointer to the newly created node.
*/
binary_tree_t *binary_tree_node(binary_tree_t *parent, int value)
{
	binary_tree_t *node = malloc(sizeof(binary_tree_t));

	node->parent = parent;
	node->n = value;
	node->left = NULL;
	node->right = NULL;

	return (node);
}
