# Quick Start Guide

## Building the Project

### Prerequisites
- C++17 compatible compiler (g++ 7+ or clang++ 5+)
- Make
- ~100MB free disk space

### Build All Components
```bash
make all
```

### Build Individual Components
```bash
make hilbert_space        # Hilbert space implementation
make pass2_inversion      # Pass 2 analysis
make engineered_inversion # Engineering attempts
make cryptanalysis        # SHA-256 cryptanalysis
make deeper_truth         # Paradigm analysis
```

## Running the Programs

### Test Hilbert Space Control (Recommended First)
```bash
./bin/hilbert_space
```
This demonstrates complete 640-bit input control through 8 entropy generators.

### Analyze Pass 2 Structure
```bash
./bin/pass2_inversion
```
Shows why Pass 2 creates the inversion bottleneck.

### View Cryptanalysis Results
```bash
./bin/cryptanalysis
```
Complete analysis of SHA-256 attack vectors.

### Explore Paradigm Shifts
```bash
./bin/deeper_truth
```
Discover why current approaches fail and future possibilities.

## Understanding the Results

### What Works ✅
- Complete 640-bit input space control
- 99.94% entropy efficiency
- All 8 generators functioning correctly
- Mathematical framework is sound

### Current Limitations ❌
- Cannot achieve 72 leading zeros deterministically
- Best result: 23 leading zeros
- Computational barrier: 2^72 operations required
- Pass 2 creates irreversible bottleneck

### Key Metrics
- **Generation Rate**: ~147k states/second
- **Entropy**: 639.6/640 bits
- **Time Complexity**: O(2^72) for 72 zeros

## Next Steps

1. **Study the Mathematics**: Read `docs/TECHNICAL_OVERVIEW.md`
2. **Examine the Code**: Start with `HILBERT_SPACE_72_CORRECT.cpp`
3. **Run Experiments**: Modify parameters and observe changes
4. **Contribute**: Optimize algorithms or propose new approaches

## Important Note

This is research code exploring SHA-256d structure. While mathematically interesting, it does not achieve practical Bitcoin mining at current difficulty levels. The 72-zero target requires ~2^72 operations regardless of our optimizations.

## Troubleshooting

### Compilation Errors
- Ensure C++17 support: Add `-std=c++17` flag
- Missing pthread: Add `-pthread` flag
- Optimization: Use `-O3 -march=native`

### Runtime Issues
- Stack overflow: Increase stack size with `ulimit -s unlimited`
- Slow performance: Ensure optimization flags are enabled
- Memory issues: The programs use <100MB RAM typically

## Contact

For questions or contributions, please open an issue on GitHub.