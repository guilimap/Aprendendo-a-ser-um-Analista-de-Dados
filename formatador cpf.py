import pandas as pd

def validar_e_formatar_cpf(cpf: str) -> str:
    # Remover caracteres não numéricos
    cpf = ''.join(filter(str.isdigit, cpf))
    
    # Preencher com zeros à esquerda caso tenha menos de 11 dígitos
    cpf = cpf.zfill(11)
    
    # Verificar se o CPF tem 11 dígitos e não é uma sequência de números iguais
    if len(cpf) != 11 or cpf == cpf[0] * len(cpf):
        return "CPF inválido"
    
    # Função para calcular o dígito verificador
    def calcular_digito(cpf_parcial):
        soma = sum(int(cpf_parcial[i]) * (len(cpf_parcial) + 1 - i) for i in range(len(cpf_parcial)))
        resto = soma % 11
        return '0' if resto < 2 else str(11 - resto)
    
    # Validar os dois dígitos verificadores
    primeiro_digito = calcular_digito(cpf[:9])
    segundo_digito = calcular_digito(cpf[:9] + primeiro_digito)
    
    if cpf[-2:] != primeiro_digito + segundo_digito:
        return "CPF inválido"
    
    # Formatar CPF com quatro zeros antes dos dois últimos dígitos
    cpf_formatado = cpf[:-2] + '0000' + cpf[-2:]
    return cpf_formatado

# Abrir arquivo Excel
arquivo = 'seu_arquivo.xlsx'  # Substitua pelo nome do seu arquivo
df = pd.read_excel(arquivo)

# Supondo que a coluna com os CPFs seja chamada "CPF"
coluna_cpf = 'CPF'  # Nome da coluna com os CPFs

# Validar e formatar cada CPF na coluna
df['CPF_Formatado'] = df[coluna_cpf].apply(validar_e_formatar_cpf)

# Salvar o arquivo processado
df.to_excel('arquivo_formatado.xlsx', index=False)

print("Processamento concluído. Arquivo salvo como 'arquivo_formatado.xlsx'.")
