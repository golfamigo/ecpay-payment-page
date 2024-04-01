import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'action_model.dart';
export 'action_model.dart';

class ActionWidget extends StatefulWidget {
  const ActionWidget({super.key});

  @override
  State<ActionWidget> createState() => _ActionWidgetState();
}

class _ActionWidgetState extends State<ActionWidget> {
  late ActionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ActionModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Page Title',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        FFButtonWidget(
                          key: const ValueKey('Button_0osg'),
                          onPressed: () async {
                            // 編碼
                            _model.varOut = await actions.checkMAC(
                              FFAppState().ecpayRequire.toMap(),
                              'pwFHCqoQZGmho4w6',
                              'EkRm7iFT261dpevs',
                            );
                            // 取得Token
                            _model.token = await GetTokenCall.call(
                              data: _model.varOut?.last,
                              timestamp: getCurrentTimestamp.secondsSinceEpoch
                                  .toString(),
                              merchantID: FFAppState().MerchantID,
                            );
                            if ((_model.token?.succeeded ?? true)) {
                              // 解碼回傳的資料
                              _model.decodeToken =
                                  await actions.customActionDecrypt(
                                getJsonField(
                                  (_model.token?.jsonBody ?? ''),
                                  r'''$.Data''',
                                ).toString(),
                                'pwFHCqoQZGmho4w6',
                                'EkRm7iFT261dpevs',
                              );
                              if (_model.decodeToken != null) {
                                // 導向支付界面

                                context.pushNamed(
                                  'webView',
                                  queryParameters: {
                                    'token': serializeParam(
                                      getJsonField(
                                        _model.decodeToken,
                                        r'''$.Token''',
                                      ).toString(),
                                      ParamType.String,
                                    ),
                                    'merchantTradeNo': serializeParam(
                                      FFAppState()
                                          .ecpayRequire
                                          .orderInfo
                                          .merchantTradeNo,
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );
                              }
                            }

                            setState(() {});
                          },
                          text: '編碼',
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        SelectionArea(
                            child: Text(
                          valueOrDefault<String>(
                            _model.varOut?.first,
                            '0',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                        )),
                        SelectionArea(
                            child: Text(
                          valueOrDefault<String>(
                            functions.convertMapToJson(
                                FFAppState().ecpayRequire.toMap()),
                            '0',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                        )),
                      ].divide(const SizedBox(height: 10.0)),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        FFButtonWidget(
                          key: const ValueKey('Button_o4g9'),
                          onPressed: () async {
                            setState(() {
                              FFAppState().ecpayRequire =
                                  EcpayRequireDataStruct(
                                merchantID: '3002607',
                                rememberCard: 1,
                                paymentUIType: 2,
                                choosePaymentList: '0',
                                orderInfo: OrderInfoStruct(
                                  merchantTradeDate: dateTimeFormat(
                                      'yyyy/MM/dd HH:mm:ss',
                                      getCurrentTimestamp),
                                  merchantTradeNo: 'order${(String var1) {
                                    return var1
                                        .replaceAll(RegExp(r'[^0-9]'), '')
                                        .substring(0, 14);
                                  }(getCurrentTimestamp.toString())}',
                                  totalAmount: 1000,
                                  returnURL: 'https://pay.d2e.fun/receive',
                                  tradeDesc: 'New Order',
                                  itemName: 'Soap',
                                ),
                                cardInfo: CardInfoStruct(
                                  redeem: '0',
                                  orderResultURL: 'https://pay.d2e.fun/receive',
                                  creditInstallment: '3,6,12',
                                  flexibleInstallment: '30',
                                ),
                                unionPayInfo: UnionPayInfoStruct(
                                  orderResultURL: 'https://pay.d2e.fun/receive',
                                ),
                                aTMInfo: ATMInfoStruct(
                                  expireDate: 3,
                                ),
                                cVSInfo: CVSInfoStruct(
                                  storeExpireDate: 10080,
                                ),
                                barcodeInfo: BarcodeInfoStruct(
                                  storeExpireDate: 7,
                                ),
                                consumerInfo: ConsumerInfoStruct(
                                  merchantMemberID: 'test123456',
                                  email: 'customer@email.com',
                                  phone: '0912345678',
                                  name: 'Test',
                                  countryCode: '158',
                                ),
                              );
                            });
                          },
                          text: '新增資料到var',
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            setState(() {
                              FFAppState().ecpayRequire =
                                  EcpayRequireDataStruct(
                                name: 'Test',
                                id: 'A123456789',
                              );
                            });
                          },
                          text: '簡單var',
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ].divide(const SizedBox(height: 10.0)),
                    ),
                  ].divide(const SizedBox(height: 10.0)),
                ),
                SelectionArea(
                    child: Text(
                  valueOrDefault<String>(
                    getJsonField(
                      (_model.token?.jsonBody ?? ''),
                      r'''$.Data''',
                    )?.toString(),
                    'Token',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                )),
                SelectionArea(
                    child: Text(
                  valueOrDefault<String>(
                    getJsonField(
                      _model.decodeToken,
                      r'''$.Token''',
                    )?.toString(),
                    'decodeToken',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                )),
                SelectionArea(
                    child: Text(
                  valueOrDefault<String>(
                    (_model.token?.jsonBody ?? '').toString(),
                    'Token',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                )),
              ].divide(const SizedBox(height: 20.0)).around(const SizedBox(height: 20.0)),
            ),
          ),
        ),
      ),
    );
  }
}
