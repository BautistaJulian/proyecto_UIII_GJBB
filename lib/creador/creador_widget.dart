import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../inicio/inicio_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreadorWidget extends StatefulWidget {
  const CreadorWidget({Key key}) : super(key: key);

  @override
  _CreadorWidgetState createState() => _CreadorWidgetState();
}

class _CreadorWidgetState extends State<CreadorWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF6699CC),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => InicioWidget(),
              ),
            );
          },
        ),
        title: Text(
          'Datos del creador',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-0.79, -0.11),
                child: Text(
                  'Hola!',
                  style: FlutterFlowTheme.of(context).title1,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.36),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Este soy yo, Mi nombre es Gael Julian Bautista \nBarraza, aunque ciertamente prefiero que me digan \nJulian.\n\nTengo 17 años, naci el 26 de octubre de 2004 en\n el municipio de ciudad Juarez.\n\nActualmente estudio en la preparatoria \nCBTis No°128, en el curso de 6to semestre,\ny mi materia de especialidad es programacion.',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.99),
                child: Image.network(
                  'https://raw.githubusercontent.com/BautistaJulian/Proyecto_UIII/main/UIII_Poryecto/Creador.PNG',
                  width: double.infinity,
                  height: 270,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
