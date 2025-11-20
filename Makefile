# Makefile for Hilbert Space SHA-256d Inversion

CXX = g++
CXXFLAGS = -O3 -march=native -std=c++17 -Wall -Wextra -pthread
SRCDIR = src
BUILDDIR = build
BINDIR = bin

# Source files
SOURCES = $(SRCDIR)/sha256_ref.cpp
HEADERS = $(SRCDIR)/sha256_ref.hpp

# Targets
TARGETS = hilbert_space pass2_inversion engineered_inversion cryptanalysis deeper_truth

all: directories $(TARGETS)

directories:
	@mkdir -p $(BUILDDIR)
	@mkdir -p $(BINDIR)

hilbert_space: $(SRCDIR)/HILBERT_SPACE_72_CORRECT.cpp $(SOURCES)
	$(CXX) $(CXXFLAGS) $^ -o $(BINDIR)/$@
	@echo "Built Hilbert Space implementation"

pass2_inversion: $(SRCDIR)/PASS2_INVERSION_RIGOROUS.cpp $(SOURCES)
	$(CXX) $(CXXFLAGS) $^ -o $(BINDIR)/$@
	@echo "Built Pass 2 Inversion analysis"

engineered_inversion: $(SRCDIR)/ENGINEERED_PASS2_INVERSION.cpp $(SOURCES)
	$(CXX) $(CXXFLAGS) $^ -o $(BINDIR)/$@
	@echo "Built Engineered Inversion"

cryptanalysis: $(SRCDIR)/SHA256_CRYPTANALYSIS_UNLIMITED.cpp $(SOURCES)
	$(CXX) $(CXXFLAGS) $^ -o $(BINDIR)/$@
	@echo "Built SHA-256 Cryptanalysis"

deeper_truth: $(SRCDIR)/DEEPER_TRUTH_SHA256D.cpp $(SOURCES)
	$(CXX) $(CXXFLAGS) $^ -o $(BINDIR)/$@
	@echo "Built Deeper Truth Analysis"

test: all
	@echo "Running tests..."
	@$(BINDIR)/hilbert_space | head -50
	@echo "\nAll tests completed"

clean:
	rm -rf $(BUILDDIR)
	rm -rf $(BINDIR)
	@echo "Cleaned build artifacts"

.PHONY: all directories test clean