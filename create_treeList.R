# Number of trees
n_trees <- 100

# Set seed for reproducibility
set.seed(42)

# Generate random tree positions and heights
trees <- data.frame(
  x = runif(n_trees, -120, 120),     # X position within ground size
  y = runif(n_trees, -120, 120),     # Y position within ground size
  height = runif(n_trees, 1.2, 3.0)  # Tree height scaling factor
)

# Convert to JavaScript-style array of objects
tree_list_js <- paste0(
  "const treeList = [\n",
  paste(
    apply(trees, 1, function(row) {
      sprintf("  { x: %.2f, y: %.2f, height: %.2f }", row["x"], row["y"], row["height"])
    }),
    collapse = ",\n"
  ),
  "\n];"
)

# Write to file (optional)
writeLines(tree_list_js, "C:\\Users\\c.silva\\Downloads\\forest_3d_scene (1)\\treeList.js")

# Print to console
cat(tree_list_js)
