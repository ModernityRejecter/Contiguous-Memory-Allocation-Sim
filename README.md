# Contiguous Memory Allocation Simulator (x86 Assembly)

This repository contains an x86 (32-bit) assembly implementation of a contiguous memory allocation system. It simulates how an operating system manages memory blocks or how a file system allocates space on a disk.

## Project Overview

The simulator models a memory space (8MB total) divided into blocks of 8KB. For the purpose of this simulation, the logic is scaled down to 1024 addressable units. The project consists of two main tasks:

- **Task 1: Unidimensional Memory Allocation**
  Simulates a 1D memory array where files are allocated contiguously using a **First-Fit** strategy.
- **Task 2: Bidimensional Memory Allocation**
  Extends the simulation to a 2D memory grid (matrix) and includes more advanced operations like populating allocation data from real files on the disk using system calls.

## Supported Operations

The simulator supports the following commands:
- **ADD (1)**: Allocate a contiguous range of blocks for a file.
- **GET (2)**: Retrieve the start and end indices of a file.
- **DELETE (3)**: Free all blocks associated with a specific file.
- **DEFRAGMENTATION (4)**: Reorganize memory to eliminate external fragmentation by moving all allocated files to the beginning of the memory space.
- **CONCRETE (5 - Task 2 only)**: Scan a directory and allocate space for files based on their real size on disk.

## Repository Structure

- `src/`: Contains the x86 assembly source code (`task1.s`, `task2.s`).
- `tests/`: Input and expected output files for automated testing.
- `scripts/`: Python scripts for testing (`checker.py`) and generating test cases (`generator.py`).
- `docs/`: Original project requirements in Romanian (PDF).
- `Makefile`: Build instructions for compiling the assembly code.

## Getting Started

### Prerequisites

To build and run this project, you need:
- A Linux environment (or WSL on Windows).
- `gcc` with 32-bit support (`gcc-multilib`).
- `make` and `python3`.

### Building the Project

Run the following command in the root directory:
```bash
make
```
This will generate two executables: `task1` and `task2`.

### Running Tests

You can use the provided checker script to verify the implementation:
```bash
python3 scripts/checker.py
```

## Technical Details

- **Language**: x86 Assembly (32-bit, AT&T Syntax).
- **System Calls**: Uses Linux system calls for I/O and file management.
- **Memory Strategy**: First-Fit for contiguous allocation.

## License

This project was developed as part of the Computer Systems Architecture (ASC) course at the University of Bucharest, 2024-2025.
