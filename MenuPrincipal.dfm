object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Menu Principal'
  ClientHeight = 549
  ClientWidth = 794
  Color = 14739951
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mainPrincipal
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object imgBackground: TImage
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 788
    Height = 543
    Align = alClient
    Center = True
    Stretch = True
    ExplicitLeft = 1
    ExplicitTop = 8
    ExplicitWidth = 771
    ExplicitHeight = 515
  end
  object mainPrincipal: TMainMenu
    Left = 720
    Top = 48
    object menuMenu: TMenuItem
      Caption = 'MENU'
      object menuConfiguracao: TMenuItem
        Caption = 'Configura'#231#245'es'
        OnClick = menuConfiguracaoClick
      end
    end
    object menuCadastros: TMenuItem
      Caption = 'CADASTROS'
      object menuCadastrosProdutos: TMenuItem
        Caption = 'Produtos'
        OnClick = menuCadastrosProdutosClick
      end
      object menuCadastrosClientes: TMenuItem
        Caption = 'Clientes'
        OnClick = menuCadastrosClientesClick
      end
      object menuCadastrosPedidos: TMenuItem
        Caption = 'Pedidos'
        OnClick = menuCadastrosPedidosClick
      end
    end
    object menuFuncionarios: TMenuItem
      Caption = 'FUNCION'#193'RIOS'
      OnClick = menuFuncionariosClick
    end
    object menuRelatorios: TMenuItem
      Caption = 'RELAT'#211'RIOS'
      object menuRelatoriosProdutos: TMenuItem
        Caption = 'Relat'#243'rio de Produtos'
        OnClick = menuRelatoriosProdutosClick
      end
      object menuRelatoriosPedidos: TMenuItem
        Caption = 'Relat'#243'rio de Pedidos'
        OnClick = menuRelatoriosPedidosClick
      end
    end
  end
  object ttiProgramaBandeja: TTrayIcon
    Icon.Data = {
      0000010001000000000001002000321900001600000089504E470D0A1A0A0000
      000D49484452000001000000010008060000005C72A866000000097048597300
      000B1300000B1301009A9C18000018E449444154789CED9DE98F1CC779C62929
      3AFC3D369CEF392DE78365398083C041FE8320400CC54E62C70112C78661201F
      2CD84AA2CB8E924886ADC0122F59E221DE22299192B85AEE927BEFEC4D712F1E
      7B907B738F99ED9E5D1E32B9957A67769951ED35DDD35D4FF5ECF3003F4016BC
      9AEA9A7A7FD34755F5B66D0E4429F5A8E649CD37342F688E685A34FD9A514D5A
      314CB2226356C6AE8CE194E6B0E679951FE35FD63C8AAE3B58F4C13FA4F953CD
      339A2ACD4DC857C430B8C8983FABF989E6AB9A87D075197BF4413EAE794E730D
      D8F10CE3622634AF6A9E40D769A4D107F488E63B9A0BD0EE6598E4A44BF30F9A
      87D1F51B3A2A7F5DFF4F9A116857324C72735DF343CD67D0F55C7474631FD0FC
      ADCA9FD2300C537AC6357F83AEED4DA31BF97B9A4A7067314CB9A646F338BACE
      574537EA41CDBF6B3EC1F60FC3947DEEA8FC938307D1759F8B6EC8673515D83E
      61982D97739ADF4117FF5F6826C11DC1305B35729FEDCF51C5FF579A5BE00E60
      98AD1EB92478CA76F17F5F730F7CE00CC3E4B3A4F9575BC5FF1FE8A3651866CD
      3C1377F17F0F7D840CC36C981FC655FC4F299EF6338CEB911AFD7AD4C52F77FB
      EF800F8C6198E2725BF3B5A88AFF738AD37A19266999D27CBED4E297197E9CDA
      CB30C94CB52A659F01959FDECB304C72F3E3B0C5FF05C5B9FD0C93F4C8BDBB3F
      0C23806A74CB19868924B28AF08120C5FF77E816330C13698A9B2EACFF8F9F51
      BCEBCF30E59631CD63C508E007E896320C134BFE65B3E27F5871C75E8629D7C8
      1E838F6C24807F44B790619858F3ED8D04C0ADBB19A6BCD3B95EF17F11DDB238
      72672EAB6E8DA7D5E2D00DE5F78EAA2CC931FFF1353593BA9A63FEE235787B5C
      C1EF1F550BA3736A31B3A86E2FDC460FDFB8F2C76B09E01574AB4ACDADB13995
      69E857DEE956B578A251DD3DD1A0D4C9464202B378AC5EF5BD795ED5ED3AAFDA
      8FB6A8BEB33D6ABC7B542DA617D0C33C8AFC9759FCF2AEBE443EFA5B1C9A5699
      8A0E75E7387ED090F263F2409D3AFF5AB5A6EA3E4D7BEAD5D586CB2A3BE3A387
      7FD88CABC235022AFFA2CEC464E937F7D47CCB6575F3047E8090F267785FCDA7
      045048DBE1949ABA34A996EE2DA1CB2268BE52288067D0AD2926D2C9F34D97D4
      6DFEDA138BDCD334EDA85E570242F3FE4635D137AE9696122382A70B0550856E
      CD66591CBEA1AFEB9BE083816C4DAEEC59FF2CA010B95FE04D79E8722926152B
      C52F2FF1BC896ECD7A91D3FD4C65975A3AC91B7A04C7C481DAA20420D4BC5EAD
      069B075CBF2C58D43C2A027812DD92F57267C6530B27F9AB4FF04C1EAC2B5A00
      2B741C6B55B73C677F5B254F8800BE896EC55A591C9C529FF0261F7184A17DC5
      9F0114D2F8569DF2A79D7D5AF09408E005742BCC64FB46D55D163F7188B65D1B
      DF04DC08994B30777D165D566BE55911C011742B0A23B3B1EEB1F889434C1F0A
      7EFA6F52BBE39C4A8FA5D1E565E6A008A005DD8A95C8693F7FF9894B2C1CAB57
      F5DB4B2BFEC23301C72E079A4500FDE856486ECF78BCE627CEB074327FE7BF7E
      7BF853FFF5EE09DCCE3AB3C6A0570430866E853CEA5B88E119BF7C898BC71B55
      E6DD949A3BDDAA66CF746C49264FA6D4F5FDB58190BF41B71BC14C45A71AFBB0
      53F59CEE50A9834DAA266201089D27DA5D794438220280CF5A90E7FC5115FD6F
      F459C4DCFB6D6AA66340CDCFCD2B2FBBB0E519EC1C0C3C48E56FD0ED76814CC6
      53A397C7557755B7AADF5DDC64A0A2FAB779005D76928C08E02EB20572DD1FC5
      249FDBC71BD44C4DB7CAA459F42614403464E67D35D83EA81AF7D6972C00992C
      E4C0FD80BBDB909FBE74EF5EC9D37B451EB31F75A90C7FEDD7850288964CC657
      FDF59754EDF6732549A0E39D56F8DA01A80064614F29C57F4B5FDFCFF65E870F
      08D7A100E26162784A35EE29ED6C60B21FBB0A1F2600B9F157CAAA3EB969989E
      98810F82244001C4C7EC7446B51C6E0E2D80D4FE46E80D419800643D7FE8E23F
      DEA4323319F8979F1428807849A7BD922420FB09A0021340D8CD3CE4B49FBFFC
      C1A000E247CE04C2DE1C6C3B924295214600B24167D8E7FAB3DDC3F02F3B6950
      0076981C9E0A7D63303B934594224600B2875F1801CC5676C1BFE4244201D8A3
      BFAE3F9400061AAF204A112380301B78CA737E3EEA0B0705600F993814E6C940
      F3DE064429DA17806CDD1DE6D75F26F9A0BFDCA44201D865A03D787F0B37E7ED
      6F1E625D00B26F7FD0E297E9BDFCF50F0F056017992854B7FB7CE03E1FEFB1BF
      2CC7BA00E4A51D41052073FBD15FEA2AA6C69597AA517EC53B9A63CA6FAA52DE
      989B93922800FB74577607EEF3BEAA1EDBE5685F008BC7834FFD95853DE82FF4
      3E9EAFFCF3EF2B7FFB0BCA7FEDB9D5541C555EC6AD390A14807D46FAC702F779
      FBB156DBE5685F004137FC90B9FECEACEAF3B3CA3FF5F6DA855FC8E19D5A028E
      B4394B012090CB80A04B8965B5A1ED5815C027E96CE05F7F59CF8FFE32EFD35A
      B779F1AFA0CF12E0ED5D8602C0907ABB3170BFDFB979C76649DA1540982700B2
      9907FA8BCC21BFFE6FBD52BC0076BCA8BCB9397CBBB314008AAED39D81FB5DDE
      4A6C335605206BFF137B03F0FA50F1C5BF8CD7EBC6C4250A00C3C51037026DEF
      11605500D9FED1E00238D30EFF2273F45F082E007DC9006F77960240D157D31B
      B8DF3396770EB62B80DEE002907DDAD05FA4E0F7740616809F3A076FB7400160
      E8ABE90BDCEFE9D1399B254901140B054082420118A100305000182800231400
      060A000305608402C0400160A0008C50001828000C1480110A00030580810230
      420160A0003050004628000C1400060AC00805808102C0400118A10030500018
      2800231400060A000305608402C0400160A0008C50001828000C1480119800FC
      6C6E3D7F6E49AF147218641FC0A002387334F4E7797D5DCA1BBE9ADB8330B102
      90B6CB31E86309DDEF969131921B2B3266288068635D00F225B6D52BFFCD9783
      17AF2BEC7E49F90D95CA9BF7922380F979E5D557E6DB8EEEBFB0BCF54A6EEC94
      22020AC0885501C8EEBDC56CE099148EEE525E3AEDBE00741BFD233BF1FD1515
      A70F843E0BA3008CD81440A85376C7F164303A2E00FFD401783F454ECD071440
      14B12680A9F1F5F7ED4F38DEE0157705307819DE3FB1A0C79237394101941A6B
      029037F6A0074D5C54BFE7AE00AADEC5F74F4C782DB51440A9B12500FFA3E3F0
      0113DB403CFEA6BB0238FE6B78FFC446E5090AA0D4581380BCAB0F3D60E2E29D
      379C1580B40DDE3F7151F10E05506AAC09A0A90A3F60E222C42F91350194F199
      97DF5C4D01941A6BF700C6AEE3074C4C7897BA9D158077E922BC7F62E1F5E7F5
      981AA1004A8DD5C7801547F103276A429CFE5B154036ABFC63BBF1FD1435214E
      FF2980356275225026535E1352F6FD5279D3371C1780E6C6946EEB2FF0FD1515
      4776857EDD3B0560C4FA54E0CC7C7E42D08E17F103292CFAF433F70B34371BBA
      1FAC4F059E9DCDDF8895B6A3FB2F2C32666402D07CF8D7BC530046608B81E42D
      BDF2A2CE96DADC0ABD509C097149F1DEDED09FE7B5D428BF5B1FFBCC74C9C70F
      5B0C343DADFC8BEDF96309DBEF96C93DEF97855821A75D53001B84CB81317039
      30060AC00805808102C0400118A100305000182800231400060A000305608402
      C0400160A0008C50001828000C1480110A00030580810230420160A000305000
      4628000C1400060AC00805808102C0400118A100305000182800231400060A00
      0305608402C0400160A0008C50001828000C148091240B20F77EBB80029065B0
      F07667290014148091440B60F86AF033806E37DA4E0160A0008C245A00F2AEC1
      202FBB948D2423D8CC230A28000C148091440B40236FE92D5A001F1D87B77705
      0A0003056024E902905774CB5B7A372D7ED9C0B3843DFCA28602C040011849BC
      0004D92BEEF4066FC095ADBB43EEDE1B171400060AC04859086085C12BF91775
      CAFBF08EED569EBCB127C44B3B6C400160A0008C949500120405808102304201
      60A0003050004628000C1400060AC00805808102C0400118A100305000182800
      231400060A000305608402C0400160A0008C50001828000C1480110A00030580
      810230420160A0003050004628000C1400060AC00805808102C0400118092380
      C993A9DC6024E1F9B8E242E081287F836E77D2693FD9460114268C00AEEFAF0D
      DC898424150A8002205B180A8002205B180A8002205B98B216C0FCC7D7280042
      36607AE886CD92B42B809996AB1400211B307671D46649520084B8C45877190B
      809700846C4C595F02F02620211B53D63701290042368602A000C8168602A000
      C816860230E062A0D2E162200C5C0C6484CB8131C8600C3A10E56FD0ED4E3A5C
      0E6C8402C0400160A0008C50001828000C1480110A00030580810230420160A0
      003050004628000C1400060AC00805808102C0400118A1003050001828002314
      00060A000305608402C0400160A0008C50001828000C1480110A000305808102
      30420160A0003050004628000C1400060AC00805808102C0400118A100305000
      182800231400060A000305608402C0400160A0008C3827809919E55D4829AFAE
      4279F51F29EFE356E5CDCDC63F383219E5F774E9CFAC545EED19E577362A6F6A
      22B6CFA300305000469C1180E7E78ADEDFF953E5BFF6DCA7D9F933E5375529CF
      CFC633303A9B94FFC67FAFFEDCED2F28EFECC99C1CA2FE4C0A00030560C40901
      E8C2F64FBDBDBA000DBCF70FE64511D967EBCF3DFFFEA69FEB1FDE19B9049C16
      403AADBCE101E55FE9B5C3F521DDBFF314C072B69C00FCE6EACD8B704502A70F
      4424015DFCE74E15FFB99527CB5F00E3A3B9FEF5B7BF5874BF44869CE5559E50
      DEF40D0AC0E687C105303FAFFCDD2F051A2CA54B2058F1AF5C0EF85393E52B80
      4BDDF922B45DF8266FBEAC3C3923A000EC042E80CBBDA1064A78098428FE15E4
      C660390A40FFF23B51FC2BDFED9E9FC776E3970230821680DFD1187EA0049680
      5CF39F0EFF79351F96A700E4B4DF81C28FABAF29800D8216803CF22B69B0BCBB
      4F5F4678C57D961E54250DCA86CAF213403A8DB9E6DFACAFE52C8002883F7001
      E8EBBD9207CBA66702A5FDF2DFFF9CDEAEF21380DCED77A0E0D7ECEFB9390A20
      EEC00520C579E057B14A208AE2F77FFD3F913E0A7446004397E185BEEE771AC3
      13010AC0085E00BA40AFF429FFF5E763914024C52FFF6D999D18E1313B23005D
      64E8425F939D3F8B65E2170560C40501E468AB8FA6500B241055F1CB64A1A88F
      D71901483F1DDE892F78930F8FC472AC1480116704902DED89C0A7901B83C5CC
      F02BAAF84F2BB94C29670178977AF0055FC88E179537364201D8884B02885402
      0E17BF7302907E6FA8C4F7B7A02F05BD0B2DB11D270560C43501382381188BDF
      4501E4B8D09A9B8907EBF37DBF54DEE59E588F910230E2A200E01288B9F89D15
      80303FAF2F092EE6D667E426E3D82055A3FCABFDF1ADF6A400D68FAB028049C0
      42F13B2D8032870230E2B20004AB12B054FC02054001AC170AC0C08A042C16BF
      400160A0008C24410042AC12B05CFC02058081023092140108B1480050FC0205
      8081023092240108914AA0FA944214BF400160A0008C244D00B91D7BA312C0BB
      7B8B5F4A1C311400060AC048A2041065F1BFF6ECB20402EC2710211400060AC0
      4862041047F1DF3F13B02F010A0003056024110288B3F84112A000305000469C
      17808DE207488002C0400118715A00368BDFB20428000A60BD5000A8E2B72801
      670570634A79AD75F99774C89B986C70F6DDDCEBD96CBC03920230E2A40090C5
      6F4902CE094056E2D557E636E388AEEF03B2EB3F73F33C28008B714E002E14BF
      0509B82600BFE218AEF04D1ACF5200B6E29400A22A7ED90BB0B3219AFF564C12
      704A00B21108BAE80DBCA12B14808D3823007935781483E75CC1F4DEA8361AFD
      E0908A7ACAB04B02F0DFFE5F78C1AFE2BDFD14808D382180FE8BD10C9A3516F6
      C8FBFC2291406B5D790A606A1C5FEC6BB1E3A711BF0A9E0258332E08C0DFFF6A
      2CC51FA904649FFA727C31C8A0C32F069127121440BC810BE0DA60E983E55C11
      ABFAA2B81CE88EEEB85D11801FC1ABD962134084C2A500D6095A005254250D94
      00EBF94B3E1368AA2A3B01C826A02EBD1AFC3EB24370D4C74A01AC0E5A0025DD
      812EE697DFA4843301AFFEA3F2138088B1F204BEE04D52E728001B810B60E45A
      ECBFFCAB067C6753380194E3DB8105793F20F27D0026077FA54FFFE729001B81
      0B40DE0EBCF717F1FFF29B043D13909B80114E55754A00D9E57B016FBDE246F1
      4F4DC4769C148011BC00347D5D567EF9570DFA0067025EEA7CA4C7EC9A007268
      C1F9F2A28E3D3FB75FF8F224484EFB63FAE5A700D6891302108A79375DCD0791
      15FF7D0974346CFE6AF28A63913F937652009F92C19CF226C7EC10C3DD7E0AA0
      C8382380ECF21381B566A5C925424F676C8322F75AAA43AFAFFED5D7BF8472A9
      50F66F07DE42500046B2FD638105305311E36220599526D7A317DBF36F89BD76
      D5CA3BE3728C5E57DEC7ADB92713DEB0FE5C6F0BAD06DC22F4D5F406EEF7CC58
      DA6649DA15C0C2C86C60018C7D08DC15B84CA000305CACEC0EDCEFFEB46FB324
      ED0A6031BDA0168FD5175DFC4B9A9E531440A9500018BA4E7506EEF7C5CCA2CD
      92B42B803B8B7754DF9BE78B16C0C4815A953AD004FF22930E058021F57663E0
      7EFFE4E61D9B2569570092BA5DE7D5E481BA4D8B7F419F29D46FAF56B5DBCFA9
      4C06F3428D728102B04F26E3AB1A3D7E83F479FDEE1ADBE5685F00ED475BF4C1
      56ABE17D35EADE3AC53F7DA84E17FFFF77CCE8E571F8179A642800FB8CF48F05
      EEF38E63ADB6CBD1BE00FACEF6DC3FE0A61DD5EACA9E9ADCA9FEA466685FAD6A
      DBB5DA9ADD55DDF02F34C95000F6097303B0BFAAD77639DA17C078F768E08E91
      53A3CC7CF41B366C152800BBC8E97FDDEEF381FB7CBC77CC7639DA17803C0908
      DA31B901D9C10119160AC02E036DC1FB5BB8397FD37639DA1780A4694F7DE0CE
      69DC5B9F332BFACB4D2214803DE48675C39EBAC0FDDDBCAF01518A18015C6DB8
      1CCA90FDF597E05F7012A100ECD157DB1F6A6C0F345D4594224600D9193F5427
      C9639589A149F8979C3428003B4C5C9BCA3DB60E33B6B3B3594429620420693B
      9C0AD5518DFAF26176C6DE8AAE728002889FD9E94C6E6C8619D36D475A506588
      13C0D4A5C9509D25B41C6E56E9342707150B05102F321653879A438FE7A9CB93
      A832C40960696929D454C91552079BD4CC8D34FCCB4F0214407CC82FBFFC2085
      1EC7BA0696EE2DA1CA102700C944DF78E88ECB5D0EECAD5713C3D1EFE75E6E50
      00F120F7A3C29EF6AF3079690259825801C859804C7F2CA503E5C6607F5D3FD7
      0B6C0005102D32D6E46E7FD0B9FE261DC7DB7235808C08E02EB201B2FEB9E6F5
      D23A327736A04D3CD03EC819836B40014483CC4391493E0D25FEEAE77EB8F498
      97A761E0DC150178E8560C360F94DCA12BC814CCEECA6E357A698C138796A100
      4A2B7A59D82373FBC34CEF5D8FA1D400BAEC24191180FD09C846E42648E789B6
      C83AF7BE65F5299ADC64918D19440AB247DB56A4FD64F0BE95BF41B71B436F6E
      ACC89869D663A7D4D3FCB5E83AD90EBDF157901111403FBA1592DBD95BAAF1AD
      E0532809491232C66F2FDC4697DB4A7A450029742B5622B3A1EADFA8817F4984
      C481AC6A75E0BABF30CD2280C3E8561446B645AEDD116E3A2521AE2263DAF68E
      BF45E48008E005742BCC4847892DD15F1A215120DBE0CD8DD8DDEFBFC83C2B02
      F826BA156B451E0FF29E00493A32861D3BED2FCC5322802FA35BB15EE46649E7
      8976F897484818E46EBF4337FCD6CA9744008F68EC6E461E20F2B844E6094431
      5988101BC85895E7FC8E3CEA5B2F52F38F6E93E87F388B6ECD6691D328993A89
      FE7209D908D9F5DABB019F5B574C2AB6AD44FF8F9FA05B534C64DEF464FF844A
      ED0FBF8A909038900967E8853D01F3A342017C15DD9A2091532BD94FA0ED48B8
      4D4508890AD9CC43D6F3A317F584C89385027850393025384CB2335935D07045
      35EF6D800F06B235900D3C071AAFC0B6F18A2052EB0F6D2B8CFE172FA35B556A
      6ECE2FAAF19E31D557D5A3DA8FB5722E01291919433296E4A51DB26F3F62EBEE
      18F2D23633FA5F3E8E6E551C9117928A18645E417A2C9D9B6948E6D4CCD0B41A
      BB389243FE19DD1E67D06344C68A14BA8C9D32CD1757096059025DE896310C13
      6B3AD62CFE65017C07DD3A866162CDB73612C0C39A61700319868927D7350FAF
      2B8065097C1FDD4A866162C93F6F58FCCB02784C338E6E29C330916644AD4CFD
      2D4202DF40B796619848F3D745157F8104AAD12D6618269254062AFE6501FCBE
      C6E9B58C0CC36C1A99CCF0078105B02C81442C12621866DD3C1DAAF89705206B
      043E421F01C330A17246F36068012C4BE0738A4F0518266991053F9F2DA9F80B
      24F035C5FB010C9394DCD2FC5924C55F2081BF54E0F708320CB369EEA9A08FFC
      0248E0BBE8A3631866C3FC2096E22F90C0BFA18F90619835F3E3588BBF4002DF
      53F9530D8661F0914BF3EF5A29FE0209C83D815BE0036798AD1EB939FF75ABC5
      5F2001793AC047840C83893CEA8BF66E7F0809FCB6E643704730CC564B95E6F3
      D0E25F89CACF189469C365BB891AC3381239E57F5AF300BAEE574537EA773515
      D8FE6198B2CD39CD17D075BE6974239F52097DCF00C33818D9CC239EC93D7145
      E55F3AFAF79A2BD8BE6398C4E69AE6879AC7D0F51C3A2ABFD1E8B7359DD0AE64
      98E4A443F32DCD6FA1EB37D2E803FA23CD739A2164EF328C83914BE657355F42
      D769EC51F9A7067FA2F2773365BF814560C7330C220B2A7FC3FC479AAFA852D7
      ED27392A7FBFE00995BF792867088734294DAFCAEF659E867C450C133E326665
      ECCA186ED61CD43CABF2635CC6FA23E8BA93FC1FD99BBC367D8CC16B00000000
      49454E44AE426082}
    OnDblClick = ttiProgramaBandejaDblClick
    Left = 688
    Top = 456
  end
  object ApplicationEvents1: TApplicationEvents
    OnMinimize = ApplicationEvents1Minimize
    Left = 568
    Top = 464
  end
end
