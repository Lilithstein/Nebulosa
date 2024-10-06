import numpy as np

# Função sigmoide
def sigmoid(x):
    return 1 / (1 + np.exp(-x))

# Derivada da função sigmoide
def sigmoid_derivative(x):
    return x * (1 - x)

# Entradas (X)
X = np.array([[0, 0],
              [0, 1],
              [1, 0],
              [1, 1]])

# Saídas esperadas (y)
y = np.array([[0], [1], [1], [0]])  # Exemplo de porta lógica XOR

# Inicialização aleatória dos pesos (sinapse)
np.random.seed(1)
pesos_sinapse = 2 * np.random.random((2, 1)) - 1  # Pesos entre -1 e 1

# Número de iterações de treinamento
num_iteracoes = 10000

# Treinamento
for iteracao in range(num_iteracoes):
    # Propagação para frente (cálculo da saída)
    entrada = X
    saida = sigmoid(np.dot(entrada, pesos_sinapse))
    
    # Cálculo do erro
    erro = y - saida
    
    # Cálculo do ajuste (delta) com base na derivada da função sigmoide
    ajuste = erro * sigmoid_derivative(saida)
    
    # Atualização dos pesos
    pesos_sinapse += np.dot(entrada.T, ajuste)

# Exibindo a saída final após o treinamento
print("Saída após o treinamento:")
print(saida)
