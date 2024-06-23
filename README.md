# RailsS3Uploader


**RailsS3Uploader** é uma gem em desenvolvimento para facilitar o upload de arquivos para o Amazon S3 usando Active Storage em aplicações Rails.

---

## Instalação

**Nota:** Esta gem está atualmente em desenvolvimento e ainda não foi lançada no RubyGems.org.

Para usar a versão de desenvolvimento, adicione esta linha ao seu Gemfile:

```ruby
gem 'rails_s3_uploader', git: 'https://github.com/RaquelFonsec/rails_s3_uploader.git'


E execute: bundle install



Uso
Nota: A documentação completa de uso será fornecida em futuras versões.

Configuração Inicial
Variáveis de Ambiente

Crie um arquivo .env na raiz do seu projeto Rails e adicione suas credenciais da AWS:

AWS_ACCESS_KEY_ID=seu_access_key_id
AWS_SECRET_ACCESS_KEY=seu_secret_access_key
AWS_REGION=sua_regiao
AWS_BUCKET=nome_do_seu_bucket

Inicializador

Crie um inicializador em config/initializers/rails_s3_uploader.rb


RailsS3Uploader.configure do |config|
  config.access_key_id = ENV['AWS_ACCESS_KEY_ID']
  config.secret_access_key = ENV['AWS_SECRET_ACCESS_KEY']
  config.region = ENV['AWS_REGION']
  config.bucket = ENV['AWS_BUCKET']
end


Desenvolvimento
Para configurar o ambiente de desenvolvimento, clone o repositório e instale as dependências:


 git clone https://github.com/RaquelFonsec/rails_s3_uploader.git

 cd rails_s3_uploader

 bin/setup

Você pode usar bin/console para um prompt interativo que permite testar o código.


Para instalar esta gem localmente, execute:

 bundle exec rake install


Contribuições são bem-vindas! Relatórios de bugs e pull requests são bem-vindos no GitHub em https://github.com/RaquelFonsec/rails_s3_uploader.

Licença
Esta gem está disponível como código aberto sob os termos da licença MIT.





