import 'email.dart';

class Backend {
  /// Singleton pattern used here.
  static final Backend _backend = Backend._internal();

  factory Backend() {
    return _backend;
  }

  Backend._internal();

  /// Private list of emails. Hardcoded here for testing purposes.
  final _emails = [
    Email(
      id: 631,
      from: 'matildeve@veliced.com',
      subject: 'Matilde Veliz',
      dateTime: DateTime(2022, 20, 05, 19, 43),
      body:
          'Hola somos una empresa de venta de equipos e insumos medicos',
    ),
    Email(
      id: 522,
      from: 'dixon@veliced.com',
      subject: 'Dixon Briones',
      dateTime: DateTime(2020, 09, 08, 03, 05),
      body:
          'Soy el administrador de veliced SA.',
    ),
    Email(
      id: 963,
      from: 'jose@veliced.com',
      subject: 'Jose Chavez ',
      dateTime: DateTime(2020, 10, 10, 01, 48),
      body:
          'Parte de los accionistas que ayudaron af undar la empresa',
    ),
    Email(
      id: 164,
      read: true,
      from: 'jacquelin@anarel.com',
      subject: 'Jacqueline Veliz',
      dateTime: DateTime(2019, 05, 10, 10, 14),
      body:
          'Somos una empresa aliada a Veliced ',
    ),
    Email(
      id: 835,
      from: 'javierv@distribuciones.com',
      subject: 'Javier Veliz',
      dateTime: DateTime(2020, 10, 13, 20, 25),
      body:
          'Soy un emprendedor que ofrece servicios a Anarel y Veliced',
    ),
    Email(
      id: 966,
      from: 'milton@limpiezas.com',
      subject: 'Milton Perez',
      dateTime: DateTime(2020, 10, 10, 10, 59),
      body:
          'Los servicios de limpieza de nuestra empresa son los mejores',
    ),
    Email(
      id: 237,
      from: 'jotaq@papelesymas.com',
      subject: 'Jorge Quieroz',
      dateTime: DateTime(2020, 10, 11, 20, 09),
      body:
          'Ahorrar en papeles, los papeles que damos son amigables con el medioambiente y duraderos',
    ),
    Email(
      id: 308,
      from: 'tatianam@genesis.com',
      subject: 'Tatiana Macias',
      dateTime: DateTime(2020, 10, 18, 18, 10),
      body:
          'El sistema contable genesis sirve de mucha ayuda a llevar el control de las facturas',
    ),
   
  ];

  ///
  /// Public API starts here :)
  ///

  /// Returns all emails.
  List<Email> getEmails() {
    return _emails;
  }

  /// Marks email identified by its id as read.
  void markEmailAsRead(int id) {
    final index = _emails.indexWhere((email) => email.id == id);
    _emails[index].read = true;
  }

  /// Deletes email identified by its id.
  void deleteEmail(int id) {
    _emails.removeWhere((email) => email.id == id);
  }
}
