# FIFO Architecture

FIFO stands for **First-In First-Out** memory buffer.

The first data written into the buffer is the first data that will be read out.

## Key Components

### Memory Array

Stores the data values.

### Write Pointer

Points to the next location where data will be written.

### Read Pointer

Points to the location where data will be read.

### Counter

Tracks the number of elements currently stored.

## Status Flags

**FULL**
Indicates that no more data can be written.

**EMPTY**
Indicates that no data is available to read.

## Operation Flow

1. Write enable stores data in memory.
2. Write pointer increments.
3. Read enable retrieves data.
4. Read pointer increments.
