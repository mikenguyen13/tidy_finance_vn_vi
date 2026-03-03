# **Applying Tidy Finance with Python to Vietnam**

A guide to conducting empirical research in finance using Vietnamese market data. [This book](https://mikenguyen13.github.io/tidy_finance_vn/) demonstrates modern data science approaches to financial analysis, portfolio management, and empirical asset pricing using Python with datasets from Vietnamese financial markets.

## Overview

*Applying Tidy Finance with Python to Vietnam* adapts the principles of tidy data and modern statistical computing to the Vietnamese financial context. Rather than being a theoretical finance textbook, this book provides hands-on instruction in accessing, processing, and analyzing real market data from Vietnam's equity markets, enabling readers to conduct research-grade financial analysis.

The book is structured around reproducible workflows that progress from foundational data manipulation techniques to sophisticated econometric methods. Each chapter includes complete code examples and practical applications.

## Key Features

**Vietnamese Market Focus**: All examples use Vietnamese equity market data, making the content immediately applicable to researchers, practitioners, and students interested in emerging market finance.

**Hands-On Data Science**: Learn to work with real market data through reproducible code examples. The book emphasizes tidy data principles and modern computational approaches.

**Publication-Ready Methods**: Chapters cover empirical techniques commonly published in top-tier finance and accounting journals, including factor analysis, portfolio sorts, event studies, and cross-sectional regression methods.

**Practical Tools**: Demonstrates workflows across Python, with emphasis on efficient data management, reproducible research, and best practices in quantitative finance.

## Getting Started

### Prerequisites

This project uses Python 3.11+ and requires several scientific and financial computing libraries.

**Package Management**: The project uses `uv` for Python package management, providing fast and reliable dependency resolution.

``` bash
# Install uv (recommended)
# See https://docs.astral.sh/uv/getting-started/installation/
curl -LsSf https://astral.sh/uv/install.sh | sh
```

### Installation

1.  **Clone the repository**:

    ``` bash
    git clone https://github.com/mikenguyen13/tidy_finance_vn_vi.git
    cd tidy_finance_vn
    ```

2.  **Set up the Python environment**:

    ``` bash
    uv sync
    ```

    Or with pip/conda:

    ``` bash
    pip install -r requirements.txt
    ```

3.  **Build the book**:

    ``` bash
    uv run quarto render
    ```

    This generates the HTML book in the `_book/` directory.

### Development Workflow

The project uses Quarto for document rendering. Each chapter is a `.qmd` (Quarto Markdown) file that combines narrative text with executable code.

**Preview chapters while editing**:

``` bash
uv run quarto preview
```

This launches a live preview server with hot-reloading as you modify chapters.

## Contributing

This is an evolving educational resource. Contributions are welcome, including:

-   Additional chapters covering topics like credit analysis, derivatives, or fixed income
-   Improvements to code examples and clarity
-   Bug fixes and clarifications
-   Vietnamese market research applications

Please submit issues or pull requests to improve the content.

## Citation

If you use this material in research or teaching, please cite:

``` bibtex
@book{nguyen2025tidyfinancevn,
  title={Tidy Finance in Vietnam},
  author={Nguyen, Mike},
  year={2025},
  url={https://github.com/mikenguyen13/tidy_finance_vn}
}
```

## Related Resources

-   **Original Tidy Finance**: The international foundation for this project
    -   [Tidy Finance with R](https://www.tidy-finance.org)
    -   [Tidy Finance with Python](https://tidy-finance.org/python/)
-   **References**: See `references.bib` for comprehensive bibliography of academic literature on factor models, asset pricing, and Vietnamese market research.

## License

This project is provided as an educational resource. Please see individual chapters for specific licensing information.

## Support & Feedback

For questions, suggestions, or corrections:

1.  Open an issue on GitHub
2.  Check existing issues for similar topics
3.  Provide context including chapter, code section, and expected vs. actual behavior

## Acknowledgments

This book is an independent derivative work inspired by reproducible research principles developed in [**Tidy Finance**](https://www.tidy-finance.org/). It is not affiliated with, or officially provided by the creators of the original Tidy Finance books. All content, code, and empirical applications are original and tailored to the Vietnamese market.

This work builds directly on the methodological foundation established in:

-   Scheuch, C., Voigt, S., & Weiss, P. (2023). *Tidy Finance with R*. Chapman and Hall/CRC. <https://www.tidy-finance.org/r/> ([Scheuch, Voigt, and Weiss 2023](https://mikenguyen13.github.io/tidy_finance_vn/references.html#ref-scheuch2023tidy))

-   Scheuch, C., Voigt, S., Weiss, P., & Frey, C. (2024). *Tidy Finance with Python*. Chapman and Hall/CRC. <https://www.tidy-finance.org/python/> ([Scheuch et al. 2024](https://mikenguyen13.github.io/tidy_finance_vn/references.html#ref-scheuch2024tidy))

We gratefully acknowledge the Tidy Finance authors for developing an open, reproducible approach to empirical finance that made this market-specific adaptation possible.