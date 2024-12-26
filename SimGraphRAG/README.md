# the paper "SimGRAG: Leveraging Similar Subgraphs for Knowledge Graphs Driven Retrieval-Augmented Generation". 
SimGRAG is a KG-driven RAG approach that can support various KG based tasks, such as question answering and fact verification.
This is a Implementation that uses ModernBERT as Vector Store. 

## Prerequisites
It supports plug-and-play usability with the following three components:

- Large language model: For generation.
- Embedding model: For node and relation embedding.
- Vector database: store the embedding of the nodes and relations in the knowledge graph, supporting efficient similarity search.
