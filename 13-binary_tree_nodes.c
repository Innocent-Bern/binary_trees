#include "binary_trees.h"

/**
 * binary_tree_nodes - function that counts nodes with at least 1 child
 * @tree: pointer to the root noode of a binary tree.
 * Return: number of nodes that are not leaves
*/
size_t binary_tree_nodes(const binary_tree_t *tree)
{
	size_t nodes = 0;

	if (tree == NULL)
		return (0);

	if (tree->left != NULL || tree->right != NULL)
		nodes += binary_tree_nodes(tree->left) + binary_tree_nodes(tree->right) + 1;
	return (nodes);
}
