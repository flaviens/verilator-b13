# Bug in Verilator that leads to a wrong runtime value.

To reproduce, please have Verilator installed and run:
```
bash run.sh
```

The bug is corrected by enabling traces.

Expected output:
```
Output[32] 0
-fno-assemble
Output[32] 0
-fno-case
Output[32] 0
-fno-combine
Output[32] 0
-fno-const
Output[32] 0
-fno-const-bit-op-tree
Output[32] 0
-fno-dedup
Output[32] 0
-fno-dfg
Output[32] 0
-fno-dfg-peephole
Output[32] 0
-fno-dfg-pre-inline
Output[32] 0
-fno-dfg-post-inline
Output[32] 0
-fno-expand
Output[32] 0
-fno-gate
Output[32] 0
-fno-inline
Output[32] 0
-fno-life
Output[32] 0
-fno-life-post
Output[32] 0
-fno-localize
Output[32] 0
-fno-merge-cond
Output[32] 0
-fno-merge-cond-motion
Output[32] 0
-fno-merge-const-pool
Output[32] 0
-fno-reloop
Output[32] 0
-fno-reorder
Output[32] 0
-fno-split
Output[32] 0
-fno-subst
Output[32] 0
-fno-subst-const
Output[32] 0
-fno-table
Output[32] 0
```

Actual output:
```
Output[32] 1
-fno-assemble
Output[32] 1
-fno-case
Output[32] 1
-fno-combine
Output[32] 1
-fno-const
Output[32] 1
-fno-const-bit-op-tree
Output[32] 0
-fno-dedup
Output[32] 1
-fno-dfg
Output[32] 1
-fno-dfg-peephole
Output[32] 1
-fno-dfg-pre-inline
Output[32] 1
-fno-dfg-post-inline
Output[32] 1
-fno-expand
Output[32] 0
-fno-gate
Output[32] 0
-fno-inline
Output[32] 1
-fno-life
Output[32] 1
-fno-life-post
Output[32] 1
-fno-localize
Output[32] 1
-fno-merge-cond
Output[32] 1
-fno-merge-cond-motion
Output[32] 1
-fno-merge-const-pool
Output[32] 1
-fno-reloop
Output[32] 1
-fno-reorder
Output[32] 1
-fno-split
Output[32] 1
-fno-subst
Output[32] 1
-fno-subst-const
Output[32] 1
-fno-table
Output[32] 1
```

In summary, the following individual flags correct the bug:
`-fno-const-bit-op-tree`
`-fno-expand`
`-fno-gate`
