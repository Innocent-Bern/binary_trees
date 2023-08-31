#include "binary_trees.h"
#include "10-binary_tree_depth.c"
#include "18-binary_tree_uncle.c"

/**
 * binary_tree_is_perfect - checks if a binary tree is perfect
 * @tree: pointe to the root node/
 * Return: 1 if perfect 0 if not perfect
*/
int binary_tree_is_perfect(const binary_tree_t *tree)
{
	if (tree == NULL)
		return (0);

	if (tree->left == NULL || tree->right == NULL)
		return (0);
	if (binary_tree_depth(tree->right) == binary_tree_depth(tree->left))
		return (1);
	return (binary_tree_is_perfect(tree->left) 
	&& binary_tree_is_perfect(tree->right));
}
