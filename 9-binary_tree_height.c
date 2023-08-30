#include "binary_trees.h"

/**
 * binary_tree_height - function that measures the height of a binary tree
 * @tree: pointer to the root node.
 * Return: height of binary tree
*/
size_t binary_tree_height(const binary_tree_t *tree)
{
	size_t h_left = 0, h_right = 0;

	if (tree == NULL)
		return (0);

	if (tree->left != NULL)
		h_left = binary_tree_height(tree->left) + 1;
	if (tree->right != NULL)
		h_right = binary_tree_height(tree->right) + 1;

	return (h_left > h_right ? h_left : h_right);
}
