#include "binary_trees.h"

/**
 * binary_tree_balance - measure balance factor of a binary_tree
 * @tree: pointer to the root node of a binary tree.
 * Return: integer indicating the balance factor
*/
int binary_tree_balance(const binary_tree_t *tree)
{
	int h_left = 0, h_right = 0;

	if (tree == NULL)
		return (0);

	if (tree->left != NULL)
		h_left = binary_tree_balance(tree->left) + 1;
	if (tree->right != NULL)
		h_right = binary_tree_balance(tree->right) - 1;

	return (h_left + h_right);
}
