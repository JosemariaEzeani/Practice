**Machine Learning**

**Algorithm Cheatsheet**



**Introduction** 

1. [**Modelling**](MODELLING.md)
2. [**Performance**](PERFORMANCE.md)



**Topics**

1. [**Important**](IMPORTANT_TOPICS.md)
2. [**Advanced/Challenges**](ADVANCED_CHALLENGES.md) 
3. [**Interesting**](INTERESTING_TOPICS.md) 
4. **[Classifiers](CLASSIFIERS.md)**
6. **[Decision Trees](DECISION_TREES.md)**
7. **[Neural Networks](NEURAL_NETWORKS.md)**



[**Maths**](MATHS.md) 



**Types of Learning** 

1. [**Supervised**](SUPERVISED.md) 

$$
\text{dataset} = \left\{\left(\mathbf{x}_{i}^{j}, y_{i}\right)\right\}_{i=1}^{N} = \text{labeled examples} \\
\mathbf{x}_{i}^{j} = \text{feature vector, dimensions} = j \text{ (describes data)} \\
\text{goal}: \mathbf{x}_{i}^{j} → y_{i}
$$

2. [**Semi-Supervised**](SEMI_SUPERVISED.md) 
$$
\text{dataset} = \left\{\left(\mathbf{x}_{i}^{j}, y_{t}\right)\right\}_{i=1, t=1}^{N, M} = \text{labeled examples where } (M < N)\\
\mathbf{x}_{i}^{j} = \text{feature vector, dimensions} = j \text{ (describes data)} \\
\text{goal}: \mathbf{x}_{i}^{j} → y_{i} \\
\text{characteristic: }↑(N/M) → \text{more information = better model}
$$
3. [**Unsupervised**](UNSUPERVISED.md)
$$
\text{dataset} = \left\{\left(\mathbf{x}_{i}^{j}\right)\right\}_{i=1}^{N} = \text{unlabeled examples} \\
\mathbf{x}_{i}^{j} = \text{feature vector, dimensions} = j \text{ (describes data)} \\
\text{goal}: \mathbf{x}_{i}^{j} → y_{i}
$$
4. [**Reinforcement**](REINFORCEMENT.md) 
$$
\text{characteristic: {decision-mking: sequential, goal: long-term}} \\
\text{environment + state = (feature vector + actions)} \\
\text{actions → (rewards + optional(state) } \\
\text{goal: learn policy = model that maximises average reward}
$$
<!--**Kernel Regression**--> 

<!--**Multiclass Classification**--> 

<!--**One-Class Classification**--> 

<!--**Multilabel Clasification**--> 

<!--**Sequence-to-Sequence learning**--> 

<!--**One-Shot Learning**--> 

<!--**Zero-Shot Learning**--> 


<!--**Topic Modelling**--> 

<!--**Gaussian Processes**--> 

<!--**Generalised Linear Models**--> 

<!--**Probabilisitc Graphical Models**--> 

<!--**Markov Chain Monte Carlo**-->

<!--**Generative Adversarial Networks**-->

<!--**Genetic Alorithms**--> 

<!--**Structured Prediction**--> 
<!--1. **Graphical models**--> 
<!--2. **Bayes net**-->
<!--3. **Conditional random field**-->
<!--4. **Hidden Markov**-->

<!-- https://en.wikipedia.org/wiki/Regression_analysis -->



**GLOSSARY**

1. **Hyperplane:** subspace with a dimension -1 that of the ambient space. Usually used to bisect data within the context of machine learning (**Note:** boundary separating classes of data is = decision boundary).
$$
\text{feature_vector} = x_{i}^{j} \text{ vector} = w_{i}^{j} \text{ real_number} = b \\
\text{equation}_{i}= \sum_{j=1}^{N}w_{i}^{j}x_{i}^{j}-b=0 \\ 
\text{optimise vector w and real-number b such that f(x) → good predictions} \\
\text{margin = distance between the closest examples of two classes} \\
\text{good_predictions}= maximise(margin) = \text{better generalisation} \\
\text{better_generalisation} = minimise(\|\mathbf{w}\|)
$$
2. **kernel:** used to arbiterily create non-lineartity?
3. **Classification:** predicting discrete labels.#Binary/Binomial #Multiclass/Multinomial
4. **Regression:** predicting real-valued labels.
5. **Bias:** how well a models predicts labels of the training data.
6. **Epoch:** 
7. **Learning Rate:**
8. Weak learners 

