#include "binary_trees.h"

/**
 * binary_tree_uncle - finds uncle of a node.
 * @node: pointer to the node to find the unle.
 * Return: Pointer to the uncle node
*/
binary_tree_t *binary_tree_uncle(binary_tree_t *node)
{
	binary_tree_t *uncle = NULL;

	if (node == NULL || node->parent == NULL || node->parent->parent == NULL)
		return (NULL);

	if (node->parent == node->parent->parent->left)
		uncle = node->parent->parent->right;
	if (node->parent == node->parent->parent->right)
		uncle = node->parent->parent->left;
	return (unlce);
}
