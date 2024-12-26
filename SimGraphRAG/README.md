# the paper "SimGRAG: Leveraging Similar Subgraphs for Knowledge Graphs Driven Retrieval-Augmented Generation". 
SimGRAG is a KG-driven RAG approach that can support various KG based tasks, such as question answering and fact verification.
This is a Implementation that uses ModernBERT as Vector Store. 

## Prerequisites
It supports plug-and-play usability with the following three components:

- Large language model: For generation.
- Embedding model: For node and relation embedding.
- Vector database: store the embedding of the nodes and relations in the knowledge graph, supporting efficient similarity search.


SimGRag (Similar Graph Retrieval Augmented Generation) is an advanced RAG (Retrieval-Augmented Generation) method that aligns text queries with knowledge graph structures for superior performance.  

### Core Concepts:
1. **Query-to-Pattern Alignment:** Uses a Large Language Model (LLM) to generate a pattern graph from a text query, reflecting its semantic structure. Prompts are tailored with in-context learning.
2. **Pattern-to-Subgraph Alignment:** Matches the pattern graph to the most relevant subgraphs in the knowledge graph using **Graph Semantic Distance (GSD)**, a metric measuring semantic and structural similarity.

### Features:
- **Graph Semantic Distance (GSD):** Quantifies similarity between pattern and subgraphs, accounting for graph structure and semantics.
- **ModernBERT Integration:** Replaces classic BERT for domain-specific vector spaces, enhancing RAG performance.
- **Efficiency:** Handles large knowledge graphs with <1-second latency.
- **Plug-and-Play:** Requires no additional training or fine-tuning.
- **Flexibility:** Adapts to various domains and custom vector spaces.

### Benefits:
- **Superior Performance:** Outperforms traditional methods (e.g., K-P-A, Knowledge-GPT) on complex queries.
- **Speed:** Optimized algorithms enable fast top-K subgraph retrieval.
- **Scalability:** Works effectively with massive knowledge graphs.

In summary, SimGRag leverages LLMs, GSD, and domain-specific enhancements for efficient, high-performance RAG, with significant adaptability across applications.
