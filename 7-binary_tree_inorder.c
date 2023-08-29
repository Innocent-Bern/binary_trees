#include "binary_trees.h"

/**
 * binary_tree_inorder - function that goes through a binary tree
 * using inorder traversal
 * @tree: pointer to root node.
 * @func: pointer to a function that calls each node.
*/
void binary_tree_inorder(const binary_tree_t *tree, void (*func)(int))
{
	if (tree != NULL && func != NULL)
	{
		if (tree->left != NULL)
			binary_tree_inorder(tree->left, func);

		func(tree->n);
		binary_tree_inorder(tree->right, func);
	}
}
