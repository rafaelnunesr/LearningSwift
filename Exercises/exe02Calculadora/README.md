### Exercício 2:
Crie um app que...

Tenha uma classe Calculadora. 
Essa calculadora deve ser instanciada sem nenhum parametro.
Não é possível acessar propriedades por fora da classe.

Existem os métodos:
- Somar
- Subtrair
- Dividir 
- Multiplicar

Nesses métodos, será possível passar 2 parametros, e deverá retornar o resultado matemático.

O segundo parametro deve ser opcional, sendo que se eu passar só o primeiro, deve retornar o primeiro numero sem ser alterador por contas.

MAS se eu já tiver feito uma operação antes, ele deve armazenar o total, e quando eu passar só um parametro, deve levar em conta o resultado já existente.

```
Ex: 
somar(1,1) 
retorna 2
dividir(1,nil)
retorna 2
Ex:
somar(1, nil)
retorna 1
```
* Não deve haver prints na classe da calculadora.
