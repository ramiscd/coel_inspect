enum AssetStatus { operacional, manutencao, alerta }

class Asset {
  final String id;
  final String name;
  final String idCode;
  final String location;
  final String lastInspection;
  final AssetStatus status;

  Asset({
    required this.id,
    required this.name,
    required this.idCode,
    required this.location,
    required this.lastInspection,
    required this.status,
  });
}