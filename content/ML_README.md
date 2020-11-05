**Machine Learning**

**Algorithm Cheatsheet**



**Introduction** 

1. [**Modelling**](https://github.com/JosemariaEzeani/Practice/blob/master/content/MODELLING.md)
2. [**Performance**](https://github.com/JosemariaEzeani/Practice/blob/master/content/PERFORMANCE.md)



**Topics**

1. [**Important**](https://github.com/JosemariaEzeani/Practice/blob/master/content/IMPORTANT_TOPICS.md)
2. [**Advanced/Challenges**](https://github.com/JosemariaEzeani/Practice/blob/master/content/ADVANCED_CHALLENGES.md) 
3. [**Interesting**](https://github.com/JosemariaEzeani/Practice/blob/master/content/INTERESTING_TOPICS.md) 
4. **[Classifiers](https://github.com/JosemariaEzeani/Practice/blob/master/content/CLASSIFIERS.md)**
6. **[Decision Trees](https://github.com/JosemariaEzeani/Practice/blob/master/content/DECISION_TREES.md)**
7. **[Neural Networks](https://github.com/JosemariaEzeani/Practice/blob/master/content/NEURAL_NETWORKS.md)**



[**Maths**](https://github.com/JosemariaEzeani/Practice/blob/master/content/MATHS.md) 



**Types of Learning** 

1. [**Supervised**](https://github.com/JosemariaEzeani/Practice/blob/master/content/SUPERVISED.md) 

$$
\text{dataset} = \left\{\left(\mathbf{x}_{i}^{j}, y_{i}\right)\right\}_{i=1}^{N} = \text{labeled examples} \\
\mathbf{x}_{i}^{j} = \text{feature vector, dimensions} = j \text{ (describes data)} \\
\text{goal}: \mathbf{x}_{i}^{j} → y_{i}
$$

2. [**Semi-Supervised**](https://github.com/JosemariaEzeani/Practice/blob/master/content/SEMI_SUPERVISED.md) 
$$
\text{dataset} = \left\{\left(\mathbf{x}_{i}^{j}, y_{t}\right)\right\}_{i=1, t=1}^{N, M} = \text{labeled examples where } (M < N)\\
\mathbf{x}_{i}^{j} = \text{feature vector, dimensions} = j \text{ (describes data)} \\
\text{goal}: \mathbf{x}_{i}^{j} → y_{i} \\
\text{characteristic: }↑(N/M) → \text{more information = better model}
$$
3. [**Unsupervised**](https://github.com/JosemariaEzeani/Practice/blob/master/content/UNSUPERVISED.md)
$$
\text{dataset} = \left\{\left(\mathbf{x}_{i}^{j}\right)\right\}_{i=1}^{N} = \text{unlabeled examples} \\
\mathbf{x}_{i}^{j} = \text{feature vector, dimensions} = j \text{ (describes data)} \\
\text{goal}: \mathbf{x}_{i}^{j} → y_{i}
$$
4. [**Reinforcement**](https://github.com/JosemariaEzeani/Practice/blob/master/content/REINFORCEMENT.md) 
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
3. **Hyperplane:** subspace with a dimension -1 that of the ambient space. Usually used to bisect data within the context of machine learning (**Note:** boundary separating classes of data is = decision boundary).
4. **Hyperplane:** subspace with a dimension -1 that of the ambient space. Usually used to bisect data within the context of machine learning (**Note:** boundary separating classes of data is = decision boundary).