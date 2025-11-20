#pragma once
#include <cstdint>
#include <cstddef>

namespace dhcc {

void sha256(const uint8_t* data, size_t len, uint8_t out32[32]);
void sha256d(const uint8_t* data, size_t len, uint8_t out32[32]);

}

