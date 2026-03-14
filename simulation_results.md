# Simulation Results

The simulation verifies correct FIFO operation.

## Test Sequence

Write operations:

```
10
20
30
40
```

Read operations:

```
10
20
30
40
```

## Expected Behavior

* Data is read in the same order it was written.
* FULL flag activates when FIFO reaches maximum capacity.
* EMPTY flag activates when all data has been read.
