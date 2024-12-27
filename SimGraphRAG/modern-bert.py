from sentence_transformers import SentenceTransformer

# Download from the 🤗 Hub
model = SentenceTransformer("tomaarsen/ModernBERT-base-gooaq")
# Run inference
sentences = [
    'are you human korean novela?',
    "Are You Human? (Korean: 너도 인간이니; RR: Neodo Inganini; lit. Are You Human Too?) is a 2018 South Korean television series starring Seo Kang-jun and Gong Seung-yeon. It aired on KBS2's Mondays and Tuesdays at 22:00 (KST) time slot, from June 4 to August 7, 2018.",
    'A relative of European pear varieties like Bartlett and Anjou, the Asian pear is great used in recipes or simply eaten out of hand. It retains a crispness that works well in slaws and salads, and it holds its shape better than European pears when baked and cooked.',
]
embeddings = model.encode(sentences)
print(embeddings.shape)
# [3, 768]

# Get the similarity scores for the embeddings
similarities = model.similarity(embeddings, embeddings)
print(similarities.shape)
# [3, 3]
