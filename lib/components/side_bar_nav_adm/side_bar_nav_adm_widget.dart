import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'side_bar_nav_adm_model.dart';
export 'side_bar_nav_adm_model.dart';

class SideBarNavAdmWidget extends StatefulWidget {
  const SideBarNavAdmWidget({super.key});

  @override
  State<SideBarNavAdmWidget> createState() => _SideBarNavAdmWidgetState();
}

class _SideBarNavAdmWidgetState extends State<SideBarNavAdmWidget> {
  late SideBarNavAdmModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SideBarNavAdmModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<ApiCallResponse>(
      future: BdGroup.apiUsuariosUUIDCall.call(
        uuid: currentUserUid,
        token: currentJwtToken,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        final sideBarApiUsuariosUUIDResponse = snapshot.data!;

        return AnimatedContainer(
          duration: Duration(milliseconds: 290),
          curve: Curves.easeOut,
          width: (FFAppState().Expandir ? true : false) ? 270.0 : 79.0,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(12.0),
              topLeft: Radius.circular(0.0),
              topRight: Radius.circular(12.0),
            ),
          ),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (FFAppState().Expandir)
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 24.0, 0.0, 24.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            if (Theme.of(context).brightness ==
                                Brightness.light)
                              Image.network(
                                'https://thboylkaegbjrzpfnjgc.supabase.co/storage/v1/object/public/Arbi/Logo/logoCamillaScarpaFashionHub.jpg',
                                width: 130.0,
                                height: 40.0,
                                fit: BoxFit.fitWidth,
                              ),
                            if (Theme.of(context).brightness == Brightness.dark)
                              Image.network(
                                'https://thboylkaegbjrzpfnjgc.supabase.co/storage/v1/object/public/Arbi/Logo/logoCamillaScarpaFashionHub.jpg',
                                width: 130.0,
                                height: 40.0,
                                fit: BoxFit.fitWidth,
                              ),
                          ],
                        ),
                      ),
                    MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().menuSelecionado =
                                'Relatório Detalhado';
                            safeSetState(() {});

                            context.pushNamed(
                              'estoqueMarcasAdm',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: Container(
                            width: double.infinity,
                            height: 48.0,
                            decoration: BoxDecoration(
                              color: () {
                                if (FFAppState().menuSelecionado ==
                                    'Relatório Detalhado') {
                                  return Color(0xFF92F3E1);
                                } else if (_model.mouseRegionHovered1!) {
                                  return FlutterFlowTheme.of(context).alternate;
                                } else {
                                  return Color(0x00000000);
                                }
                              }(),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 4.0, 4.0, 4.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 12.0, 0.0),
                                    child: Icon(
                                      Icons.bar_chart_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                  if (FFAppState().Expandir)
                                    Text(
                                      'Consulta Estoque',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      onEnter: ((event) async {
                        safeSetState(() => _model.mouseRegionHovered1 = true);
                      }),
                      onExit: ((event) async {
                        safeSetState(() => _model.mouseRegionHovered1 = false);
                      }),
                    ),
                    MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().menuSelecionado = 'Estoque';
                            safeSetState(() {});

                            context.pushNamed(
                              'cadastroProduto',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: Container(
                            width: double.infinity,
                            height: 48.0,
                            decoration: BoxDecoration(
                              color: () {
                                if (FFAppState().menuSelecionado == 'Estoque') {
                                  return Color(0xFF92F3E1);
                                } else if (_model.mouseRegionHovered2!) {
                                  return FlutterFlowTheme.of(context).alternate;
                                } else {
                                  return Color(0x00000000);
                                }
                              }(),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 4.0, 4.0, 4.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 12.0, 0.0),
                                    child: Icon(
                                      Icons.bar_chart_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                  if (FFAppState().Expandir)
                                    Text(
                                      'Cadastrar Estoque',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      onEnter: ((event) async {
                        safeSetState(() => _model.mouseRegionHovered2 = true);
                      }),
                      onExit: ((event) async {
                        safeSetState(() => _model.mouseRegionHovered2 = false);
                      }),
                    ),
                    MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().menuSelecionado =
                                'Relatório Consolidado';
                            safeSetState(() {});

                            context.pushNamed(
                              'vendasAdm',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: Container(
                            width: double.infinity,
                            height: 48.0,
                            decoration: BoxDecoration(
                              color: () {
                                if (FFAppState().menuSelecionado ==
                                    'Relatório Consolidado') {
                                  return Color(0xFF92F3E1);
                                } else if (_model.mouseRegionHovered3!) {
                                  return FlutterFlowTheme.of(context).alternate;
                                } else {
                                  return Color(0x00000000);
                                }
                              }(),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 4.0, 4.0, 4.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 12.0, 0.0),
                                    child: Icon(
                                      Icons.bar_chart_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                  if (FFAppState().Expandir)
                                    Text(
                                      'Consulta Vendas',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      onEnter: ((event) async {
                        safeSetState(() => _model.mouseRegionHovered3 = true);
                      }),
                      onExit: ((event) async {
                        safeSetState(() => _model.mouseRegionHovered3 = false);
                      }),
                    ),
                    MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().menuSelecionado = 'Vendas';
                            safeSetState(() {});

                            context.pushNamed(
                              'vendaProduto',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: Container(
                            width: double.infinity,
                            height: 48.0,
                            decoration: BoxDecoration(
                              color: () {
                                if (FFAppState().menuSelecionado == 'Vendas') {
                                  return Color(0xFF92F3E1);
                                } else if (_model.mouseRegionHovered4!) {
                                  return FlutterFlowTheme.of(context).alternate;
                                } else {
                                  return Color(0x00000000);
                                }
                              }(),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 4.0, 4.0, 4.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 12.0, 0.0),
                                    child: Icon(
                                      Icons.bar_chart_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                  if (FFAppState().Expandir)
                                    Text(
                                      'Inserir Vendas',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      onEnter: ((event) async {
                        safeSetState(() => _model.mouseRegionHovered4 = true);
                      }),
                      onExit: ((event) async {
                        safeSetState(() => _model.mouseRegionHovered4 = false);
                      }),
                    ),
                    MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().menuSelecionado = 'Perfil';
                            safeSetState(() {});

                            context.pushNamed(
                              'profilePageADM',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: Container(
                            width: double.infinity,
                            height: 48.0,
                            decoration: BoxDecoration(
                              color: () {
                                if (FFAppState().menuSelecionado == 'Perfil') {
                                  return Color(0xFF92F3E1);
                                } else if (_model.mouseRegionHovered5!) {
                                  return FlutterFlowTheme.of(context).alternate;
                                } else {
                                  return Color(0x00000000);
                                }
                              }(),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 4.0, 4.0, 4.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 12.0, 0.0),
                                    child: Icon(
                                      Icons.account_circle_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                  if (FFAppState().Expandir)
                                    Text(
                                      'Perfil',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      onEnter: ((event) async {
                        safeSetState(() => _model.mouseRegionHovered5 = true);
                      }),
                      onExit: ((event) async {
                        safeSetState(() => _model.mouseRegionHovered5 = false);
                      }),
                    ),
                    MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().menuSelecionado = 'Logout';
                            safeSetState(() {});
                            GoRouter.of(context).prepareAuthEvent();
                            await authManager.signOut();
                            GoRouter.of(context).clearRedirectLocation();

                            context.goNamedAuth('signIn', context.mounted);
                          },
                          child: Container(
                            width: double.infinity,
                            height: 48.0,
                            decoration: BoxDecoration(
                              color: () {
                                if (FFAppState().menuSelecionado == 'Logout') {
                                  return Color(0xFF92F3E1);
                                } else if (_model.mouseRegionHovered6!) {
                                  return FlutterFlowTheme.of(context).alternate;
                                } else {
                                  return Color(0x00000000);
                                }
                              }(),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 4.0, 4.0, 4.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 12.0, 0.0),
                                    child: Icon(
                                      Icons.logout_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                  if (FFAppState().Expandir)
                                    Text(
                                      'Logout',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      onEnter: ((event) async {
                        safeSetState(() => _model.mouseRegionHovered6 = true);
                      }),
                      onExit: ((event) async {
                        safeSetState(() => _model.mouseRegionHovered6 = false);
                      }),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 16.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(40.0),
                                    child: CachedNetworkImage(
                                      fadeInDuration:
                                          Duration(milliseconds: 500),
                                      fadeOutDuration:
                                          Duration(milliseconds: 500),
                                      imageUrl: valueOrDefault<String>(
                                        BdGroup.apiUsuariosUUIDCall.fotoPerfil(
                                          sideBarApiUsuariosUUIDResponse
                                              .jsonBody,
                                        ),
                                        'https://thboylkaegbjrzpfnjgc.supabase.co/storage/v1/object/public/Arbi/Logo/logoCamillaScarpaFashionHub.jpg',
                                      ),
                                      width: 40.0,
                                      height: 40.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          if (FFAppState().Expandir)
                                            Text(
                                              valueOrDefault<String>(
                                                BdGroup.apiUsuariosUUIDCall
                                                    .nome(
                                                  sideBarApiUsuariosUUIDResponse
                                                      .jsonBody,
                                                ),
                                                'null',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMediumFamily),
                                                      ),
                                            ),
                                          if (FFAppState().Expandir)
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 4.0, 0.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  BdGroup.apiUsuariosUUIDCall
                                                      .email(
                                                    sideBarApiUsuariosUUIDResponse
                                                        .jsonBody,
                                                  ),
                                                  'null',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmallFamily,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmallFamily),
                                                        ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(1.0, -1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 20.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      FFAppState().Expandir = !(FFAppState().Expandir ?? true);
                      safeSetState(() {});
                    },
                    child: Icon(
                      Icons.menu_outlined,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
