#Binary Trees benchmark

##Algorithm:

Each program should: 

* define a tree node class and methods, a tree node record and procedures, or an algebraic data type and functions, or…
* allocate a binary tree to 'stretch' memory, check it exists, and deallocate it
* allocate a long-lived binary tree which will live-on while other trees are allocated and deallocated
* allocate, walk, and deallocate many bottom-up binary trees
* allocate a tree
* walk the tree nodes, checksum the node items (and maybe deallocate the node)
* deallocate the tree
* check that the long-lived binary tree still exists

##Running:

**Ruby:**

    rbx binarytrees <size> <logfile>

**Javascript: Mozilla Spidermonkey**

   js binarytrees-moz <size> 

**Javascript: Chrome V8**

   d8 --nodebugger binarytrees-v8.js -- <size>

##Parameters:

Recommened value for `size` values are `12, 16, 20`.  


