#include "binary_trees.h"

/**
 * binary_tree_depth - function that measures the depth of a node
 * @tree: node to measure the depth
 * Return: Depth of the node.
*/
size_t binary_tree_depth(const binary_tree_t *tree)
{
	size_t depth = 0;

	if (tree == NULL)
		return (0);

	if (tree->parent != NULL)
		depth = binary_tree_depth(tree->parent) + 1;

	return (depth);
}
