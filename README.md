# VaultGuard
VaultGuard é um aplicativo Android desenvolvido em Flutter que permite aos usuários armazenar, organizar e acessar suas senhas com segurança. Utiliza Firebase como backend para autenticação e armazenamento de dados, proporcionando sincronização e segurança em nuvem.

# Protótipo
O protótipo está em desenvolvimento no Figma. (https://www.figma.com/design/ZJtU9tt8rFdM84LJCqSnFp/VaultGuard?node-id=0-1&p=f&t=he5acAChJwANxbMU-0)

# Tecnologia Utilizada
- Flutter – Interface e lógica do app
- Firebase Authentication – Login seguro por email/senha e autenticação de dois fatores (em planejamento)
- Firebase Firestore – Armazenamento seguro de dados criptografados
- Firebase Cloud Functions – (Opcional) Para lógica adicional e triggers
- Provider / Riverpod / Bloc – Gerenciamento de estado (especifique qual usará)
- Encryption Package – Criptografia local das senhas (ex: encrypt ou flutter_secure_storage)

# Funcionalidades Planejadas
- Cadastro e login de usuário ⏳
- Criação, edição e exclusão de entradas de senha ⏳
- Organização por categorias (banco, redes sociais, etc.) ✔️
- Busca por nome/plataforma ⏳
- Geração de senhas seguras ⏳
- Biometria / PIN para desbloqueio rápido ⏳
- Backup automático no Firebase ⏳
- Interface amigável e responsiva ✔️

# Extrutura planejada

lib/
├── main.dart # Ponto de entrada do aplicativo
├── screens/ # Telas principais do app
│ ├── login_screen.dart
│ ├── register_screen.dart
│ ├── home_screen.dart
│ ├── password_list_screen.dart
│ └── password_detail_screen.dart
├── widgets/ # Componentes reutilizáveis de UI
│ ├── password_card.dart
│ ├── custom_text_field.dart
│ └── vaultguard_logo.dart
├── services/ # Lógica de autenticação e banco de dados
│ ├── auth_service.dart
│ ├── database_service.dart
│ └── encryption_service.dart
├── models/ # Estruturas de dados do app
│ └── password_entry.dart
├── utils/ # Funções auxiliares e constantes
│ ├── constants.dart
│ └── helpers.dart
└── theme/ # Configurações de tema e estilo
└── app_theme.dart

# Segurança
- Todos os dados armazenados são criptografados localmente antes de serem enviados ao Firestore.
- O app implementa autenticação com Firebase e planeja suporte a autenticação biométrica.
- Em desenvolvimento: proteção contra screenshots e timeout de sessão.
