import 'package:flutter/material.dart';
import '../../../shared/models/asset.dart';
import '../../../core/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Dados Mockados (Simulados) conforme seu protótipo
  static List<Asset> mockAssets = [
    Asset(
      id: '1',
      name: 'Compressor de Ar Industrial - AC01',
      idCode: 'COEL-CMP-2024-081',
      location: 'Planta A - Setor de Manufatura',
      lastInspection: '12 Out 2023',
      status: AssetStatus.operacional,
    ),
    Asset(
      id: '2',
      name: 'Gerador de Energia de Emergência',
      idCode: 'COEL-GER-2023-112',
      location: 'Subsolo 02 - Bloco Sul',
      lastInspection: '05 Nov 2023',
      status: AssetStatus.manutencao,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ativos"),
        actions: [
          IconButton(icon: const Icon(Icons.notifications_none), onPressed: () {}),
          IconButton(icon: const Icon(Icons.account_circle_outlined), onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          // Cabeçalho Azul com Busca
          Container(
            color: AppTheme.coelBlue,
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Buscar por nome ou ID...",
                prefixIcon: const Icon(Icons.search),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
          ),
          
          // Lista de Ativos
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: mockAssets.length,
              itemBuilder: (context, index) {
                final asset = mockAssets[index];
                return _buildAssetCard(asset);
              },
            ),
          ),
        ],
      ),
      
      // Botão Flutuante "Identificar"
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Aqui chamaremos o NFC no futuro!
          print("Iniciando leitura NFC...");
        },
        backgroundColor: AppTheme.coelOrange,
        icon: const Icon(Icons.sensors),
        label: const Text("Identificar Equipamento"),
      ),

      // Barra de Navegação Inferior
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Ativos'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'Histórico'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
      ),
    );
  }

  Widget _buildAssetCard(Asset asset) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(asset.name, 
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                ),
                _buildStatusChip(asset.status),
              ],
            ),
            const SizedBox(height: 8),
            Text("ID: ${asset.idCode}", style: TextStyle(color: Colors.grey[600])),
            const SizedBox(height: 4),
            Row(
              children: [
                const Icon(Icons.location_on_outlined, size: 16, color: Colors.blue),
                const SizedBox(width: 4),
                Text(asset.location),
              ],
            ),
            const Divider(),
            Text("Última inspeção: ${asset.lastInspection}", 
              style: const TextStyle(fontSize: 12, color: Colors.grey)),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusChip(AssetStatus status) {
    Color color;
    String label;
    switch (status) {
      case AssetStatus.operacional:
        color = Colors.green;
        label = "Operacional";
        break;
      case AssetStatus.manutencao:
        color = Colors.orange;
        label = "Manutenção";
        break;
      case AssetStatus.alerta:
        color = Colors.red;
        label = "Alerta";
        break;
    }
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(color: color.withOpacity(0.1), borderRadius: BorderRadius.circular(12)),
      child: Text(label, style: TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 12)),
    );
  }
}