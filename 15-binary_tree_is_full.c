#include "binary_trees.h"

/**
 * binary_tree_is_full - function that checks of binary tree is full
 * @tree: pointer to root node of binary tree
 * Return: 1 if full zero if not full
*/
int binary_tree_is_full(const binary_tree_t *tree)
{
	if (tree == NULL)
		return (0);

	if (tree->left == NULL && tree->right == NULL)
		return (1);

	if (tree->left != NULL && tree->right != NULL)
		return (binary_tree_is_full(tree->left) && binary_tree_is_full(tree->right));

	return (0);
}
