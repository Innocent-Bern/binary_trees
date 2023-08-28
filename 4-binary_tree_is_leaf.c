#include "binary_trees.h"

/**
 * binary_tree_is_leaf - indicates if a node is a leaf.
 * @node: pointer to node tto check
 * Return: 1 if node is leaf 0 if otherwise
*/
int binary_tree_is_leaf(const binary_tree_t *node)
{
	if (node == NULL || (node->left == NULL && node->right == NULL))
		return (1);
	return (0);
}
