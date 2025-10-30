import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_stateSSAcompleta')) {
        try {
          final serializedData = prefs.getString('ff_stateSSAcompleta') ?? '{}';
          _stateSSAcompleta = CcSSACompletaStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _UltimaAtualizacao =
          prefs.getString('ff_UltimaAtualizacao') ?? _UltimaAtualizacao;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_usuarioLogado')) {
        try {
          final serializedData = prefs.getString('ff_usuarioLogado') ?? '{}';
          _usuarioLogado = CfUsuarioAtivoStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_configEmpresaSelecionada')) {
        try {
          final serializedData =
              prefs.getString('ff_configEmpresaSelecionada') ?? '{}';
          _configEmpresaSelecionada =
              CfEmpresaSelecionadaStruct.fromSerializableMap(
                  jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_configProjetoSelecionado')) {
        try {
          final serializedData =
              prefs.getString('ff_configProjetoSelecionado') ?? '{}';
          _configProjetoSelecionado =
              CfProjetoSelecionadoStruct.fromSerializableMap(
                  jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _configItensSelecionaveisVT = prefs
              .getStringList('ff_configItensSelecionaveisVT')
              ?.map((x) {
                try {
                  return CfItensVisitaTecnicaStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _configItensSelecionaveisVT;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  CcSSACompletaStruct _stateSSAcompleta = CcSSACompletaStruct();
  CcSSACompletaStruct get stateSSAcompleta => _stateSSAcompleta;
  set stateSSAcompleta(CcSSACompletaStruct value) {
    _stateSSAcompleta = value;
    prefs.setString('ff_stateSSAcompleta', value.serialize());
  }

  void updateStateSSAcompletaStruct(Function(CcSSACompletaStruct) updateFn) {
    updateFn(_stateSSAcompleta);
    prefs.setString('ff_stateSSAcompleta', _stateSSAcompleta.serialize());
  }

  /// Informação é exibida no sidebar
  String _UltimaAtualizacao = '15/10 -15:00';
  String get UltimaAtualizacao => _UltimaAtualizacao;
  set UltimaAtualizacao(String value) {
    _UltimaAtualizacao = value;
    prefs.setString('ff_UltimaAtualizacao', value);
  }

  bool _menuToggle = true;
  bool get menuToggle => _menuToggle;
  set menuToggle(bool value) {
    _menuToggle = value;
  }

  CfUsuarioAtivoStruct _usuarioLogado = CfUsuarioAtivoStruct();
  CfUsuarioAtivoStruct get usuarioLogado => _usuarioLogado;
  set usuarioLogado(CfUsuarioAtivoStruct value) {
    _usuarioLogado = value;
    prefs.setString('ff_usuarioLogado', value.serialize());
  }

  void updateUsuarioLogadoStruct(Function(CfUsuarioAtivoStruct) updateFn) {
    updateFn(_usuarioLogado);
    prefs.setString('ff_usuarioLogado', _usuarioLogado.serialize());
  }

  String _uploadBase64 = '';
  String get uploadBase64 => _uploadBase64;
  set uploadBase64(String value) {
    _uploadBase64 = value;
  }

  CfEmpresaSelecionadaStruct _configEmpresaSelecionada =
      CfEmpresaSelecionadaStruct();
  CfEmpresaSelecionadaStruct get configEmpresaSelecionada =>
      _configEmpresaSelecionada;
  set configEmpresaSelecionada(CfEmpresaSelecionadaStruct value) {
    _configEmpresaSelecionada = value;
    prefs.setString('ff_configEmpresaSelecionada', value.serialize());
  }

  void updateConfigEmpresaSelecionadaStruct(
      Function(CfEmpresaSelecionadaStruct) updateFn) {
    updateFn(_configEmpresaSelecionada);
    prefs.setString(
        'ff_configEmpresaSelecionada', _configEmpresaSelecionada.serialize());
  }

  CfProjetoSelecionadoStruct _configProjetoSelecionado =
      CfProjetoSelecionadoStruct();
  CfProjetoSelecionadoStruct get configProjetoSelecionado =>
      _configProjetoSelecionado;
  set configProjetoSelecionado(CfProjetoSelecionadoStruct value) {
    _configProjetoSelecionado = value;
    prefs.setString('ff_configProjetoSelecionado', value.serialize());
  }

  void updateConfigProjetoSelecionadoStruct(
      Function(CfProjetoSelecionadoStruct) updateFn) {
    updateFn(_configProjetoSelecionado);
    prefs.setString(
        'ff_configProjetoSelecionado', _configProjetoSelecionado.serialize());
  }

  /// itens que compoem o formulario de visita tecnica
  List<CfItensVisitaTecnicaStruct> _configItensSelecionaveisVT = [];
  List<CfItensVisitaTecnicaStruct> get configItensSelecionaveisVT =>
      _configItensSelecionaveisVT;
  set configItensSelecionaveisVT(List<CfItensVisitaTecnicaStruct> value) {
    _configItensSelecionaveisVT = value;
    prefs.setStringList('ff_configItensSelecionaveisVT',
        value.map((x) => x.serialize()).toList());
  }

  void addToConfigItensSelecionaveisVT(CfItensVisitaTecnicaStruct value) {
    configItensSelecionaveisVT.add(value);
    prefs.setStringList('ff_configItensSelecionaveisVT',
        _configItensSelecionaveisVT.map((x) => x.serialize()).toList());
  }

  void removeFromConfigItensSelecionaveisVT(CfItensVisitaTecnicaStruct value) {
    configItensSelecionaveisVT.remove(value);
    prefs.setStringList('ff_configItensSelecionaveisVT',
        _configItensSelecionaveisVT.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromConfigItensSelecionaveisVT(int index) {
    configItensSelecionaveisVT.removeAt(index);
    prefs.setStringList('ff_configItensSelecionaveisVT',
        _configItensSelecionaveisVT.map((x) => x.serialize()).toList());
  }

  void updateConfigItensSelecionaveisVTAtIndex(
    int index,
    CfItensVisitaTecnicaStruct Function(CfItensVisitaTecnicaStruct) updateFn,
  ) {
    configItensSelecionaveisVT[index] =
        updateFn(_configItensSelecionaveisVT[index]);
    prefs.setStringList('ff_configItensSelecionaveisVT',
        _configItensSelecionaveisVT.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInConfigItensSelecionaveisVT(
      int index, CfItensVisitaTecnicaStruct value) {
    configItensSelecionaveisVT.insert(index, value);
    prefs.setStringList('ff_configItensSelecionaveisVT',
        _configItensSelecionaveisVT.map((x) => x.serialize()).toList());
  }

  /// Variavel que auxilia na consulta e insert do db -> DataType
  List<int> _loopQueryActionBlock = [];
  List<int> get loopQueryActionBlock => _loopQueryActionBlock;
  set loopQueryActionBlock(List<int> value) {
    _loopQueryActionBlock = value;
  }

  void addToLoopQueryActionBlock(int value) {
    loopQueryActionBlock.add(value);
  }

  void removeFromLoopQueryActionBlock(int value) {
    loopQueryActionBlock.remove(value);
  }

  void removeAtIndexFromLoopQueryActionBlock(int index) {
    loopQueryActionBlock.removeAt(index);
  }

  void updateLoopQueryActionBlockAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    loopQueryActionBlock[index] = updateFn(_loopQueryActionBlock[index]);
  }

  void insertAtIndexInLoopQueryActionBlock(int index, int value) {
    loopQueryActionBlock.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
