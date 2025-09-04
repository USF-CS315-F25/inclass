// typedef

uint32_t

typedef unsigned int uint32_t

unsinged int x;
uint32_t x;

// Option 1

struct config_st {
    int count;
    bool header;
    bool footer;
};

struct config_st config;

// Option 2

typedef struct config_st config_t;

config_t config;

// Option 3

typedef struct {
    int count;
    bool header;
    bool footer;
} config_t;

config_t config;

// Pointer

typedef struct config_st *config_p;

struct config_st *cp;
config_p cp;

cp->header
cp.header

