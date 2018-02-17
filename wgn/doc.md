### Input

-   `N`: represents the number of bits of width/height of the plane. The
    section is squared so the final size would be `N * N`. The range
    goes between 2 and 64.

### Output

A matrix with `N * N` random bits. These can be used to simulate
digitized white Gaussian noise in an image-like device, a high power
noise in fact which randomly surpasses the split threshold with a
probability of ~0.5.

The *noise* is sampled with each chosen `N`.
