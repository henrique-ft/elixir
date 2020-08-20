% ERLANG

% Variáveis devem começar sempre com o primeiro caractere uppercase
%
% One = 1.
%
% Atoms são definidos a partir de todas as letras lowercase
%
% im_a_atom.
%
% Para iniciar o terminal do erlang digite 'erl' no terminal
%
% Podermos definir funções anônimas da seguinte maneira:
%
% F = fun(X) -> 2*X end.
%
% Podemos chama-la da seguinte maneira:
%
% F(2).


% Um módulo é definido com a palavra chave -module(atom) passando o atom como parâmetro
% Sempre terminamos uma linha com o '.', semelhante ao ';' em outras linguagens
-module(hello).
% Para exportar funções do módulo para o mundo externo, utilizamos a palavra chave -export(func/arity)
-export([say_hello/0]).
% Podemos definir atributos de módulo com a palavra chave -atom(valor)
-sou_um_atributo(4).
% Os atributos module e export são atributos padrão do Erlang, assim como eles temos:
%
% -export, -import, -compile, -vsn e -on_load

% Podemos declarar funções de módulo da seguinte maneira:
say_hello() -> "hello world".




