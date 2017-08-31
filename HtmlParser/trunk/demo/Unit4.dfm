object Form4: TForm4
  Left = 240
  Top = 248
  Caption = 'Form4'
  ClientHeight = 506
  ClientWidth = 807
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 361
    Top = 26
    Width = 89
    Height = 97
    Caption = 'Parser'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo2: TMemo
    Left = 0
    Top = 309
    Width = 807
    Height = 197
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    ScrollBars = ssBoth
    TabOrder = 1
    ExplicitWidth = 795
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 345
    Height = 309
    Align = alLeft
    Caption = 'Panel1'
    TabOrder = 2
    object Memo1: TMemo
      Left = 2
      Top = 64
      Width = 337
      Height = 222
      Lines.Strings = (
        
          '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "' +
          'http://www.w3.org/TR/html4/loose.dtd">'
        '<html xmlns="http://www.w3.org/1999/xhtml">'
        '<head>'
        '<!--  -->'
        
          '    <meta http-equiv="Content-Type" content="text/html; charset=' +
          'utf-8" />'
        '    <meta http-equiv="X-UA-Compatible" content="IE=7" />'
        '    <title>Embarcadero Blogs</title>'
        #9#9#9#9'<!--'
        
          #9'<link href="/styles/pe_menu.css" type="text/css" rel="styleshee' +
          't" />'
        
          #9'<link href="/styles/pe_events.css" rel="stylesheet" type="text/' +
          'css" />'
        
          #9'<link href="/styles/main.css" rel="stylesheet" type="text/css" ' +
          '/>'
        
          #9'<link href="/styles/jquery-ui.css" type="text/css" rel="stylesh' +
          'eet" />'
        
          #9'<link href="/styles/tags.css" rel="stylesheet" type="text/css" ' +
          '/>'
        
          #9'<link href="/styles/products.css" rel="stylesheet" type="text/c' +
          'ss" />'
        
          #9'<link href="/styles/article.css" rel="stylesheet" type="text/cs' +
          's" />'
        
          #9'<link href="/styles/yapp.css" rel="stylesheet" type="text/css" ' +
          '/>'
        
          #9'<link href="/styles/pe_dlstyles.css" rel="stylesheet" type="tex' +
          't/css" />'
        
          #9'<link href="/styles/pe_forms.css" rel="stylesheet" type="text/c' +
          'ss" />'
        
          #9'<link href="/styles/buttons.css" rel="stylesheet" type="text/cs' +
          's" />'
        
          #9'<link href="/styles/codecentral.css" rel="stylesheet" type="tex' +
          't/css" />'
        #9'-->'
        
          #9'<link href="http://static.embarcadero.com/styles/jquery-ui.css"' +
          ' rel="stylesheet" type="text/css" />  <link href="http://static.' +
          'embarcadero.com/styles/edn_nojqui.css" rel="stylesheet" type="te' +
          'xt/css" />'
        #9
        
          '  <link media="print" href="http://static.embarcadero.com/styles' +
          '/print.css" rel="stylesheet" />'
        #9'<script language="JavaScript" type="text/javascript">'
        '    var ednSSL = false;'
        '  </script>'
        #9'  '
        '  <!--'
        
          #9'<script src="/javascript/jquery.js" type="text/javascript"></sc' +
          'ript>'
        
          #9'<script src="/javascript/jquery-ui.js" type="text/javascript"><' +
          '/script>'
        
          '  <script language="JavaScript" src="/javascript/planetembt_nav_' +
          'jq.js" type="text/javascript"></script>'
        
          '  <script language="JavaScript" src="/javascript/library.js" typ' +
          'e="text/javascript"></script>'
        
          '  <script language="JavaScript" src="/javascript/hide_show.js" t' +
          'ype="text/javascript"></script>'
        
          '  <script language="JavaScript" src="/javascript/chatroominfo.js' +
          '" type="text/javascript"></script>'
        
          '  <script language="JavaScript" src="/javascript/services.js" ty' +
          'pe="text/javascript"></script>'
        
          '  <script language="JavaScript" src="/javascript/searchhint.js" ' +
          'type="text/javascript"></script>'
        
          '  <script language="JavaScript" src="http://ajax.googleapis.com/' +
          'ajax/libs/jquery/1.7.1/jquery.js" type="text/javascript"></scrip' +
          't>'
        
          '  <script language="JavaScript" src="http://ajax.googleapis.com/' +
          'ajax/libs/jqueryui/1.8.20/jquery-ui.js" type="text/javascript"><' +
          '/script>'
        '  -->'
        '      '
        
          '  <script language="JavaScript" src="http://static.embarcadero.c' +
          'om/javascript/jq.js" type="text/javascript"></script>  '
        
          '  <script language="JavaScript" src="http://static.embarcadero.c' +
          'om/javascript/edn_nojq.js" type="text/javascript"></script>'
        
          '  <script language="JavaScript" src="http://static.embarcadero.c' +
          'om/javascript/embtnewtrackc.js" type="text/javascript"></script>'
        '    '
        '  <script language="javascript" type="text/javascript">'
        'function onload_function(){'
        #9'initNav();'
        '}'
        'jQuery(window).load(onload_function);'
        ''
        'function onresize_function(){'
        #9'reposNav();'
        '}'
        'window.onresize = onresize_function;   '
        '    </script>'
        #9'<script type="text/javascript">'
        
          'searchServiceURL = "http://edn.embarcadero.com/SearchHintsJS.asp' +
          'x";'
        'approxHitsText = "Approx hits";'#9'</script>'
        
          #9'<link rel="shortcut icon" href="http://static.embarcadero.com/e' +
          'dnfavicon.ico" type="image/x-icon" />'
        
          #9'<link title="Embarcadero Search" rel="search" type="application' +
          '/opensearchdescription+xml" href="http://static.embarcadero.com/' +
          'javascript/search.xml" />'
        #9#9#9#9#9
        
          '    <link title="Default" href="/styles/blogs.css" type="text/cs' +
          's" rel="stylesheet" />'
        
          '    <meta name="generator" content="WordPress 2.6.2" /> <!-- lea' +
          've this for stats -->'
        
          '    <link media="screen" href="http://blogs.embarcadero.com/wp-c' +
          'ontent/themes/default/style.css" rel="stylesheet" />'
        
          '    <link rel="alternate" type="application/rss+xml" title="RSS ' +
          '2.0" href="http://blogs.embarcadero.com/feed/" />'
        
          '    <link rel="alternate" type="text/xml" title="RSS .92" href="' +
          'http://blogs.embarcadero.com/feed/rss/" />'
        
          '    <link rel="alternate" type="application/atom+xml" title="Ato' +
          'm 0.3" href="http://blogs.embarcadero.com/feed/atom/" />'
        
          '    <link rel="pingback" href="http://blogs.embarcadero.com/xmlr' +
          'pc.php" />'
        
          '    '#9'<link rel='#39'archives'#39' title='#39'September 2007'#39' href='#39'http://bl' +
          'ogs.embarcadero.com/post/date/2007/09/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'August 2007'#39' href='#39'http://blogs.emb' +
          'arcadero.com/post/date/2007/08/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'July 2007'#39' href='#39'http://blogs.embar' +
          'cadero.com/post/date/2007/07/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'June 2007'#39' href='#39'http://blogs.embar' +
          'cadero.com/post/date/2007/06/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'May 2007'#39' href='#39'http://blogs.embarc' +
          'adero.com/post/date/2007/05/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'April 2007'#39' href='#39'http://blogs.emba' +
          'rcadero.com/post/date/2007/04/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'March 2007'#39' href='#39'http://blogs.emba' +
          'rcadero.com/post/date/2007/03/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'February 2007'#39' href='#39'http://blogs.e' +
          'mbarcadero.com/post/date/2007/02/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'January 2007'#39' href='#39'http://blogs.em' +
          'barcadero.com/post/date/2007/01/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'December 2006'#39' href='#39'http://blogs.e' +
          'mbarcadero.com/post/date/2006/12/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'November 2006'#39' href='#39'http://blogs.e' +
          'mbarcadero.com/post/date/2006/11/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'October 2006'#39' href='#39'http://blogs.em' +
          'barcadero.com/post/date/2006/10/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'September 2006'#39' href='#39'http://blogs.' +
          'embarcadero.com/post/date/2006/09/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'August 2006'#39' href='#39'http://blogs.emb' +
          'arcadero.com/post/date/2006/08/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'July 2006'#39' href='#39'http://blogs.embar' +
          'cadero.com/post/date/2006/07/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'June 2006'#39' href='#39'http://blogs.embar' +
          'cadero.com/post/date/2006/06/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'May 2006'#39' href='#39'http://blogs.embarc' +
          'adero.com/post/date/2006/05/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'April 2006'#39' href='#39'http://blogs.emba' +
          'rcadero.com/post/date/2006/04/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'March 2006'#39' href='#39'http://blogs.emba' +
          'rcadero.com/post/date/2006/03/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'February 2006'#39' href='#39'http://blogs.e' +
          'mbarcadero.com/post/date/2006/02/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'January 2006'#39' href='#39'http://blogs.em' +
          'barcadero.com/post/date/2006/01/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'December 2005'#39' href='#39'http://blogs.e' +
          'mbarcadero.com/post/date/2005/12/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'November 2005'#39' href='#39'http://blogs.e' +
          'mbarcadero.com/post/date/2005/11/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'October 2005'#39' href='#39'http://blogs.em' +
          'barcadero.com/post/date/2005/10/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'September 2005'#39' href='#39'http://blogs.' +
          'embarcadero.com/post/date/2005/09/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'August 2005'#39' href='#39'http://blogs.emb' +
          'arcadero.com/post/date/2005/08/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'July 2005'#39' href='#39'http://blogs.embar' +
          'cadero.com/post/date/2005/07/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'June 2005'#39' href='#39'http://blogs.embar' +
          'cadero.com/post/date/2005/06/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'May 2005'#39' href='#39'http://blogs.embarc' +
          'adero.com/post/date/2005/05/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'April 2005'#39' href='#39'http://blogs.emba' +
          'rcadero.com/post/date/2005/04/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'March 2005'#39' href='#39'http://blogs.emba' +
          'rcadero.com/post/date/2005/03/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'February 2005'#39' href='#39'http://blogs.e' +
          'mbarcadero.com/post/date/2005/02/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'January 2005'#39' href='#39'http://blogs.em' +
          'barcadero.com/post/date/2005/01/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'December 2004'#39' href='#39'http://blogs.e' +
          'mbarcadero.com/post/date/2004/12/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'November 2004'#39' href='#39'http://blogs.e' +
          'mbarcadero.com/post/date/2004/11/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'October 2004'#39' href='#39'http://blogs.em' +
          'barcadero.com/post/date/2004/10/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'September 2004'#39' href='#39'http://blogs.' +
          'embarcadero.com/post/date/2004/09/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'August 2004'#39' href='#39'http://blogs.emb' +
          'arcadero.com/post/date/2004/08/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'July 2004'#39' href='#39'http://blogs.embar' +
          'cadero.com/post/date/2004/07/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'June 2004'#39' href='#39'http://blogs.embar' +
          'cadero.com/post/date/2004/06/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'May 2004'#39' href='#39'http://blogs.embarc' +
          'adero.com/post/date/2004/05/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'April 2004'#39' href='#39'http://blogs.emba' +
          'rcadero.com/post/date/2004/04/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'March 2004'#39' href='#39'http://blogs.emba' +
          'rcadero.com/post/date/2004/03/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'February 2004'#39' href='#39'http://blogs.e' +
          'mbarcadero.com/post/date/2004/02/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'January 2004'#39' href='#39'http://blogs.em' +
          'barcadero.com/post/date/2004/01/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'December 2003'#39' href='#39'http://blogs.e' +
          'mbarcadero.com/post/date/2003/12/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'November 2003'#39' href='#39'http://blogs.e' +
          'mbarcadero.com/post/date/2003/11/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'October 2003'#39' href='#39'http://blogs.em' +
          'barcadero.com/post/date/2003/10/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'September 2003'#39' href='#39'http://blogs.' +
          'embarcadero.com/post/date/2003/09/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'August 2003'#39' href='#39'http://blogs.emb' +
          'arcadero.com/post/date/2003/08/'#39' />'
        
          #9'<link rel='#39'archives'#39' title='#39'July 2003'#39' href='#39'http://blogs.embar' +
          'cadero.com/post/date/2003/07/'#39' />'
        '    <meta name='#39'robots'#39' content='#39'noindex,nofollow'#39' />'
        
          '<link rel="EditURI" type="application/rsd+xml" title="RSD" href=' +
          '"http://blogs.embarcadero.com/xmlrpc.php?rsd" />'
        
          '<link rel="wlwmanifest" type="application/wlwmanifest+xml" href=' +
          '"http://blogs.embarcadero.com/wp-includes/wlwmanifest.xml" /> '
        
          '<script type='#39'text/javascript'#39' src='#39'http://static.embarcadero.co' +
          'm/javascript/embtnewtrack-safe.js?ver=2.6.2'#39'></script>'
        
          '<script type='#39'text/javascript'#39' src='#39'http://blogs.embarcadero.com' +
          '/wp-includes/js/prototype.js?ver=1.6'#39'></script>'
        '<meta name="generator" content="WordPress 2.6.2" />'
        ''
        ''
        '<!-- Bad Behavior 2.0.24 run time: 5.682 ms -->'
        '<script type="text/javascript">'
        '<!--'
        'function bb2_addLoadEvent(func) {'
        #9'var oldonload = window.onload;'
        #9'if (typeof window.onload != '#39'function'#39') {'
        #9#9'window.onload = func;'
        #9'} else {'
        #9#9'window.onload = function() {'
        #9#9#9'oldonload();'
        #9#9#9'func();'
        #9#9'}'
        #9'}'
        '}'
        ''
        'bb2_addLoadEvent(function() {'
        #9'for ( i=0; i < document.forms.length; i++ ) {'
        #9#9'if (document.forms[i].method == '#39'post'#39') {'
        #9#9#9'var myElement = document.createElement('#39'input'#39');'
        #9#9#9'myElement.setAttribute('#39'type'#39', '#39'hidden'#39');'
        #9#9#9'myElement.name = '#39'bb2_screener_'#39';'
        #9#9#9'myElement.value = '#39'1376366102 10.50.102.8 114.80.133.7'#39';'
        #9#9#9'document.forms[i].appendChild(myElement);'
        #9#9'}'
        #9'}'
        '});'
        '// --></script>'
        #9#9
        
          '    <script type="text/javascript" src="http://blogs.embarcadero' +
          '.com/wp-content/plugins/share-this/share-this.php?akst_action=js' +
          '"></script>'
        
          '    <link rel="stylesheet" type="text/css" href="http://blogs.em' +
          'barcadero.com/wp-content/plugins/share-this/share-this.php?akst_' +
          'action=css" />'
        '    </head>'
        ''
        '<body id="body">'
        
          '<table border="0" cellpadding="0" cellspacing="0" width="100%"><' +
          'tr><td>'
        '<div class="main_wrapper">'
        '  <div class="main_wrapper_inner_left">'
        '    <div class="main_wrapper2">'
        '      <div class="main_wrapper2_inner_right">'
        #9'    <div class="shadow_bg_wrapper">'
        #9#9
        
          '        <div class="header_wrapper"  id="header_wrapper">       ' +
          ' '#9
        #9#9#9'<div id="mininav_bar" class="mininav_wrapper">'
        #9#9#9'<div style="float: right; height: 18px; line-height: 18px;">'
        
          '                <form class="search" name="search" method="get" ' +
          'action="http://edn.embarcadero.com/search">'
        
          '                    <input id="searchbox-q" type="text" name="q"' +
          ' class="s" size="18" maxlength="255" value="" autocomplete="off"' +
          ' />'
        #9#9#9#9#9'<script language="JavaScript" type="text/javascript">'
        #9#9#9#9#9'    registerSearchBox("searchbox-q");'
        #9#9#9#9#9'</script>'
        
          '                    <input name="" type="image" src="http://stat' +
          'ic.embarcadero.com/images/edn/search_btn.gif" align="absmiddle" ' +
          '/>'
        
          '                    <input type="hidden" name="allsites" value="' +
          'y" />'
        #9#9'            <input type="hidden" name="allwords" value="y" />'
        '                </form>                '
        '            </div>'
        
          '            '#9#9'    <div style="float: right; height: 18px; line-h' +
          'eight: 18px;">'
        
          #9#9'        '#9#9'        <span class="welcome">Welcome, wang rui</spa' +
          'n>&nbsp;|&nbsp;'
        
          #9#9'        <a class="myaccount" href="https://members.embarcadero' +
          '.com">My Account</a> &nbsp;|&nbsp; '#9#9'        '
        
          #9#9'        <a class="login" href="https://members.embarcadero.com' +
          '/viewcookies.aspx?clear=t&returnurl=http://blogs.embarcadero.com' +
          '/index.php">'
        #9#9#9'        Log Off'#9#9#9'    </a>'#9#9'        '
        '            </div>'
        '                        '
        '                        '
        '            '#9#9'    '
        
          #9#9'    <div style="float: left; height: 18px; line-height: 18px;"' +
          '>'
        
          #9#9'        <a href="http://www.embarcadero.com" class="site-home"' +
          '>Embarcadero Home</a>'
        #9#9'    </div>'
        #9#9'    &nbsp;'
        #9#9'  </div>'
        
          '        <div id="social" style="position:relative; clear:right; ' +
          'float:right; top:10px; width:180px;">'
        
          '        <div id="sociallinks" style="position:absolute; float:ri' +
          'ght; top:0px; right:15px; z-index:100;">'
        
          '        <a href="http://www.youtube.com/user/EmbarcaderoTechNet"' +
          ' title="Embarcadero on YouTube">'
        
          '          <img src="http://static.embarcadero.com/images/w3/Yout' +
          'ube_32x32.png" alt="YouTube" width="32" height="32" border="0" /' +
          '>'
        '        </a>'
        
          '        <a href="http://twitter.com/EmbarcaderoTech" title="Emba' +
          'rcadero on Twitter'
        '">'
        
          '          <img src="http://static.embarcadero.com/images/w3/Twit' +
          'ter_32x32.png" alt="Twitter" width="32" height="32" border="0" /' +
          '>'
        '        </a>'
        
          '        <a href="http://www.facebook.com/#/pages/Embarcadero-Tec' +
          'hnologies-Database-Application-Software-Tools/34960937498" title' +
          '="Embarcadero on Facebook">'
        
          '          <img src="http://static.embarcadero.com/images/w3/Face' +
          'Book_32x32.png" alt="Facebook" width="32" height="32" border="0"' +
          ' />'
        '        </a>'
        
          '        <a href="http://www.linkedin.com/e/vgh/2551723/" title="' +
          'Embarcadero on Linked In">'
        
          '          <img src="http://static.embarcadero.com/images/w3/Link' +
          'ed-In-icon-32.png" alt="Linked In" width="32" height="32" border' +
          '="0" />'
        '        </a>'
        '        </div>'
        
          '        <div id="socialtext" style="color:white; position:absolu' +
          'te; float:right; top:30px; z-index:100; right:15px; text-align:r' +
          'ight;">Watch, Follow, &amp; <br />Connect with Us'
        '</div>'
        ''
        
          '        <div id="addthis" class="addthis_toolbox addthis_default' +
          '_style" style="position:absolute; float:right; top:60px; right:1' +
          '6px;  text-align:right;">'
        
          '        <a href="http://www.addthis.com/bookmark.php?v=250&amp;p' +
          'ub=embarcadero" class="addthis_button_compact" style="color:Whit' +
          'e;" title="Share this Embarcadero web page'
        '">Share This</a>'
        '        </div>'
        
          '        <script type="text/javascript" src="http://s7.addthis.co' +
          'm/js/250/addthis_widget.js#pub=embarcadero"></script>'
        ''
        '<!--'
        
          '        <div id="sharethis" style="position:absolute; color:whit' +
          'e; float:right; top:60px; right:16px; z-index:100; text-align:ri' +
          'ght;">'
        
          '        <script type="text/javascript" src="http://w.sharethis.c' +
          'om/button/sharethis.js#publisher=8cc86461-c593-40bd-a158-87c043f' +
          'f9862&amp;type=website&amp;buttonText=Share This&amp;embeds=true' +
          '&amp;post_services=email%2Cfacebook%2Ctwitter%2Clinkedin%2Cdigg%' +
          '2Ctechnorati%2Cdelicious%2Cwindows_live%2Cstumbleupon%2Cyahoo_bm' +
          'arks%2Cblogger%2Csms%2Cmyspace%2Creddit%2Cgoogle_bmarks%2Cbebo%2' +
          'Cybuzz%2Cmixx%2Cfriendfeed%2Cpropeller%2Cwordpress%2Cnewsvine%2C' +
          'xanga&amp;headerTitle=Share this Embarcadero web page'
        '"></script>'
        '        </div>'
        '-->'
        '        </div>'
        
          #9#9'    <div id="system-name"><a href="http://blogs.embarcadero.co' +
          'm">Blogs</a></div>'#9#9'    <a href="http://dn.embarcadero.com" clas' +
          's="ednlogo"><img src="http://static.embarcadero.com/images/edn/e' +
          'dn.jpg" alt="Embarcadero Developer Network" /></a>'
        
          '        '#9'<a href="http://dn.embarcadero.com" class="mainlogo"><i' +
          'mg src="http://static.embarcadero.com/images/edn/header_logo.gif' +
          '" alt="Embarcadero Developer Network" /></a>'
        '        </div>'
        '        '#9
        ' '
        #9#9'<div class="main_nav_wrapper" id="main_nav">'
        #9#9#9'<a href="#" id="Communities">Communities</a>'
        #9#9#9'<a href="#" id="Articles">Articles</a>'
        
          '            <a href="http://blogs.embarcadero.com" id="Blogs">Bl' +
          'ogs</a>'
        '            <a href="#" id="Resources">Resources</a>'
        '            <a href="#" id="Downloads">Downloads</a>'
        
          '            <a href="http://dn.embarcadero.com/help" id="Help">H' +
          'elp</a>'
        #9#9'</div>'
        ''
        #9#9'<div class="content_wrapper_inside">'
        #9#9'  '
        #9#9'            '#9'<div class="top">    '
        '        '#9'                    '
        '                                <div class="breadcrumb">'
        
          '                    <a href="http://blogs.embarcadero.com/">Emba' +
          'rcadero Blogs</a>                </div>'
        '                            </div>'
        '                        '
        '                    '
        
          #9#9#9'<h1 class="rule" style="margin-bottom:20px;">Embarcadero Blog' +
          's<div class="subhdr"></div></h1>'#9#9#9
        '        '#9'<div class="content_wrapper_top">'
        
          '        '#9'    <table border="0" cellpadding="0" cellspacing="0" w' +
          'idth="100%">'
        '        '#9'        <tr>'
        
          #9#9#9'    '#9#9#9'            <td class="colleft-cell" valign="top" widt' +
          'h="150">'
        '                <div class="colleft">'
        '                '#9'<div class="lhn_nav_wrapper">'
        '                '#9'    <div class="module-container">'
        '<div class="module">'
        '  <h2>Feed (All Blogs)</h2>'
        '  <div class="secondary-nav">'
        '    <ul>'
        
          '      <li><a id="RssLink" href="/feeds/wpmu-feed/">RSS (list of ' +
          'recent posts)</a></li>'
        '    </ul>'
        '  </div>'
        '</div>'
        '</div>'
        '<br style="clear: both;" />'
        '<div class="module-container">'
        '<div class="module">'
        '  <h2>Blog Stats</h2>'
        '  <div id="blog-stats-content" class="secondary-nav">'
        '    <ul>'
        '<li>Blogs - 66</li>'
        '<li>Posts - 3497</li>'
        '<li>Pages - 44</li>'
        '<li>Comments - 10929</li>'
        '</ul>'
        '  </div>'
        '</div>'
        '</div>'
        '<br style="clear: both;" />'
        '<div class="module-container">'
        '<div class="module">'
        '  <h2>Bloggers</h2>'
        '  <div id="bloggerList" class="secondary-nav">'
        '    <table><tr>'
        
          '<td valign="top"><a id="Bloggers__ct164_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Adrian Chaves" href="http://blogs.' +
          'embarcadero.com/achaves/">achaves</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct164_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Adrian Chaves RSS Feed" href="http://' +
          'blogs.embarcadero.com/achaves/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct164_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Adrian Chaves Atom Feed" href="htt' +
          'p://blogs.embarcadero.com/achaves/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct136_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Al Mannarino" href="http://blogs.e' +
          'mbarcadero.com/amannarino/">Al Mannarino</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct136_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Al Mannarino RSS Feed" href="http://b' +
          'logs.embarcadero.com/amannarino/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct136_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Al Mannarino Atom Feed" href="http' +
          '://blogs.embarcadero.com/amannarino/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct183_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Styles for VCL and FireMonkey" hre' +
          'f="http://blogs.embarcadero.com/sharagin/">Alexey Sharagin</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct183_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Styles for VCL and FireMonkey RSS Fee' +
          'd" href="http://blogs.embarcadero.com/sharagin/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct183_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Styles for VCL and FireMonkey Atom' +
          ' Feed" href="http://blogs.embarcadero.com/sharagin/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct11_Hyperlink1" class="blogna' +
          'me" name="Hyperlink1" title="The Oracle at Delphi" href="http://' +
          'blogs.embarcadero.com/abauer/">Allen Bauer</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct11_AuthorRSS" class="rssfeed' +
          '" name="AuthorRSS" title="The Oracle at Delphi RSS Feed" href="h' +
          'ttp://blogs.embarcadero.com/abauer/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct11_AuthorAtom" class="atomfe' +
          'ed" name="AuthorAtom" title="The Oracle at Delphi Atom Feed" hre' +
          'f="http://blogs.embarcadero.com/abauer/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct8_Hyperlink1" class="blognam' +
          'e" name="Hyperlink1" title="The Hacker\'#39's Corner" href="http://b' +
          'logs.embarcadero.com/ao/">Anders Ohlsson</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct8_AuthorRSS" class="rssfeed"' +
          ' name="AuthorRSS" title="The Hacker\'#39's Corner RSS Feed" href="ht' +
          'tp://blogs.embarcadero.com/ao/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct8_AuthorAtom" class="atomfee' +
          'd" name="AuthorAtom" title="The Hacker\'#39's Corner Atom Feed" href' +
          '="http://blogs.embarcadero.com/ao/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct152_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="'#1052#1072#1075' '#1056#1080' '#1041#1044'" href="http://blogs.emba' +
          'rcadero.com/asovtsov/">Andrew Sovtsov</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct152_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="'#1052#1072#1075' '#1056#1080' '#1041#1044' RSS Feed" href="http://blog' +
          's.embarcadero.com/asovtsov/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct152_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="'#1052#1072#1075' '#1056#1080' '#1041#1044' Atom Feed" href="http://' +
          'blogs.embarcadero.com/asovtsov/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct165_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title=":: My AppWave Blog :: Delivering a' +
          ' True Mobile like eXperience" href="http://blogs.embarcadero.com' +
          '/anilm/">Anil Mahadev</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct165_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title=":: My AppWave Blog :: Delivering a Tr' +
          'ue Mobile like eXperience RSS Feed" href="http://blogs.embarcade' +
          'ro.com/anilm/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct165_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title=":: My AppWave Blog :: Delivering a' +
          ' True Mobile like eXperience Atom Feed" href="http://blogs.embar' +
          'cadero.com/anilm/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct182_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Alexey Starchikov" href="http://bl' +
          'ogs.embarcadero.com/astarchikov/">astarchikov</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct182_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Alexey Starchikov RSS Feed" href="htt' +
          'p://blogs.embarcadero.com/astarchikov/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct182_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Alexey Starchikov Atom Feed" href=' +
          '"http://blogs.embarcadero.com/astarchikov/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct172_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="I can\'#39't believe it\'#39's not Program' +
          'ming!" href="http://blogs.embarcadero.com/damo/">damienbootsma</' +
          'a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct172_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="I can\'#39't believe it\'#39's not Programmin' +
          'g! RSS Feed" href="http://blogs.embarcadero.com/damo/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct172_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="I can\'#39't believe it\'#39's not Program' +
          'ming! Atom Feed" href="http://blogs.embarcadero.com/damo/atom"><' +
          '/a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct52_Hyperlink1" class="blogna' +
          'me" name="Hyperlink1" title="Darren Kosinski" href="http://blogs' +
          '.embarcadero.com/darrenkosinski/">Darren Kosinski</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct52_AuthorRSS" class="rssfeed' +
          '" name="AuthorRSS" title="Darren Kosinski RSS Feed" href="http:/' +
          '/blogs.embarcadero.com/darrenkosinski/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct52_AuthorAtom" class="atomfe' +
          'ed" name="AuthorAtom" title="Darren Kosinski Atom Feed" href="ht' +
          'tp://blogs.embarcadero.com/darrenkosinski/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct57_Hyperlink1" class="blogna' +
          'me" name="Hyperlink1" title="Idle Musings of a Delphi Junkie" hr' +
          'ef="http://blogs.embarcadero.com/dclegg/">David Clegg</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct57_AuthorRSS" class="rssfeed' +
          '" name="AuthorRSS" title="Idle Musings of a Delphi Junkie RSS Fe' +
          'ed" href="http://blogs.embarcadero.com/dclegg/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct57_AuthorAtom" class="atomfe' +
          'ed" name="AuthorAtom" title="Idle Musings of a Delphi Junkie Ato' +
          'm Feed" href="http://blogs.embarcadero.com/dclegg/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct3_Hyperlink1" class="blognam' +
          'e" name="Hyperlink1" title="Sip from the Firehose" href="http://' +
          'blogs.embarcadero.com/davidi/">David Intersimone</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct3_AuthorRSS" class="rssfeed"' +
          ' name="AuthorRSS" title="Sip from the Firehose RSS Feed" href="h' +
          'ttp://blogs.embarcadero.com/davidi/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct3_AuthorAtom" class="atomfee' +
          'd" name="AuthorAtom" title="Sip from the Firehose Atom Feed" hre' +
          'f="http://blogs.embarcadero.com/davidi/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct175_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Delphi" href="http://blogs.embarca' +
          'dero.com/delphi/">delphi</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct175_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Delphi RSS Feed" href="http://blogs.e' +
          'mbarcadero.com/delphi/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct175_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Delphi Atom Feed" href="http://blo' +
          'gs.embarcadero.com/delphi/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct189_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="HTML5 Builder Development" href="h' +
          'ttp://blogs.embarcadero.com/diegoe/">diegoe</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct189_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="HTML5 Builder Development RSS Feed" h' +
          'ref="http://blogs.embarcadero.com/diegoe/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct189_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="HTML5 Builder Development Atom Fee' +
          'd" href="http://blogs.embarcadero.com/diegoe/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct192_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Powered by Delphi" href="http://bl' +
          'ogs.embarcadero.com/diegon/">diegon</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct192_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Powered by Delphi RSS Feed" href="htt' +
          'p://blogs.embarcadero.com/diegon/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct192_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Powered by Delphi Atom Feed" href=' +
          '"http://blogs.embarcadero.com/diegon/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct145_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Dawn Perchik" href="http://blogs.e' +
          'mbarcadero.com/dperchik/">dperchik</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct145_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Dawn Perchik RSS Feed" href="http://b' +
          'logs.embarcadero.com/dperchik/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct145_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Dawn Perchik Atom Feed" href="http' +
          '://blogs.embarcadero.com/dperchik/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct78_Hyperlink1" class="blogna' +
          'me" name="Hyperlink1" title="Eli Boling" href="http://blogs.emba' +
          'rcadero.com/eboling/">Eli Boling</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct78_AuthorRSS" class="rssfeed' +
          '" name="AuthorRSS" title="Eli Boling RSS Feed" href="http://blog' +
          's.embarcadero.com/eboling/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct78_AuthorAtom" class="atomfe' +
          'ed" name="AuthorAtom" title="Eli Boling Atom Feed" href="http://' +
          'blogs.embarcadero.com/eboling/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct176_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Embarcadero" href="http://blogs.em' +
          'barcadero.com/embarcadero/">embarcadero</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct176_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Embarcadero RSS Feed" href="http://bl' +
          'ogs.embarcadero.com/embarcadero/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct176_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Embarcadero Atom Feed" href="http:' +
          '//blogs.embarcadero.com/embarcadero/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__cte21_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="ER/Studio" href="http://erstudio.c' +
          'om/">ER/Studio</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__cte21_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="ER/Studio RSS Feed" href="http://erst' +
          'udio.com/feed/"></a>'
        '</td>'
        '<td valign="top"></td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct186_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Ernest\'#39's stuff'#8230'" href="http://blo' +
          'gs.embarcadero.com/ernestet/">ernestet</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct186_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Ernest\'#39's stuff'#8230' RSS Feed" href="http' +
          '://blogs.embarcadero.com/ernestet/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct186_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Ernest\'#39's stuff'#8230' Atom Feed" href="' +
          'http://blogs.embarcadero.com/ernestet/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct181_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="FireMonkey Blog by Eugene" href="h' +
          'ttp://blogs.embarcadero.com/ekryukov/">Eugene Kryukov</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct181_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="FireMonkey Blog by Eugene RSS Feed" h' +
          'ref="http://blogs.embarcadero.com/ekryukov/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct181_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="FireMonkey Blog by Eugene Atom Fee' +
          'd" href="http://blogs.embarcadero.com/ekryukov/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct173_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Fernando Rizzato" href="http://blo' +
          'gs.embarcadero.com/fernandorizzato/">Fernando Rizzato</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct173_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Fernando Rizzato RSS Feed" href="http' +
          '://blogs.embarcadero.com/fernandorizzato/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct173_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Fernando Rizzato Atom Feed" href="' +
          'http://blogs.embarcadero.com/fernandorizzato/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct168_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="FireMonkey" href="http://blogs.emb' +
          'arcadero.com/firemonkey/">firemonkey</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct168_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="FireMonkey RSS Feed" href="http://blo' +
          'gs.embarcadero.com/firemonkey/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct168_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="FireMonkey Atom Feed" href="http:/' +
          '/blogs.embarcadero.com/firemonkey/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct194_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Burning Candles: my first iPhone A' +
          'pp with RAD Studio XE4" href="http://blogs.embarcadero.com/frani' +
          '/">Fran Irles</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct194_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Burning Candles: my first iPhone App ' +
          'with RAD Studio XE4 RSS Feed" href="http://blogs.embarcadero.com' +
          '/frani/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct194_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Burning Candles: my first iPhone A' +
          'pp with RAD Studio XE4 Atom Feed" href="http://blogs.embarcadero' +
          '.com/frani/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct147_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Embarcadero Japan" href="http://bl' +
          'ogs.embarcadero.com/hitoshifujii/">hitoshifujii</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct147_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Embarcadero Japan RSS Feed" href="htt' +
          'p://blogs.embarcadero.com/hitoshifujii/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct147_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Embarcadero Japan Atom Feed" href=' +
          '"http://blogs.embarcadero.com/hitoshifujii/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct184_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Henry Liu" href="http://blogs.emba' +
          'rcadero.com/hliu/">hliu</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct184_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Henry Liu RSS Feed" href="http://blog' +
          's.embarcadero.com/hliu/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct184_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Henry Liu Atom Feed" href="http://' +
          'blogs.embarcadero.com/hliu/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct157_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="JT @ Embarcadero" href="http://blo' +
          'gs.embarcadero.com/jtembarcadero/">J T</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct157_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="JT @ Embarcadero RSS Feed" href="http' +
          '://blogs.embarcadero.com/jtembarcadero/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct157_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="JT @ Embarcadero Atom Feed" href="' +
          'http://blogs.embarcadero.com/jtembarcadero/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__cte7_Hyperlink1" class="blogna' +
          'me" name="Hyperlink1" title="James Pitts" href="http://james-pit' +
          'ts.blogspot.com/">James Pitts</a>'
        '</td>'
        '<td valign="top"></td>'
        
          '<td valign="top"><a id="Bloggers__cte7_AuthorAtom" class="atomfe' +
          'ed" name="AuthorAtom" title="James Pitts Atom Feed" href="http:/' +
          '/james-pitts.blogspot.com/feeds/posts/default"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct21_Hyperlink1" class="blogna' +
          'me" name="Hyperlink1" title="Jason Vokes" href="http://blogs.emb' +
          'arcadero.com/jasonvokes/">Jason Vokes</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct21_AuthorRSS" class="rssfeed' +
          '" name="AuthorRSS" title="Jason Vokes RSS Feed" href="http://blo' +
          'gs.embarcadero.com/jasonvokes/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct21_AuthorAtom" class="atomfe' +
          'ed" name="AuthorAtom" title="Jason Vokes Atom Feed" href="http:/' +
          '/blogs.embarcadero.com/jasonvokes/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__cte22_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Jim McKeeth" href="http://delphi.o' +
          'rg/">Jim McKeeth</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__cte22_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Jim McKeeth RSS Feed" href="http://fe' +
          'eds.feedburner.com/delphiDotOrg"></a>'
        '</td>'
        '<td valign="top"></td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct27_Hyperlink1" class="blogna' +
          'me" name="Hyperlink1" title="Jim Tierney" href="http://blogs.emb' +
          'arcadero.com/jimtierney/">Jim Tierney</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct27_AuthorRSS" class="rssfeed' +
          '" name="AuthorRSS" title="Jim Tierney RSS Feed" href="http://blo' +
          'gs.embarcadero.com/jimtierney/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct27_AuthorAtom" class="atomfe' +
          'ed" name="AuthorAtom" title="Jim Tierney Atom Feed" href="http:/' +
          '/blogs.embarcadero.com/jimtierney/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct196_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Joaquin\'#39's Blog" href="http://blog' +
          's.embarcadero.com/joaquinm/">joaquinm</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct196_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Joaquin\'#39's Blog RSS Feed" href="http:' +
          '//blogs.embarcadero.com/joaquinm/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct196_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Joaquin\'#39's Blog Atom Feed" href="h' +
          'ttp://blogs.embarcadero.com/joaquinm/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__cte18_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Jose Leon" href="http://www.josele' +
          'on.es/">Jose Leon</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__cte18_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Jose Leon RSS Feed" href="http://jose' +
          'leon.es/?feed=rss2"></a>'
        '</td>'
        '<td valign="top"></td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct188_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Jose Perez'#39's Blog" href="http://bl' +
          'ogs.embarcadero.com/joseperez/">Jos'#233' P'#233'rez</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct188_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Jose Perez'#39's Blog RSS Feed" href="htt' +
          'p://blogs.embarcadero.com/joseperez/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct188_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Jose Perez'#39's Blog Atom Feed" href=' +
          '"http://blogs.embarcadero.com/joseperez/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct185_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Juan Antonio Ruzafa" href="http://' +
          'blogs.embarcadero.com/jaruzafa/">Juan Antonio Ruzafa</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct185_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Juan Antonio Ruzafa RSS Feed" href="h' +
          'ttp://blogs.embarcadero.com/jaruzafa/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct185_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Juan Antonio Ruzafa Atom Feed" hre' +
          'f="http://blogs.embarcadero.com/jaruzafa/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__cte11_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Malcolm Groves" href="http://www.m' +
          'alcolmgroves.com/blog/">Malcolm Groves</a>'
        '</td>'
        '<td valign="top"></td>'
        
          '<td valign="top"><a id="Bloggers__cte11_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Malcolm Groves Atom Feed" href="ht' +
          'tp://www.malcolmgroves.com/blog/?feed=atom&tag=embarcadero"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct153_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Mario" href="http://blogs.embarcad' +
          'ero.com/marioblack/">marioblack</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct153_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Mario RSS Feed" href="http://blogs.em' +
          'barcadero.com/marioblack/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct153_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Mario Atom Feed" href="http://blog' +
          's.embarcadero.com/marioblack/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct22_Hyperlink1" class="blogna' +
          'me" name="Hyperlink1" title="Mark Edington\'#39's Delphi Blog" href=' +
          '"http://blogs.embarcadero.com/medington/">Mark Edington</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct22_AuthorRSS" class="rssfeed' +
          '" name="AuthorRSS" title="Mark Edington\'#39's Delphi Blog RSS Feed"' +
          ' href="http://blogs.embarcadero.com/medington/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct22_AuthorAtom" class="atomfe' +
          'ed" name="AuthorAtom" title="Mark Edington\'#39's Delphi Blog Atom F' +
          'eed" href="http://blogs.embarcadero.com/medington/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct191_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Mark Barringer" href="http://blogs' +
          '.embarcadero.com/markbarringer/">markbarringer</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct191_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Mark Barringer RSS Feed" href="http:/' +
          '/blogs.embarcadero.com/markbarringer/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct191_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Mark Barringer Atom Feed" href="ht' +
          'tp://blogs.embarcadero.com/markbarringer/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct133_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Masahiro Arai" href="http://blogs.' +
          'embarcadero.com/masahiroarai/">Masahiro Arai</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct133_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Masahiro Arai RSS Feed" href="http://' +
          'blogs.embarcadero.com/masahiroarai/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct133_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Masahiro Arai Atom Feed" href="htt' +
          'p://blogs.embarcadero.com/masahiroarai/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct149_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Mat DeLong" href="http://blogs.emb' +
          'arcadero.com/mathewd/">Mat DeLong</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct149_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Mat DeLong RSS Feed" href="http://blo' +
          'gs.embarcadero.com/mathewd/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct149_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Mat DeLong Atom Feed" href="http:/' +
          '/blogs.embarcadero.com/mathewd/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct35_Hyperlink1" class="blogna' +
          'me" name="Hyperlink1" title="Matthias Eissing" href="http://blog' +
          's.embarcadero.com/matthiaseissing/">Matthias Eissing</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct35_AuthorRSS" class="rssfeed' +
          '" name="AuthorRSS" title="Matthias Eissing RSS Feed" href="http:' +
          '//blogs.embarcadero.com/matthiaseissing/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct35_AuthorAtom" class="atomfe' +
          'ed" name="AuthorAtom" title="Matthias Eissing Atom Feed" href="h' +
          'ttp://blogs.embarcadero.com/matthiaseissing/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct143_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Mark Duncan" href="http://blogs.em' +
          'barcadero.com/mduncan/">mduncan</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct143_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Mark Duncan RSS Feed" href="http://bl' +
          'ogs.embarcadero.com/mduncan/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct143_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Mark Duncan Atom Feed" href="http:' +
          '//blogs.embarcadero.com/mduncan/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct13_Hyperlink1" class="blogna' +
          'me" name="Hyperlink1" title="Michael Rozlog" href="http://blogs.' +
          'embarcadero.com/michaelrozlog/">Michael Rozlog</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct13_AuthorRSS" class="rssfeed' +
          '" name="AuthorRSS" title="Michael Rozlog RSS Feed" href="http://' +
          'blogs.embarcadero.com/michaelrozlog/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct13_AuthorAtom" class="atomfe' +
          'ed" name="AuthorAtom" title="Michael Rozlog Atom Feed" href="htt' +
          'p://blogs.embarcadero.com/michaelrozlog/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct7_Hyperlink1" class="blognam' +
          'e" name="Hyperlink1" title="Michael Swindell" href="http://blogs' +
          '.embarcadero.com/michaelswindell/">Michael Swindell</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct7_AuthorRSS" class="rssfeed"' +
          ' name="AuthorRSS" title="Michael Swindell RSS Feed" href="http:/' +
          '/blogs.embarcadero.com/michaelswindell/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct7_AuthorAtom" class="atomfee' +
          'd" name="AuthorAtom" title="Michael Swindell Atom Feed" href="ht' +
          'tp://blogs.embarcadero.com/michaelswindell/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct171_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Embarcadero Developers in China " ' +
          'href="http://blogs.embarcadero.com/michaelzhou/">michaelzhou</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct171_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Embarcadero Developers in China  RSS ' +
          'Feed" href="http://blogs.embarcadero.com/michaelzhou/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct171_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Embarcadero Developers in China  A' +
          'tom Feed" href="http://blogs.embarcadero.com/michaelzhou/atom"><' +
          '/a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct187_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Hunting the Bug" href="http://blog' +
          's.embarcadero.com/miguelangeloliver/">miguelangeloliver</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct187_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Hunting the Bug RSS Feed" href="http:' +
          '//blogs.embarcadero.com/miguelangeloliver/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct187_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Hunting the Bug Atom Feed" href="h' +
          'ttp://blogs.embarcadero.com/miguelangeloliver/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct36_Hyperlink1" class="blogna' +
          'me" name="Hyperlink1" title="Mike Devery" href="http://blogs.emb' +
          'arcadero.com/michaeldevery/">Mike Devery</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct36_AuthorRSS" class="rssfeed' +
          '" name="AuthorRSS" title="Mike Devery RSS Feed" href="http://blo' +
          'gs.embarcadero.com/michaeldevery/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct36_AuthorAtom" class="atomfe' +
          'ed" name="AuthorAtom" title="Mike Devery Atom Feed" href="http:/' +
          '/blogs.embarcadero.com/michaeldevery/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct180_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Features and tips" href="http://bl' +
          'ogs.embarcadero.com/miso/">miso</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct180_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Features and tips RSS Feed" href="htt' +
          'p://blogs.embarcadero.com/miso/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct180_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Features and tips Atom Feed" href=' +
          '"http://blogs.embarcadero.com/miso/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct193_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Look into" href="http://blogs.emba' +
          'rcadero.com/nikolay/">nikolay</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct193_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Look into RSS Feed" href="http://blog' +
          's.embarcadero.com/nikolay/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct193_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Look into Atom Feed" href="http://' +
          'blogs.embarcadero.com/nikolay/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct190_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Mateo\'#39's Blog - The road to Delphi' +
          '" href="http://blogs.embarcadero.com/pablomateos/">Pablo Mateos<' +
          '/a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct190_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Mateo\'#39's Blog - The road to Delphi RS' +
          'S Feed" href="http://blogs.embarcadero.com/pablomateos/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct190_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Mateo\'#39's Blog - The road to Delphi' +
          ' Atom Feed" href="http://blogs.embarcadero.com/pablomateos/atom"' +
          '></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct37_Hyperlink1" class="blogna' +
          'me" name="Hyperlink1" title="Pawe? G?owacki" href="http://blogs.' +
          'embarcadero.com/pawelglowacki/">Pawel Glowacki</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct37_AuthorRSS" class="rssfeed' +
          '" name="AuthorRSS" title="Pawe? G?owacki RSS Feed" href="http://' +
          'blogs.embarcadero.com/pawelglowacki/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct37_AuthorAtom" class="atomfe' +
          'ed" name="AuthorAtom" title="Pawe? G?owacki Atom Feed" href="htt' +
          'p://blogs.embarcadero.com/pawelglowacki/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct148_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="'#39'D'#39'atabases : The Hidden '#39'D'#39'NA of ' +
          'our lives" href="http://blogs.embarcadero.com/ritesha/">Ritesh A' +
          'nand</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct148_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="'#39'D'#39'atabases : The Hidden '#39'D'#39'NA of our' +
          ' lives RSS Feed" href="http://blogs.embarcadero.com/ritesha/rss"' +
          '></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct148_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="'#39'D'#39'atabases : The Hidden '#39'D'#39'NA of ' +
          'our lives Atom Feed" href="http://blogs.embarcadero.com/ritesha/' +
          'atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct179_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="The official blog of Sergey Roschi' +
          'n" href="http://blogs.embarcadero.com/roschinspb/">roschinspb</a' +
          '>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct179_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="The official blog of Sergey Roschin R' +
          'SS Feed" href="http://blogs.embarcadero.com/roschinspb/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct179_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="The official blog of Sergey Roschi' +
          'n Atom Feed" href="http://blogs.embarcadero.com/roschinspb/atom"' +
          '></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct151_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Stephen Blas" href="http://blogs.e' +
          'mbarcadero.com/sblas/">sablas</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct151_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Stephen Blas RSS Feed" href="http://b' +
          'logs.embarcadero.com/sblas/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct151_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Stephen Blas Atom Feed" href="http' +
          '://blogs.embarcadero.com/sblas/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct170_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Sarina DuPont, Product Manager RAD' +
          ' Studio" href="http://blogs.embarcadero.com/sarinadupont/">sarin' +
          'adupont</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct170_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Sarina DuPont, Product Manager RAD St' +
          'udio RSS Feed" href="http://blogs.embarcadero.com/sarinadupont/r' +
          'ss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct170_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Sarina DuPont, Product Manager RAD' +
          ' Studio Atom Feed" href="http://blogs.embarcadero.com/sarinadupo' +
          'nt/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct31_Hyperlink1" class="blogna' +
          'me" name="Hyperlink1" title="Seppy Bloom" href="http://blogs.emb' +
          'arcadero.com/seppybloom/">Seppy Bloom</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct31_AuthorRSS" class="rssfeed' +
          '" name="AuthorRSS" title="Seppy Bloom RSS Feed" href="http://blo' +
          'gs.embarcadero.com/seppybloom/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct31_AuthorAtom" class="atomfe' +
          'ed" name="AuthorAtom" title="Seppy Bloom Atom Feed" href="http:/' +
          '/blogs.embarcadero.com/seppybloom/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct19_Hyperlink1" class="blogna' +
          'me" name="Hyperlink1" title="Sriram Balasubramanian" href="http:' +
          '//blogs.embarcadero.com/srirambalasubramanian/">Sriram Balasubra' +
          'manian</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct19_AuthorRSS" class="rssfeed' +
          '" name="AuthorRSS" title="Sriram Balasubramanian RSS Feed" href=' +
          '"http://blogs.embarcadero.com/srirambalasubramanian/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct19_AuthorAtom" class="atomfe' +
          'ed" name="AuthorAtom" title="Sriram Balasubramanian Atom Feed" h' +
          'ref="http://blogs.embarcadero.com/srirambalasubramanian/atom"></' +
          'a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct177_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="FireMonkey2 Examples" href="http:/' +
          '/blogs.embarcadero.com/stefanb/">stefanb</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct177_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="FireMonkey2 Examples RSS Feed" href="' +
          'http://blogs.embarcadero.com/stefanb/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct177_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="FireMonkey2 Examples Atom Feed" hr' +
          'ef="http://blogs.embarcadero.com/stefanb/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct162_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Stephen Ball" href="http://blogs.e' +
          'mbarcadero.com/stephenball/">Stephen Ball</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct162_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Stephen Ball RSS Feed" href="http://b' +
          'logs.embarcadero.com/stephenball/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct162_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Stephen Ball Atom Feed" href="http' +
          '://blogs.embarcadero.com/stephenball/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct195_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Steve Haney" href="http://blogs.em' +
          'barcadero.com/stevehaney/">stevehaney</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct195_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Steve Haney RSS Feed" href="http://bl' +
          'ogs.embarcadero.com/stevehaney/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct195_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Steve Haney Atom Feed" href="http:' +
          '//blogs.embarcadero.com/stevehaney/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct154_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Thierry Laborde" href="http://blog' +
          's.embarcadero.com/thierrylaborde/">thierrylaborde</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct154_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Thierry Laborde RSS Feed" href="http:' +
          '//blogs.embarcadero.com/thierrylaborde/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct154_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Thierry Laborde Atom Feed" href="h' +
          'ttp://blogs.embarcadero.com/thierrylaborde/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__cte14_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Tim Del Chiaro" href="http://delph' +
          'i-insider.blogspot.com/">Tim Del Chiaro</a>'
        '</td>'
        '<td valign="top"></td>'
        
          '<td valign="top"><a id="Bloggers__cte14_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Tim Del Chiaro Atom Feed" href="ht' +
          'tp://delphi-insider.blogspot.com/feeds/posts/default/-/blogs"></' +
          'a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct155_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Thierry Laborde : The Frenchy, Del' +
          'phi Addict" href="http://blogs.embarcadero.com/tlaborde/">tlabor' +
          'de</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct155_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Thierry Laborde : The Frenchy, Delphi' +
          ' Addict RSS Feed" href="http://blogs.embarcadero.com/tlaborde/rs' +
          's"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct155_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Thierry Laborde : The Frenchy, Del' +
          'phi Addict Atom Feed" href="http://blogs.embarcadero.com/tlabord' +
          'e/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct161_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Tony de la Lama - SVP Marketing &a' +
          'mp; R&amp;D" href="http://blogs.embarcadero.com/tonydelalama/">t' +
          'onydelalama</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct161_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Tony de la Lama - SVP Marketing &amp;' +
          ' R&amp;D RSS Feed" href="http://blogs.embarcadero.com/tonydelala' +
          'ma/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct161_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Tony de la Lama - SVP Marketing &a' +
          'mp; R&amp;D Atom Feed" href="http://blogs.embarcadero.com/tonyde' +
          'lalama/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct150_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Vsevolod Leonov" href="http://blog' +
          's.embarcadero.com/vsevolodleonov/">Vsevolod Leonov</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct150_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Vsevolod Leonov RSS Feed" href="http:' +
          '//blogs.embarcadero.com/vsevolodleonov/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct150_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Vsevolod Leonov Atom Feed" href="h' +
          'ttp://blogs.embarcadero.com/vsevolodleonov/atom"></a>'
        '</td>'
        '</tr>'
        '<tr>'
        
          '<td valign="top"><a id="Bloggers__ct178_Hyperlink1" class="blogn' +
          'ame" name="Hyperlink1" title="Fire Monkey - Yaroslav Brovin" hre' +
          'f="http://blogs.embarcadero.com/yaroslavbrovin/">ybrovin</a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct178_AuthorRSS" class="rssfee' +
          'd" name="AuthorRSS" title="Fire Monkey - Yaroslav Brovin RSS Fee' +
          'd" href="http://blogs.embarcadero.com/yaroslavbrovin/rss"></a>'
        '</td>'
        
          '<td valign="top"><a id="Bloggers__ct178_AuthorAtom" class="atomf' +
          'eed" name="AuthorAtom" title="Fire Monkey - Yaroslav Brovin Atom' +
          ' Feed" href="http://blogs.embarcadero.com/yaroslavbrovin/atom"><' +
          '/a>'
        '</td>'
        '</tr>'
        '</table>  </div>'
        '</div>'
        '</div>'
        '<br style="clear: both">'
        
          '                        <div class="clearblock"></div>          ' +
          '                                                                ' +
          '                  </div>'
        '                </div>'
        '                        </td>'
        '                                          '
        '                        <td valign="top" width="99%">      '
        
          '                <div id="article-div" class="article article-wit' +
          'h-leftcol" style="overflow: hidden;">'
        #9#9#9#9'    '#9#9#9#9'    '
        
          #9#9#9#9'                                                            ' +
          '                                                                ' +
          #9#9#9#9'    <h2>Latest Posts</h2>'
        '<br />'
        
          '<div><div style="float: left; height: 100px; margin-right: 10px;' +
          '"><img src="https://secure.gravatar.com/avatar/08d2b220263764768' +
          'f5e882aab472d3b?r=g&d=https%3a%2f%2fstatic.codegear.com%2fimages' +
          '%2fno_avatar.jpg&s=50" alt="" border="0"></div>'
        
          '<h3><a id="RecentPosts__ct0_Hyperlink2" href="http://feedproxy.g' +
          'oogle.com/~r/DelphiDotOrg/~3/wHxbdXQyFdQ/">Data Visualization wi' +
          'th Ray Konopka</a></h3>I am really looking forward to Ray Konopk' +
          'a&#8217;s webinar on data visualization with Delphi and RAD Stud' +
          'io. Hopefully you will get a chance to join in too! Join Embarca' +
          'dero and Delphi expert Ray Konopka to learn about data visualiza' +
          'tion in &#8230;<p class="read-more"><a href="http://delphi.org/2' +
          '013/08/data-visualization-with-ray-konopka/">Read more &#187;</a' +
          '></p><br><p class="postfoot">posted @ Mon, 12 Aug 2013 20:38:43 ' +
          '+0000 by Jim McKeeth</p></div><hr><div><h3><a id="RecentPosts__c' +
          't1_Hyperlink2" href="http://blogs.embarcadero.com/sarinadupont/2' +
          '013/08/12/android-in-style/">Android in Style</a></h3><p><!--[if' +
          ' gte mso 9]&gt;  Normal 0     false false false  EN-US X-NONE X-' +
          'NONE              MicrosoftInternetExplorer4              &lt;![' +
          'endif]--></p>'
        
          '<p>Seeing a product come to life is one of the most exciting mom' +
          'ents for a Product Manager.</p>'
        
          '<p>I am really excited about Delphi for Android, and the fact th' +
          'at you, our customers, will be able to build native apps for iOS' +
          ' and Android (and of course, Windows and Mac) all from one codeb' +
          'ase.</p>'
        
          '<p>I thought I would share with you some previews of the default' +
          ' native styling options that we will provide, which include the ' +
          'Android Holo Light and Android Holo Dark themes. In addition, yo' +
          'u can also use custom styles with your Android apps.</p>'
        
          '<p>In the screenshots below, you can see a variety of controls t' +
          'hat are styled with either the light or the dark style. Both scr' +
          'eenshots in the front show the app running on a Nexus 4 phone, a' +
          'nd in the back, on a Nexus 7 tablet. On the Nexus 7 tablet, you ' +
          'can also see the native time picker which matches the theme of t' +
          'he running app (either dark or light).</p>'
        
          '<p><a href="/files/2013/08/styles_9268.png"><img src="/files/201' +
          '3/08/styles_9268.png" alt="" width="500" height="708" /></a></p>'
        '<p>More details about Delphi for Android to come soon.</p>'
        
          '<p>I also wanted to mention that we have a <a href="http://embt.' +
          'co/XE4RadOffer">special offer</a> going right now:  6 Months Sup' +
          'port &amp; Maintenance free on select new  user products! Not on' +
          'ly will you get the next 6 months of updates and  major upgrades' +
          ' free, but you'#8217'll also get priority access into our <a href="htt' +
          'p://embt.co/RADBetaA">Android beta program</a>!</p>'
        '<p>Sincerely,</p>'
        '<p>Sarina</p>'
        
          '<p class="akst_link"><a href="http://blogs.embarcadero.com/sarin' +
          'adupont/?p=293&amp;akst_action=share-this" onclick="akst_share('#39 +
          '293'#39', '#39'http%3A%2F%2Fblogs.embarcadero.com%2Fsarinadupont%2F2013%' +
          '2F08%2F12%2Fandroid-in-style%2F'#39', '#39'Android+in+Style'#39'); return fa' +
          'lse;" title="Post to del.icio.us, etc." id="akst_link_293" class' +
          '="akst_share_link" rel="nofollow">Share This</a> | <a href="mail' +
          'to:?subject=Android%20in%20Style&body=Have you seen this? http%3' +
          'A%2F%2Fblogs.embarcadero.com%2Fsarinadupont%2F2013%2F08%2F12%2Fa' +
          'ndroid-in-style%2F" id="akst_email_293" class="akst_share_email"' +
          ' rel="nofollow">Email this page to a friend</a></p><br><p class=' +
          '"postfoot">posted @ Mon, 12 Aug 2013 19:55:34 +0000 by sarinadup' +
          'ont</p></div><hr><div><h3><a id="RecentPosts__ct2_Hyperlink2" hr' +
          'ef="http://blogs.embarcadero.com/vsevolodleonov/2013/08/12/why-u' +
          'ml-for-delphi-users/">Why UML (for Delphi users)</a></h3><p><a h' +
          'ref="http://www.embarcadero.com/products/delphi">Delphi</a> is a' +
          'ctively used in company <a href="http://www.garant.ru/">"Garant"'
        
          '</a> together with UML. Sometimes someone consider RAD tools and' +
          ' UML-modeling as opposite technologies. Developers and architect' +
          's in <a href="http://www.garant.ru/">"Garant"</a> do use a combi' +
          'nation of UML-modeling, automatic code generation and <a href="h' +
          'ttp://www.embarcadero.com/products/delphi">Delphi</a> - leading ' +
          'RAD tool. Let&#8217;s ask them how do they do this and why do th' +
          'ey use UML.</p>'
        
          '<p><strong>Vsevolod Leonov (Seva)- </strong>product manager, Emb' +
          'arcadero Technologies.</p>'
        
          '<p><strong>Alexander Lulin (Alex) </strong>- developer lead, Gar' +
          'ant.</p>'
        
          '<p><strong>Maxim Krylov (Max) - </strong>project manager, Garant' +
          '</p>'
        
          '<p>Company "Garant" is well known in Russia due to its key produ' +
          'ct - "Garant" system to provide information on Russian laws. Mos' +
          't of the company&#8217;s employees are developers. Their key pro' +
          'duct was started 23 years ago. The system has <span style="text-' +
          'decoration: underline">tens of millions of code lines</span>, wr' +
          'itten in different programming languages. Today we&#8217;ll ask ' +
          'the leads how they have managed to support high quality of the p' +
          'roduct for this scale, language heterogeneity, production tempo,' +
          ' and requirements on stability. One of the key technologies asid' +
          'e from Delphi (as well as C++)  is UML.</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: did you s' +
          'tart using UML from the beginning?</span></p>'
        
          '<p><strong>Max</strong>: No, we didn&#8217;t. When we started th' +
          'e system "Garamt", UML was not invented then. In about 1997 one ' +
          'of our young developer (we all were pretty young that time) brou' +
          'ght a diskette with one of the first UML modeling tool. We think' +
          ' that was a beginning of UML in our company. But it took years t' +
          'o start an effective use of UML as a full integrated part of the' +
          ' process.</p>'
        
          '<p><strong>Alex</strong>: Moreover, bringing UML into developmen' +
          't was long and in some steps.<span style="text-decoration: under' +
          'line"> But as the complexity of our software grew</span>, we nee' +
          'ded more and more some tool to manage the code and architecture ' +
          'of the system.</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: Were ther' +
          'e conceptual disagreements among the team members? Sometimes we ' +
          'see, the guys have their "own" UML? Or does UML "unified" the wa' +
          'y of thinking?</span></p>'
        
          '<p><strong>Alex</strong>: Of course, there were disagreements. T' +
          'he very unification of all the approaches in use was the goal.</' +
          'p>'
        
          '<p><strong>Max</strong>: Initially, UML was used by enthusiasts ' +
          'inside the team. But, finally, these personal activities became ' +
          'a task for everybody, and based on this individual results we de' +
          'veloped an understanding how to implement "the same" UML for all' +
          '.</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: When did ' +
          'you decided to use UML?</span></p>'
        
          '<p><strong>Alex</strong>: When we understood, the projects were ' +
          'complicated. Many developers involved. They needed to come to ge' +
          'neral vision and general agreement. And we needed to see the ove' +
          'rall architecture of the projects.</p>'
        
          '<p><strong>Maxim: </strong>A compact group of "initiated" had be' +
          'en using UML for a long time. They tried to generate CORBA IDL o' +
          'n its base. Then we came to a conclusion, it was practically imp' +
          'ossible, and built our own generator. That was "point of no retu' +
          'rn". UML became an in-house standard for most projects, but gene' +
          'rally it became something more, that just pictures. However at a' +
          'n early stage <span style="text-decoration: underline">UML was a' +
          ' way to come to agreement</span>.</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: Were ther' +
          'e cases, when you failed to come to agreement even with UML?</sp' +
          'an></p>'
        
          '<p><strong>Max</strong>: Yes, there always are situation, when s' +
          'omeone doesn&#8217;t want to come to agreement. Nothing can help' +
          ', including UML. But when people want to work productively, a un' +
          'iversal language makes the life simpler.</p>'
        
          '<p><strong>Alex</strong>: UML is not a dogma, and not a "magic b' +
          'ullet". It&#8217;s just a tool. But we became really more produc' +
          'tive. We can "surf" on all the system, changing the scale. We ca' +
          'n watch the <span style="text-decoration: underline">UseCase dia' +
          'gram on the surface, and they dive deep into to the last "byte"<' +
          '/span>. Zoom in, zoom out, like in Google Earth.</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: May be yo' +
          'u needed some "tool to come to agreement" because you experience' +
          'd lack of responsibility definition? I mean, John produces "bolt' +
          's", Sheryl makes "nuts", Diego joins "parts" together by "bolts"' +
          ' and "nuts". John doesn&#8217;t know about "parts" or even "nuts' +
          '". Isn&#8217;t this effective?</span></p>'
        
          '<p><strong>Alex: </strong>We did use such a pattern. Then we nee' +
          'ded to change roles, substitute each other. And complexity grew.' +
          '</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: How can w' +
          'e get known the project becomes "complicated"?</span></p>'
        
          '<p><strong>Max</strong>: It depends on the number of "bolt+nut+p' +
          'arts", on the number of "faces" of the nut, on the length variet' +
          'y of "bolts" and number of "parts" they join. If you&#8217;re pr' +
          'ogramming "hello world" application you needn&#8217;t come to ag' +
          'reement with anybody, you needn&#8217;t share responsibility. Yo' +
          'u needn&#8217;t UML and OOP, SOAP, XML, and agile. All these bec' +
          'ome important as the project grows. Suddenly, John has changed t' +
          'he bolt threading; bolts are incompatible with Sheryl&#8217;s nu' +
          'ts. But incompatible partially, they go off the bolts later. And' +
          ' a new developer - Mark - he unscrews bolts and nuts and changes' +
          ' them for rivets. These are funny and primitive examples, but wh' +
          'en massive, they create unbearable complexity and loss of qualit' +
          'y of both process, and results.</p>'
        
          '<p>Any notation, used by all the participants, decreases the num' +
          'ber of such "surprises". Hypothetical production process with co' +
          'nsidered "bolts" and "nuts" was impossible without blueprints an' +
          'd documentation. But they aren&#8217;t also enough. One needs ma' +
          'chine tools, robots etc to construct a real conveyor. Blueprints' +
          ' or models are input, while the ready product is output. So only' +
          ' UML to be consumed by some generator is highly effective, and y' +
          'ou can get 100% valid code with the follow-on "manual coding" to' +
          ' a final product.</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: How do yo' +
          'u model? A dev crowd&#8217;s gathering in a room, everybody&#821' +
          '7;s pointing at the wall-sized UML diagram, shouting at each oth' +
          'er? Trying to change something in the diagram with a red marker?' +
          ' Or do you have some split like "master-developer" - "detailed-d' +
          'evelopers"?</span></p>'
        '<p><span style="color: #333399"> </span></p>'
        
          '<p><strong>Alex</strong>: This really happens! We are arguing, p' +
          'ointing, shouting. We - yes - are "master developers" and "detai' +
          'l developers", but these are roles, not positions. Initial discu' +
          'ssions, requirements, questions, answers. Then prototyping. Then' +
          ' we form a team for this task. Then we search contradiction with' +
          ' the existing architecture. Iterative process, as normally one u' +
          'ses.</p>'
        
          '<p><strong>Max</strong>: All or just all our developers can draw' +
          ' with UML. And yes - we have "masters" and "details", and this i' +
          's effective. Guys who can model better are modelers. Algorithmic' +
          '-thinking guys are developers. They generate code and complete i' +
          't with business-logic.</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: What prob' +
          'lems was UML supposed to solve?</span></p>'
        
          '<p><strong>Max</strong>: Initially at the stage of experiments s' +
          'ome of us used UML as a way to bring our thoughts to order. We j' +
          'ust depicted classes and associations with no clear practical us' +
          'efulness. It was a kind of aesthetics. It was fine and interesti' +
          'ng, like we illustrated the classical books. But by the time of ' +
          'real use the main problem to solve was low speed and quality of ' +
          'manual coding. The main pain point was code generation.</p>'
        
          '<p><strong>Alex</strong>: Complexity of inter-connections. It wa' +
          's hard to feel them in "plane" or "bare" codes. Rules of design ' +
          'and code styles. Patterns. Once again, UML helped us to find som' +
          'e disciplined way to come to agreements.</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: So why UM' +
          'L?</span></p>'
        
          '<p><strong>Max</strong>: There were no alternatives this time. U' +
          'ML was the only universal graphical notation, which quite entire' +
          'ly described domains and had some accompanying tools with even s' +
          'ome automatic code generation. So we started using UML on histor' +
          'ical reasons. Later we understood there was no difference "how" ' +
          'to paint or "in what way&#8217;. <span style="text-decoration: u' +
          'nderline">The most important was "what to paint" and "what for".' +
          '</span> There was no principle difference what notation to use. ' +
          'UML for us is just a popular notation widely used. The shape of ' +
          '"boxes" or "arrows" is not so important, as the process, where d' +
          'iagrams are used.</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: Did class' +
          'ical book authors give you proper background? Or did you elabora' +
          'te your own vision on UML and the way of its use?</span></p>'
        
          '<p><strong>Max</strong>: Classical book authors provided us with' +
          ' a basis. And we used UML as authors recommended, but we went fu' +
          'rther, than tips and tinges. There were not definition of throug' +
          'hout use of the model. Yes, we all have heard about MDA, but hav' +
          'e we seen it as frequent as heard? We have corrected this, for e' +
          'xample, one of our meta-models implies the beginning of the desi' +
          'gn of the system from the description of "problems" to solve wit' +
          'h UML. They give birth to "capabilities", they create "use cases' +
          '" etc down to "servants", to "bytes". This is an entire model, w' +
          'hen one can take a particular byte and say what problem it solve' +
          's. Or one can have all the code for the particular "problem".</p' +
          '>'
        
          '<p><strong>Alex</strong>: This is like "nested doll" and "assemb' +
          'ling blueprints".  A lot of levels could exist, not only "Class ' +
          'View", "Deployment View", as classical authors said. "Enterprise' +
          ' level blueprint" and "container level blueprint in STL style". ' +
          'UML allows scaling or varying the complexity level. I can easily' +
          ' design/code/debug/test quite a big UseCase, it&#8217;s no harde' +
          'r, than the same work for "a list of integers". Of course, someo' +
          'ne can debug "a list of integers" for months.</p>'
        
          '<p>These "assembling blueprints", "nested doll" or "specificatio' +
          'n" are solutions. They are cornerstones. They allow fast changin' +
          'g the "zoom" factor of the system.</p>'
        
          '<p>And one more. Classical authors didn&#8217;t pay proper atten' +
          'tion to &lt;&lt;stereotypes&gt;&gt;. For us it&#8217;s extremely' +
          ' important. &lt;&lt;Stereotype&gt;&gt; is an element of architec' +
          'ture and meta-model. Stereotype influences the methods of code g' +
          'eneration and the resulting code.</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>:  More det' +
          'ails about &lt;&lt;stereotype&gt;&gt;, please.</span></p>'
        
          '<p><strong>Max</strong>: The main problem in using UML in "class' +
          'ical" tools is that code generation is tightly bound to pre-defi' +
          'ned static meta-model. You can&#8217;t change neither the first,' +
          ' nor the second one. No way to change, to broaden, to change the' +
          ' rules or define new specifics. The main failure of "classic" au' +
          'thors is they failed to present, and the "classic" tools failed ' +
          'to implement the main UML potential from the viewpoint of meta-d' +
          'esign. This is the creation of your own meta-models with specifi' +
          'c code generation. And &lt;&lt;stereotype&gt;&gt; starts playing' +
          ' the major role. &lt;&lt;Stereotype&gt;&gt; allows us defining a' +
          ' group of specific meta-classes with some arbitrary code generat' +
          'ion. In fact, using stereotypes, you can formulate an arbitrary ' +
          'meta-model, which becomes your own DSL. It transforms "boxes" in' +
          'to code according to any rules you implement. The very aspect al' +
          'lowed UML to become <span style="text-decoration: underline">not' +
          ' just "a drawing tool",</span> but simplify the development. The' +
          ' '
        
          'very lack of this or similar mechanism in commercial tools has l' +
          'ead to the fact, that UML is not popular now. Developers conside' +
          'r UML as "fifth wheel" for a cart.</p>'
        
          '<p><strong>Alex</strong>: I can add that in UML there is its own' +
          ' "meta-model", drawn in UML itself. There is a concept "class of' +
          ' element". This is Class, Category, Operation, Attribute, Depend' +
          'ency, Port, UseCase, Actor etc. These classes are used to constr' +
          'uct "resulting diagrams". The code generation is connected to th' +
          'e class. And this is a mistake of "classical" authors - there is' +
          ' neither flexibility, nor scalability. We went up a level. We de' +
          'scribe meta-meta-model with UML, i.e. the rules of making rules.' +
          ' Then we define meta-model, introducing any concepts. For exampl' +
          'e, we can define multiple inheritance in Delphi. Then we connect' +
          ' the rule of transformation of the model into code (or other art' +
          'ifacts like documents, auxiliary files etc.). In the example of ' +
          'multiple inheritance, it can be transformed into single inherita' +
          'nce plus aggregation, but it will look as the very 100% inherita' +
          'nce. Finally, we create a real models of our domain using not wh' +
          'at the classical authors gave, but all the arsenal of what we in'
        
          'vented at meta-level and get the resulting code even very-very c' +
          'omplex one.</p>'
        
          '<p><span style="color: #000080"><strong>Seva</strong>: Tell us, ' +
          'how has this been developing - gradually?</span></p>'
        
          '<p><strong>Max</strong>: Once we started a new version of our pr' +
          'oduct "Garant" ("Platform F1"). We faced a problem. Our server w' +
          'as developed with C++/CORBA, and its client was made with Delphi' +
          '. There were some reasons not to use VisiBroker in Delphi, and w' +
          'e saw no alternative for the server. Then we decided to make som' +
          'e "adapter" (dll in C++), which would work with the sever using ' +
          'CORBA. It would take some responsibilities for conversion, cashi' +
          'ng and a bit of client logic, communicating with Delphi client i' +
          'n its natural way. Our system "Garant" has a giant number of int' +
          'erfaces for communications between the adapter and client. There' +
          ' is a big-big task to implement object interface between dll in ' +
          'C++ and client Delphi application. Different types, different ru' +
          'les, different memory management&#8230; and difficulties in debu' +
          'gging</p>'
        
          '<p>It looked like "mission impossible". We started using UML as ' +
          '"it was designed for" for the first time. We had already our own' +
          ' CORBA IDL based on patterns, describing meta-model and doing co' +
          'de generation. All we needed just to define a new meta-model for' +
          ' interfaces of the adapter and describe the code generation on i' +
          'ts base. The code generation produced 100% relevant declaration ' +
          'both for C++, and Delphi, taking into account their features.</p' +
          '>'
        
          '<p>Finally, we made all this quite quick and got first results. ' +
          'Our C++ guys, who were responsible for the adapter, didn&#8217;t' +
          ' care about export. Delphi guys used adapter as if it was writte' +
          'n in Delphi, including typical ways down to properties and namin' +
          'g principles.  We drew necessary interfaces in the model graphic' +
          'ally, then the code was generated natively for both languages. I' +
          't was our first success story, and then we continued developing ' +
          'the idea of the pattern generation and meta-modeling. Many areas' +
          ' happened to be rather fruitful, although not all.</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: Do you us' +
          'e UML diagrams to involve a new member in the team work? Or the ' +
          'primary tasks are more trivial?</span></p>'
        
          '<p><strong>Alex</strong>: Basically, we have a wish-list of mino' +
          'r features to implement. That&#8217;s the start. Later on we do ' +
          'use model to show the architecture.</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: We know n' +
          'ot all the new approaches are positively accepted. Did you exper' +
          'ience rejection from some members of the team?</span></p>'
        
          '<p><strong>Max</strong>: Many guys considered "our UML" as an at' +
          'tempt of programming privacy violation. Previously everybody did' +
          ' as he/she wanted. Then we proposed rules and restrictions, incl' +
          'uding interfaces, starting from "you can&#8217;t pass a collecti' +
          'on as s parameter", or "no more than 5 arguments in a method) an' +
          'd ending with architectural layers and traceability of requireme' +
          'nts. Someone was afraid of this.</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: How did y' +
          'ou bring this to life - did you use reverse engineering?</span><' +
          '/p>'
        
          '<p><strong>Alex</strong>: No, we didn&#8217;t. That time we had ' +
          'no proper tool. But now I can say it&#8217;s wrong approach. Whe' +
          'n you draw an existing code, you re-think it, you find new ideas' +
          ', including refactoring (but don&#8217;t re-factor during modeli' +
          'ng, it should be a separate process). No automaton can do this. ' +
          'You won&#8217;t succeed this way.</p>'
        
          '<p><strong>Max</strong>: Already at the stage of creating a patt' +
          'ern generator we got: automatic reverse-engineering is "evil". N' +
          'ot because it&#8217;s impossible "in principle", you may have a ' +
          'very primitive model and full language compatibility. The key pr' +
          'oblem is as follows. Reverse engineering destroys the idea of UM' +
          'L for code generation. Our goal was to teach ourselves and teach' +
          ' the others <span style="text-decoration: underline">to think no' +
          't "in codes", but "in abstractions"</span>, unbound to the code.' +
          ' This is a separate complicated subject, and it was very importa' +
          'nt for us. So our generator in its architecture and the way it g' +
          'enerates the code excludes reverse-engineering and its necessity' +
          '.</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: Let&#8217' +
          ';s come back to OOP. Can we say UML helps us do OOP code refacto' +
          'ring better?</span></p>'
        
          '<p><strong>Alex</strong>: Yes, it does. But one shouldn&#8217;t ' +
          'mix refactoring with new functionality. They should be split in ' +
          'time. And one should always think about tests.</p>'
        
          '<p><strong>Max: </strong>Once<strong> </strong>again, what UML? ' +
          'If you just draw "dead" diagrams, this won&#8217;t help and give' +
          ' only small positive result. If you have a meta-model and patter' +
          'n code generation, as we have, you&#8217;ll get a high-level ref' +
          'actoring.</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: Why do yo' +
          'u have to do refactoring? Not enough experience? Or some objecti' +
          've reasons like evolution of the system? Or functional extension' +
          ' of the system?</span></p>'
        
          '<p><strong>Alex</strong>: All these, I think. Refactoring is one' +
          ' big topic to discuss. But a couple of model and tests helps a l' +
          'ot. Model limits a developer "from the top", forcing him/her to ' +
          'remain within "the frames of architecture" of modify it correctl' +
          'y. And tests limit the developer "from the bottom", forcing him/' +
          'her to remain within the frames of technical task and saving him' +
          '/her from regression. The model is "a tutor", tests are "a valid' +
          'ator". Although there are my colleagues who don&#8217;t share th' +
          'is opinion. "A bad-minded programmer will always find a way to i' +
          'mplement business-logic in "View", and "View" in business-logic.' +
          ' They are right. But such a skeptical person often is a programm' +
          'er, who will never do this.</p>'
        
          '<p>Why do we need refactoring? It&#8217;s no secret IT-industry ' +
          'over the world cannot plan software development quite accurate. ' +
          'We always experience "panic-driven" development in "XP-style". L' +
          'ike Scarlett O&#8217;Hara we all "think about this tomorrow". To' +
          'morrow we have a lot of "on-the-fly" made solutions, reflecting ' +
          'fast growth of functionality. So tomorrow there will be a risk, ' +
          'that the day after tomorrow the architecture will "break apart".' +
          ' We use refactoring to keep the architecture and code structure ' +
          'clean and neat.</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: And how e' +
          'asy do you feel now with UML, DSL, code generation?</span></p>'
        
          '<p><strong>Max</strong>: There is a real life example. We had in' +
          'terface factories, a method with a special stereotype to generat' +
          'e a set of other interfaces and classes on the base of different' +
          ' patterns in code. In runtime thus we could flexibly control the' +
          ' binding with different interface implementations, cash them, pu' +
          'sh them etc. Once again, this is just a method, drawn in the mod' +
          'el. Once after we had used it a couple of years with more than t' +
          'wenty such factories, we got the code was not optimal and the pe' +
          'rformance was low. In order to solve the problem we needed to ch' +
          'ange the structure of generated classes. It was not just a refac' +
          'toring to change "a" symbol to "b" symbol, but the very structur' +
          'e.  In our case it tool some hours to re-write and re-generated ' +
          'all the projects. If the code was managed manually, we would hav' +
          'e to change hundred of code lines across the project, and change' +
          ' not names, but structure, then debug all these mess&#8230; not ' +
          'hours, months wouldn&#8217;t be enough.</p>'
        
          '<p><strong>Alex</strong>: In addition, I can more effectively re' +
          '-factor the diagram, rather than code. It&#8217;s much easy to m' +
          'ove "boxes" in the diagram, rather than bunch of text codes betw' +
          'een files and folders and not to care about architecture. The mo' +
          'del "thinks for me" and "instead of me". It saves me from taking' +
          ' incorrect decision. Or the decision will be explicit.</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: Can you m' +
          'easure the quality of refactoring? No another refactoring anymor' +
          'e in future?</span></p>'
        
          '<p><strong>Alex</strong>: This is not a criterion. Yes, if we di' +
          'd refactoring once and don&#8217;t need it anymore in future, th' +
          'at&#8217;s great. It&#8217;s close to an ideal. But I&#8217;ve n' +
          'ever seen an ideal code/architecture. If something is perfect "i' +
          'n the top", it&#8217;s not perfect "in the bottom". Or vice vers' +
          'a. Great code, but not ideal architecture.</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: We very o' +
          'ften speak about refactoring. And this is not always well accept' +
          'ed. For example, "it works until refactoring". Can we say UML se' +
          'cures better code and rare refactoring?</span></p>'
        
          '<p><strong>Max</strong>: If everything&#8217;s working, one shou' +
          'ld do refactoring. Refactoring is not an end in itself. The goal' +
          ' is to keep the code from becoming a mess. UML with code generat' +
          'ion even in the most simple variant automatically structure the ' +
          'code right. So, the answer is "of course, yes".</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: Pain poin' +
          't - synchronization of UML-diagrams with code. Do you do 100% co' +
          'rrespondence?</span></p>'
        
          '<p><strong>Alex</strong>: Yes, we do 100%. <span style="text-dec' +
          'oration: underline">We generate the code from the mode. </span>I' +
          ' was an enemy of modeling, until we managed to do this any time.' +
          ' Without this the modeling is "monkey business".</p>'
        
          '<p><strong>Max</strong>: Yes, we don&#8217;t do reverse-engineer' +
          'ing. <span style="text-decoration: underline">Our synchronizatio' +
          'n is always one way.</span> Even one won&#8217;t escape synchron' +
          'ization.</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: So the co' +
          'de generation is a must for effective use of UML for software en' +
          'gineering?</span></p>'
        
          '<p><strong>Alex</strong>: No doubt. Moreover, if one has no code' +
          ' generation, at some moment the diagram becomes "just a picture"' +
          '. It&#8217;s out-of-date. It&#8217;s Mickey Mouse. Spurious. Not' +
          ' genuine.</p>'
        
          '<p>And of course as we said the code generation allows "coding t' +
          'he code", sorry, in a very fast manner. Examples already discuss' +
          'ed, and I have plenty.</p>'
        
          '<p><strong>Max</strong>: I&#8217;d speak even more concrete. Cod' +
          'e generation gives the sense to UML. For us, at least. May be, w' +
          'e don&#8217;t use UML in classical way at all.</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: OMG! What' +
          ' are you saying? You don&#8217;t use UML? Why didn&#8217;t you s' +
          'ay this earlier? We&#8217;re wasting the readers&#8217; time!</s' +
          'pan></p>'
        
          '<p><strong>Max</strong>: Don&#8217;t worry, I&#8217;m a bit joki' +
          'ng. <span style="text-decoration: underline">UML for us is just ' +
          'graphical notation, no more</span>. We took it just as a way of ' +
          'drawing, but built up something considerably greater on its base' +
          '. Patterns, we described above, allow us defining any meta-model' +
          ' in terms and concepts of these UML-boxes, arrows etc. "Class", ' +
          '"Category", "Association" etc. So we can get new terms, new prim' +
          'itives, at higher level and in recurrent manner. Then a designer' +
          ', architect or programmer can build up a specific mode and gener' +
          'ate codes. I.e. in fact, patterns are what specific DSL creates ' +
          'and compiles the model into a code. UML is a way of drawing the ' +
          'model. Even an expert in "classical" UML may fail to understand ' +
          'what we are drawing.</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: Does the ' +
          'quality of the code based on graphical notation compensate seemi' +
          'ng "losses of time"?</span></p>'
        
          '<p><strong>Alex</strong>: I think it compensate. Stereotypes of ' +
          'higher level. The point is that the design and code structure ar' +
          'e repeated. The framework influences the model, the model influe' +
          'nces the framework. Refactoring and test process are much better' +
          ', if there are models available.</p>'
        
          '<p><strong>Max</strong>: Alex just talked about stereotypes of h' +
          'igher level. This is a very important subject and the most power' +
          'ful mechanism we know. It joins atoms into molecules, molecules ' +
          'into alloys, parts, aggregates and, at last, final product.</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: You menti' +
          'oned tests in context of refactoring. Does this mean - no tests,' +
          ' no refactoring. No refactoring - why do we need models?</span><' +
          '/p>'
        
          '<p><strong>Alex</strong>: I think, of course, it&#8217;s better ' +
          'to have tests first, then UML, modeling and then code generation' +
          '. But historically we did vice versa. Now I&#8217;d prefer tests' +
          ' at the very beginning. We don&#8217;t mention tests. We know th' +
          'ey exist. Tomorrow they will show bugs, if we do them. We&#8217;' +
          're making tests "in advance". We have regression tests. We have ' +
          'functional tests. And then we can re-factor with no harm to qual' +
          'ity.</p>'
        
          '<p><strong>Max</strong>: I disagree with Alex. I think, they sho' +
          'uld be altogether and at the same time. They complete each other' +
          '. It&#8217;s quality of production. I&#8217;d start from the mod' +
          'eling, as tests can also be generated from models.</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: Alex, as ' +
          'I got, you didn&#8217;t support UML at first? Turning back (may ' +
          'be with a smile), did you think like "why do I need UML, I contr' +
          'ol my code without it effectively?"</span></p>'
        '<p><strong> </strong></p>'
        
          '<p><strong>Alex</strong>: No, long ago I felt the necessity to t' +
          'reat the growing complexity of the code. But without code genera' +
          'tion and continuous synchronization I didn&#8217;t see how UML c' +
          'ould help me. Now I understand and use it every day. However, it' +
          '&#8217;s not "just UML".</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: Is your U' +
          'ML another way to document the code?</span></p>'
        '<p><strong> </strong></p>'
        
          '<p><strong>Alex</strong>: Yes, it is. Moreover, all the models a' +
          're integrated into a unified hypertext knowledge base. It contai' +
          'ns also bug-tracking system and requirements management system.<' +
          '/p>'
        
          '<p><strong>Max</strong>: &#8230; and many other, which is our kn' +
          'ow-how. In addition, integration is also implemented on the same' +
          ' patterns: html for the base is generated from the model, as wel' +
          'l as source code and then automatically placed on the server.</p' +
          '>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: In what f' +
          'orm UML-models are integrated and located in the knowledge base?' +
          ' Don&#8217;t you say they are just "pictures".</span></p>'
        
          '<p><strong>Alex</strong>: They are pictures, but with hyper-link' +
          's and describing docs. But one can click the picture and dive in' +
          'to to the real UML diagram in the UML tool.</p>'
        
          '<p><strong>Max</strong>: Yes, and vice versa. And the changing t' +
          'asks and commits to the repository are also bound.</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: Do you us' +
          'e UML digrams for interaction with "non-programmers"?</span></p>'
        
          '<p><strong>Max</strong>: Initially we tried to use UML for inter' +
          'action. All the requirements were presented as UseCase or Sequen' +
          'ce diagrams. We adapted the process for "non-programmers", and i' +
          't worked. The first version of the system was made in this way. ' +
          'But now&#8230; politely saying, it&#8217;s not typical for our m' +
          'arket managers and professionals in law.</p>'
        
          '<p><strong>Alex</strong>: Non-technical people don&#8217;t like ' +
          'formal languages. Russian for them is much convenient. Like Russ' +
          'ian literature&#8230; can&#8217;t be represented in UML. Psychol' +
          'ogy!</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: What UML-' +
          'diagrams are used?</span></p>'
        
          '<p><strong>Alex</strong>: Primarily, Class diagrams and UseCases' +
          '.</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: Aren&#821' +
          '7;t the other diagrams useful? Don&#8217;t you value Object Diag' +
          'rams?</span></p>'
        
          '<p><strong>Max</strong>: Sometimes we use State Machines and gen' +
          'erate code from them. Not often. For special tasks only. We use ' +
          'Sequence diagram, but as illustrations. They are not used for ge' +
          'neration. The period of their relevance is very short.</p>'
        
          '<p><strong>Alex</strong>: Sequence diagrams will be useful, when' +
          ' we adapt them by corresponding code generation. Object diagrams' +
          ' are SAX filters. When we operate not classes, but instances.</p' +
          '>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: Classical' +
          ' RAD-approach keeps a programmer within quite narrow frames. Dat' +
          'a base, GUI, form, components, events, even handlers. What about' +
          ' UML?</span></p>'
        
          '<p><strong>Alex</strong>: UML "squeezes" a developer into "meta-' +
          'model". But this was our goal. In contrast to RAD, we use declar' +
          'ation, not imperative approach in some parts of the project. Mod' +
          'el is maximally separated from the implementation in code, and c' +
          'ode is generated by the code generator. For example, "documentat' +
          'ion" or "settings". SAX-filters etc.</p>'
        
          '<p><strong>Max</strong>: you&#8217;re an author of restriction, ' +
          'not the model. Meta-model has no rules, it defines the rules for' +
          ' the model and author of the model to be created. These rules ar' +
          'e strict, but they provide the flexibility and power like "Lego-' +
          'blocks".</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: How model' +
          's have influenced your code structure and architecture?</span></' +
          'p>'
        
          '<p><strong>Alex</strong>: The matter is not in models. The point' +
          ' is "hygiene for brain". You use models, your brain is healthy. ' +
          'Architecture can be better with UML, if you want this. Logical l' +
          'ayers appear in your system. Parasite circular links disappear&#' +
          '8230; many other good effects.</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: Now let&#' +
          '8217;s work in blitz manner. When one shouldn&#8217;t use UML?</' +
          'span></p>'
        
          '<p><strong>Alex</strong>: Investigations and experimental progra' +
          'mming. Two-three months projects. Projects, which won&#8217;t ca' +
          'll the support and maintenance.</p>'
        
          '<p><strong>Max</strong>: If you use UML only for drawing, I agre' +
          'e. If you&#8217;re using UML for meta-modeling and code generati' +
          'on, it&#8217;s always useful. Of course, it&#8217;s redundant fo' +
          'r "hello, world" applications. But I&#8217;d do "hello, world" w' +
          'ith UML. I won&#8217;t have to recall how a new project is start' +
          'ed in IDE J New projects are also auto-generated in our process.' +
          '</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: How can y' +
          'ou or someone prove the effective use UML?</span></p>'
        
          '<p><strong>Alex</strong>: We can simply compare the time of impl' +
          'ementation of some functionality "by hands" or by models and gen' +
          'erators.</p>'
        
          '<p><strong>Max</strong>: Of course, one should keep in mind the ' +
          'limitation of a specific UML tool.</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: At what s' +
          'tage and how can one start  modeling?</span></p>'
        
          '<p><strong>Alex</strong>: Any moment. But not the whole system a' +
          't once.</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: What code' +
          ' can remain as-is and without models?</span></p>'
        
          '<p><strong>Max</strong>: If you have code without a clear struct' +
          'ure in it, some unique algorithms, some code without evident pat' +
          'tern&#8230; without chance to be used once again&#8230; somethin' +
          'g, which is hard to describe formally and reproduce.</p>'
        
          '<p><strong>Alex</strong>: Not all my codes exist in models. I ei' +
          'ther model new classes/entities, or what I remake or re-factor.<' +
          '/p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: Have you ' +
          'tried different approaches? Is there some alternative to UML in ' +
          'modern IT world?</span></p>'
        
          '<p><strong>Max</strong>: There are no alternatives to UML, takin' +
          'g into account the way we use it. But it&#8217;s not principal f' +
          'or use how it looks like, what "boxes", "lines" or "arrows". The' +
          ' main is the way we the "picture".</p>'
        
          '<p><strong>Alex</strong>: If you talk about graphical notation, ' +
          'there are plenty. Potentially we can use any graphical notation.' +
          ' And we can go without graphical notation at all, and start doin' +
          'g stuff with purely textual DSL notation. There are many variant' +
          's and combinations.</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: Are there' +
          ' limits for your approach?</span></p>'
        
          '<p><strong>Max</strong>: If you start using your own meta-models' +
          ', your imagination is your own limit. <span style="text-decorati' +
          'on: underline">The point is to see general aspects in particular' +
          ' tasks.</span></p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: I can&#82' +
          '17;t believe you&#8217;re so perfect. Where are problems?</span>' +
          '</p>'
        
          '<p><strong>Alex</strong>: Of course we have. Primarily, there ar' +
          'e limitations of the tool. The code generation speed is not so h' +
          'igh for large models. Not optimal UML editor user interface etc.' +
          '</p>'
        
          '<p><strong>Max</strong>: Problems are technological, not concept' +
          'ual. The tool chain was built long ago and has been very effecti' +
          've for a long period. But we need something new: new code genera' +
          'tion, improvements etc. But these are "tasks", not "problems". W' +
          'e use UML-editor as a separate tool. It&#8217;s very deeply inte' +
          'grated, but we&#8217;d like to have our own.</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: What are ' +
          'your plans?</span></p>'
        
          '<p><strong>Alex</strong>: We think of developing our own tool fo' +
          'r modeling. The tool will improve what one has in commercial too' +
          'ls.</p>'
        
          '<p><strong>Max</strong>: We&#8217;d like to have multi-platform ' +
          'tool. We have a lot of ideas how to improve the modeling further' +
          '.</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: Will we d' +
          'iscuss DSL in the next interview?</span></p>'
        '<p><strong>Max</strong>: Yes, of course.</p>'
        '<p><strong>Alex</strong>: With pleasure.</p>'
        
          '<p><span style="color: #333399"><strong>Seva</strong>: As Embarc' +
          'adero guy&#8230; I&#8217;m asking&#8230; Do you use Delphi?</spa' +
          'n></p>'
        
          '<p><strong>Alex</strong>: Yes, I use Delphi for development. I k' +
          'now the <span style="text-decoration: underline">contradictions ' +
          'between RAD and UML</span>, but I use strong points of both the ' +
          'technologies. <span style="text-decoration: underline">And I get' +
          ' great synergy.</span> For me Delphi is a part of quite complica' +
          'ted conveyor. Now we&#8217;re migrating <span style="text-decora' +
          'tion: underline">to Delphi XE4, as we need 64-bit support.</span' +
          '></p>'
        
          '<p><strong>Max</strong>: My primary language was C++, but I alwa' +
          'ys worked in language-heterogeneous environment. Many technologi' +
          'es like Delphi, C++, Python, Java etc. were used in projects I t' +
          'ook part. I never did "holywars". As a project manger I know the' +
          ' main goal, which is effective of the system on the whole. In ou' +
          'r company Delphi has been widely and intensively used. My tasks ' +
          'are to know strong points of any tool, adapt it to the process, ' +
          'and manage the developers to get maximum performance. <span styl' +
          'e="text-decoration: underline">We use Delphi as effectively as w' +
          'e can</span>.</p>'
        
          '<p class="akst_link"><a href="http://blogs.embarcadero.com/vsevo' +
          'lodleonov/?p=1352&amp;akst_action=share-this" onclick="akst_shar' +
          'e('#39'1352'#39', '#39'http%3A%2F%2Fblogs.embarcadero.com%2Fvsevolodleonov%2' +
          'F2013%2F08%2F12%2Fwhy-uml-for-delphi-users%2F'#39', '#39'Why+UML+%28for+' +
          'Delphi+users%29'#39'); return false;" title="Post to del.icio.us, et' +
          'c." id="akst_link_1352" class="akst_share_link" rel="nofollow">S' +
          'hare This</a> | <a href="mailto:?subject=Why%20UML%20%28for%20De' +
          'lphi%20users%29&body=Have you seen this? http%3A%2F%2Fblogs.emba' +
          'rcadero.com%2Fvsevolodleonov%2F2013%2F08%2F12%2Fwhy-uml-for-delp' +
          'hi-users%2F" id="akst_email_1352" class="akst_share_email" rel="' +
          'nofollow">Email this page to a friend</a></p><br><p class="postf' +
          'oot">posted @ Mon, 12 Aug 2013 14:45:34 +0000 by Vsevolod Leonov' +
          '</p></div><hr><div><h3><a id="RecentPosts__ct3_Hyperlink2" href=' +
          '"http://blogs.embarcadero.com/jtembarcadero/2013/08/09/its-alive' +
          '-a-first-look-at-delphi-for-android/">It'#8217's alive! A first look a' +
          't Delphi for Android</a></h3><p>We&#8217;ve been in beta for a '
        'w'
        
          'hile now with Delphi for Android and the progress has been aweso' +
          'me. In particular, I&#8217;ve been taking iOS apps written with ' +
          'Delphi/FM and simply retargeting them to Android. It&#8217;s rea' +
          'lly amazing. Since this Android support has been under wraps, I ' +
          'am very excited to share with you some first public peeks.</p>'
        
          '<p>Here&#8217;s an example of one such application, FirePhoto. F' +
          'irst built with Delphi for iOS and by retargeting it in the IDE,' +
          ' it&#8217;s now running on an iPhone 5 and on my S4 and my Nexus' +
          ' 7 tablet.</p>'
        
          '<p style="text-align: center"><a href="/files/2013/08/ios-androi' +
          'ds_9238.jpeg"><img src="/files/2013/08/ios-androids_9238-300x225' +
          '.jpg" alt="" width="300" height="225" /></a></p>'
        '<p>Here are few more pics for your enjoyment:</p>'
        
          '<p>Installing the APK package (and informing the user of request' +
          'ed permissions):</p>'
        
          '<p style="text-align: center"><a href="/files/2013/08/screenshot' +
          '2013-08-09-12-27-40_9259.png"><img src="/files/2013/08/screensho' +
          't2013-08-09-12-27-40_9259-168x300.png" alt="" width="168" height' +
          '="300" /></a>:</p>'
        
          '<p>FirePhoto on iOS taking a picture of FirePhoto on Android and' +
          ' vice-versa.</p>'
        
          '<p style="text-align: center"><a href="/files/2013/08/ios-androi' +
          'd_9253.jpg"><img src="/files/2013/08/ios-android_9253-162x300.jp' +
          'g" alt="" width="162" height="300" /></a><a href="/files/2013/08' +
          '/android-ios_9256.jpg"><img src="/files/2013/08/android-ios_9256' +
          '-168x300.jpg" alt="" width="168" height="300" /></a></p>'
        '<p style="text-align: center">'
        
          '<p style="text-align: center"><span>Two different mobile OSs, sa' +
          'me app functionality with the exact same source code!</span></p>'
        
          '<p>In case you weren&#8217;t aware, we have a <a href="http://em' +
          'bt.co/XE4RadOffer">special offer</a> going right now:  6 Months ' +
          'Support &amp; Maintenance free on select new user products! Not ' +
          'only will you get the next 6 months of updates and major upgrade' +
          's free, but you&#8217;ll also get priority access into our <a hr' +
          'ef="http://embt.co/RADBetaA">Android beta program</a>!</p>'
        
          '<p class="akst_link"><a href="http://blogs.embarcadero.com/jtemb' +
          'arcadero/?p=255&amp;akst_action=share-this" onclick="akst_share(' +
          #39'255'#39', '#39'http%3A%2F%2Fblogs.embarcadero.com%2Fjtembarcadero%2F201' +
          '3%2F08%2F09%2Fits-alive-a-first-look-at-delphi-for-android%2F'#39', ' +
          #39'It%26%238217%3Bs+alive%21+A+first+look+at+Delphi+for+Android'#39');' +
          ' return false;" title="Post to del.icio.us, etc." id="akst_link_' +
          '255" class="akst_share_link" rel="nofollow">Share This</a> | <a ' +
          'href="mailto:?subject=It%26%238217%3Bs%20alive%21%20A%20first%20' +
          'look%20at%20Delphi%20for%20Android&body=Have you seen this? http' +
          '%3A%2F%2Fblogs.embarcadero.com%2Fjtembarcadero%2F2013%2F08%2F09%' +
          '2Fits-alive-a-first-look-at-delphi-for-android%2F" id="akst_emai' +
          'l_255" class="akst_share_email" rel="nofollow">Email this page t' +
          'o a friend</a></p><br><p class="postfoot">posted @ Fri, 09 Aug 2' +
          '013 22:21:05 +0000 by J T</p></div><hr><div><h3><a id="RecentPos' +
          'ts__ct4_Hyperlink2" href="http://blogs.embarcadero.com/matthiase' +
          'issing/2013/08/08/38738/">Aktualisierte Roadmap zu Delphi, C++Bu'
        
          'ilder und RAD Studio</a></h3><p><img src="/files/2013/04/logodel' +
          'phi_8435.png" alt="" width="78" height="78" /></p>'
        
          '<p><span>Die Roadmap von Delphi / RAD Studio wurde aktualisiert:' +
          '</span><br />'
        
          '<a rel="nofollow nofollow" href="http://edn.embarcadero.com/arti' +
          'cle/42544">http://edn.embarcadero.com/article/42544</a><br />'
        
          '<span>Neu zB Aussagen zum iOS 7 Style, Android Style, mobile Baa' +
          'S Support, C++ Android/iOS, Windows 8 RT/ARM und Linux Support, ' +
          '&#8230;.<br />'
        '</span></p>'
        
          '<p class="akst_link"><a href="http://blogs.embarcadero.com/matth' +
          'iaseissing/?p=38738&amp;akst_action=share-this" onclick="akst_sh' +
          'are('#39'38738'#39', '#39'http%3A%2F%2Fblogs.embarcadero.com%2Fmatthiaseissi' +
          'ng%2F2013%2F08%2F08%2F38738%2F'#39', '#39'Aktualisierte+Roadmap+zu+Delph' +
          'i%2C+C%2B%2BBuilder+und+RAD+Studio'#39'); return false;" title="Post' +
          ' to del.icio.us, etc." id="akst_link_38738" class="akst_share_li' +
          'nk" rel="nofollow">Share This</a> | <a href="mailto:?subject=Akt' +
          'ualisierte%20Roadmap%20zu%20Delphi%2C%20C%2B%2BBuilder%20und%20R' +
          'AD%20Studio&body=Have you seen this? http%3A%2F%2Fblogs.embarcad' +
          'ero.com%2Fmatthiaseissing%2F2013%2F08%2F08%2F38738%2F" id="akst_' +
          'email_38738" class="akst_share_email" rel="nofollow">Email this ' +
          'page to a friend</a></p><br><p class="postfoot">posted @ Thu, 08' +
          ' Aug 2013 15:23:32 +0000 by <a id="RecentPosts__ctl0_Hyperlink3"' +
          ' class="clsSubText" href="http://blogs.embarcadero.com/matthiase' +
          'issing/">Matthias Eissing</a></p></div><hr><div><h3><a id="Recen' +
          'tPosts__ct5_Hyperlink2" href="http://blogs.embarcadero.com/david'
        
          'i/2013/08/07/42821/">Delphi XE4 iOS Development - feedback from ' +
          'a developer</a></h3><p>Brent Dwayne recently wrote a blog post, ' +
          '"<a href="http://tndelphifan.blogspot.com/2013/07/delphi-xe4-ios' +
          '-development.html">Delphi XE4 iOS Development</a>", where he tal' +
          'ked about his choice to purchase Delphi XE4, the mobile addon pa' +
          'ck and one year maintence.  It is always great to get feedback a' +
          'nd suggestions from our customers.  Brent&#8217;s post provided ' +
          'really good information and advice for mobile developers and als' +
          'o for us internally.  Whenever I read articles from developers, ' +
          'like Brent&#8217;s, I always forward them inside our company.  O' +
          'ne of the great things about the developer community is they are' +
          ' not shy and will always speak their minds 24&#215;7 whatever th' +
          'e conversation, suggestion or issue is.  Thank you Brent.  Here ' +
          'are few quotes from the blog post that caught my eye.</p>'
        
          '<p>"I recently bought Delphi XE 4 Professional with the Mobile A' +
          'dd-On.  I also purchased the Support &amp; Maintenance so I woul' +
          'd get upgrades for 1 year.  I plan on continuing to purchase the' +
          ' Support &amp; Maintenance to keep current."</p>'
        
          '<p>"I am happy to report that XE 4 does a much better job.  Whil' +
          'e the controls are not the native iOS SDK controls, they functio' +
          'n and look almost identical.  There are a few missing features. ' +
          ' For example in the TListbox and TListView, there is no swipe to' +
          ' delete.  There is no way to move list items by touch like the n' +
          'ative control either.  I test my applications with an iPhone 4. ' +
          ' With XE 2, list scrolling not smooth at all on the device.  Wit' +
          'h XE 4, applications produced have no problem scrolling through ' +
          'a list with several hundred items in TListview."</p>'
        
          '<p>For full iOS native control support, Delphi developers also h' +
          'ave the option to use TMS Software&#8217;s "TMS ICL" component s' +
          'et that works within FireMonkey forms. ICL offers "No compromise' +
          's: 100% iOS performance, 100% iOS look, 100% iOS feel components' +
          '".  You can read more about ICL at <a href="http://www.tmssoftwa' +
          're.com/site/tmsicl.asp">http://www.tmssoftware.com/site/tmsicl.a' +
          'sp</a>.  ICL is part of TMS Software&#8217;s <a href="http://www' +
          '.tmssoftware.com/site/tmsfmxstudio.asp">TMS Component Studio for' +
          ' iOS</a>.</p>'
        
          '<p>In the blog post, Brent also has a few comments about cost an' +
          'd pricing (something that I am not directly responsible for, but' +
          ' I do pass the feedback on to the product owners in Product Mana' +
          'gement):  "I have a few complaints.  First, the initial cost is ' +
          'very high for a new user.  As of July 24th 2013, Delphi XE 4 wit' +
          'h Mobile Add-On and Support and Maintenance is $1983.00 USD.  I ' +
          'was able to upgrade from XE 3 Professional for $798.00 USD in Ju' +
          'ne.  Embarcadero had a special price for the Mobile Add-On at th' +
          'e time.  Another minus is applications created with Firemonkey c' +
          'ontrols run slower on my iPhone 4 than those produced with nativ' +
          'e controls.  Thankfully, faster iOS devices such as iPad 2 don&#' +
          '8217;t have this problem."</p>'
        
          '<p>Regarding total cost, each developer can choose to add mainte' +
          'nance or to wait for specific releases.  I should add that addin' +
          'g maintenance is a one time upfront cost and if you do the cost ' +
          'calculation over time (with the renewal price less than upgrade ' +
          'price) and more frequent releases tied to the increased pace of ' +
          'technology additions, especially with the pace of new mobile dev' +
          'ices and platform releases, you might find a cost savings.  I wi' +
          'll let each individual do the math that fits their planning.  Re' +
          'garding speed and size of iOS apps - the team is constantly focu' +
          'sed on performance improvements.  Using the ListView instead of ' +
          'ListBox has performance gains when dealing with longer lists (fo' +
          'r example, customers in a database).  It would be great to see s' +
          'pecific examples of code and data and performance times.  We are' +
          ' testing on a wide range of iOS devices internally including iPh' +
          'one (3GS, 4, 4S and 5), iPad/iPad Mini and iPod Touch 4th Genera' +
          'tion and higher.</p>'
        
          '<p>Brent also writes "Delphi definitely has an advantages over o' +
          'ther competing products.  For a beginning programmer, the langua' +
          'ge is definitely easier to learn than Objective-C.  Also, you ca' +
          'n create an application capable of doing much more with a lot le' +
          'ss code thanks to the FMX component library and third-party tool' +
          's like those by TMS Software."</p>'
        
          '<p>Brent ends his blog post by saying "Overall, I can definitely' +
          ' recommend Delphi XE 4 for developers that want to create iOS ap' +
          'plications and don&#8217;t mind spending some money.  To me the ' +
          'ability to create iOS applications without using XCode in a shor' +
          't amount of time is definitely worth the investment.  I strongly' +
          ' recommend Support &amp; Maintenance because Android support wil' +
          'l be coming in the next release later this year."</p>'
        
          '<p>Brent&#8217;s comments about Support and Maintenance tie nice' +
          'ly with a promotion we are running right now, "<a href="http://w' +
          'ww.embarcadero.com/radoffer">6 Months Support &amp; Maintenance ' +
          'Free on select new user products</a>".  You can find all the det' +
          'ails at <a href="http://www.embarcadero.com/radoffer">http://www' +
          '.embarcadero.com/radoffer</a>. Get free updates, upgrades and su' +
          'pport for six months when you purchase select RAD Studio XE4 and' +
          ' Delphi XE4 New User products. Check out our <a href="http://edn' +
          '.embarcadero.com/article/42544">roadmap</a> to see the exciting ' +
          'new product features that are planned. Offer available July 22 t' +
          'hrough August 31, 2013.  Buy now and not only will you get the n' +
          'ext 6 months of updates and major upgrades free, but you&#8217;l' +
          'l also get priority access into our Android beta program!</p>'
        
          '<p>Thank you Brent for the post and great feedback.  Everyone ca' +
          'n read his complete blog post at <a href="http://tndelphifan.blo' +
          'gspot.com/2013/07/delphi-xe4-ios-development.html">http://tndelp' +
          'hifan.blogspot.com/2013/07/delphi-xe4-ios-development.html</a>.<' +
          '/p>'
        
          '<p class="akst_link"><a href="http://blogs.embarcadero.com/david' +
          'i/?p=42821&amp;akst_action=share-this" onclick="akst_share('#39'4282' +
          '1'#39', '#39'http%3A%2F%2Fblogs.embarcadero.com%2Fdavidi%2F2013%2F08%2F0' +
          '7%2F42821%2F'#39', '#39'Delphi+XE4+iOS+Development+-+feedback+from+a+dev' +
          'eloper'#39'); return false;" title="Post to del.icio.us, etc." id="a' +
          'kst_link_42821" class="akst_share_link" rel="nofollow">Share Thi' +
          's</a> | <a href="mailto:?subject=Delphi%20XE4%20iOS%20Developmen' +
          't%20-%20feedback%20from%20a%20developer&body=Have you seen this?' +
          ' http%3A%2F%2Fblogs.embarcadero.com%2Fdavidi%2F2013%2F08%2F07%2F' +
          '42821%2F" id="akst_email_42821" class="akst_share_email" rel="no' +
          'follow">Email this page to a friend</a></p><br><p class="postfoo' +
          't">posted @ Wed, 07 Aug 2013 15:49:52 +0000 by <a id="RecentPost' +
          's__ctl0_Hyperlink3" class="clsSubText" href="http://blogs.embarc' +
          'adero.com/davidi/">David Intersimone</a></p></div><hr><div><h3><' +
          'a id="RecentPosts__ct6_Hyperlink2" href="http://blogs.embarcader' +
          'o.com/vsevolodleonov/2013/08/07/secr201/">Delphi must'#8230'</a></h3>'
        '<'
        'p><strong>'#1059#1074#1072#1078#1072#1077#1084#1099#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080' Delphi!</strong></p>'
        
          '<p>'#1054#1073#1088#1072#1097#1072#1102#1089#1100' '#1082' '#1074#1072#1084' '#1089' '#1087#1088#1086#1089#1100#1073#1086#1081' '#1087#1088#1086#1075#1086#1083#1086#1089#1086#1074#1072#1090#1100' '#1079#1072' <a href="http://2' +
          '013.secr.ru/lang/ru/submitted-presentations/delphi-xe5-multi-pla' +
          'tform-development-tool-for-android-ios-windows-and-macos-on-the-' +
          'same-codebase">'#1084#1086#1081' '#1076#1086#1082#1083#1072#1076' '#1085#1072' '#1082#1086#1085#1092#1077#1088#1077#1085#1094#1080#1080' SECR</a>.</p>'
        
          '<p>'#1055#1088#1086#1075#1088#1072#1084#1084#1085#1099#1081' '#1082#1086#1084#1080#1090#1077#1090' '#1074#1099#1089#1090#1072#1074#1080#1083' '#1076#1086#1089#1090#1072#1090#1086#1095#1085#1086' '#1087#1088#1086#1090#1080#1074#1086#1088#1077#1095#1080#1074#1099#1077' '#1090#1088#1077#1073#1086#1074 +
          #1072#1085#1080#1103' '#1082' '#1076#1086#1082#1083#1072#1076#1072#1084'. '#1054#1076#1085#1080#1084' '#1080#1079' '#1091#1089#1083#1086#1074#1080#1081' '#1087#1088#1077#1076#1089#1090#1072#1074#1083#1077#1085#1080#1103' '#1076#1086#1082#1083#1072#1076#1072' '#1103#1074#1083#1103#1077#1090#1089#1103 +
          ' '#1093#1086#1088#1086#1096#1080#1081' '#1091#1088#1086#1074#1077#1085#1100' '#1080#1085#1090#1077#1088#1077#1089#1072' ('#1085#1077#1089#1083#1086#1078#1085#1086' '#1076#1086#1075#1072#1076#1072#1090#1100#1089#1103'). '#1055#1088#1086#1096#1091' '#1087#1086#1089#1090#1072#1074#1080#1090#1100 +
          ' Like.</p>'
        
          '<p>'#1055#1086#1095#1077#1084#1091' '#1074#1089#1090#1072#1083#1072' '#1090#1072#1082#1072#1103' '#1087#1088#1086#1073#1083#1077#1084#1072'? '#1057' '#1086#1076#1085#1086#1081' '#1089#1090#1086#1088#1086#1085#1099', '#1076#1086#1082#1083#1072#1076' '#1076#1086#1083#1078#1077#1085' ' +
          #1073#1099#1090#1100' "'#1085#1072#1091#1082#1086#1086#1073#1088#1072#1079#1085#1099#1081'" '#1076#1083#1103' '#1086#1090#1073#1086#1088#1072' '#1085#1072' '#1091#1088#1086#1074#1085#1077' '#1087#1088#1086#1075#1088#1072#1084#1084#1085#1086#1075#1086' ('#1085#1072#1091#1095#1085#1086#1075#1086 +
          ') '#1082#1086#1084#1080#1090#1077#1090#1072'. '#1057' '#1076#1088#1091#1075#1086#1081' - '#1076#1086#1089#1090#1072#1090#1086#1095#1085#1086' "'#1087#1086#1087#1089#1086#1074#1099#1084'", '#1095#1090#1086#1073#1099' '#1085#1072' '#1085#1077#1075#1086' '#1087#1088#1086#1075 +
          #1086#1083#1086#1089#1086#1074#1072#1083#1072' '#1086#1073#1097#1077#1089#1090#1074#1077#1085#1085#1086#1089#1090#1100'. '#1071' '#1087#1086#1076#1072#1074#1072#1083' "'#1085#1072#1091#1082#1086#1086#1073#1088#1072#1079#1085#1086'", '#1090'.'#1082'. '#1085#1077' '#1079#1085#1072#1083 +
          ' '#1087#1088#1086' '#1075#1086#1083#1086#1089#1086#1074#1072#1085#1080#1077'. '#1057#1084#1099#1089#1083' '#1076#1086#1082#1083#1072#1076#1072' '#1085#1077' '#1080#1079#1084#1077#1085#1103#1077#1090#1089#1103', '#1083#1080#1096#1100' '#1086#1073#1086#1083#1086#1095#1082#1072', '#1092#1072 +
          #1085#1090#1080#1082', GUI  '#1080' '#1090'.'#1076'. '#1045#1089#1090#1100' '#1080' "'#1087#1086#1087#1089#1086#1074#1099#1081'" '#1074#1072#1088#1080#1072#1085#1090', '#1090#1086#1083#1100#1082#1086' '#1085#1072' '#1089#1072#1081#1090#1077' '#1085#1077#1083 +
          #1100#1079#1103' '#1086#1087#1091#1073#1083#1080#1082#1086#1074#1072#1090#1100' '#1080' '#1090#1086', '#1080' '#1090#1086':</p>'
        '<p><em>'#1053#1072#1079#1074#1072#1085#1080#1077'</em></p>'
        
          '<p><strong>'#1041#1099#1089#1090#1088#1072#1103' '#1088#1072#1079#1088#1072#1073#1086#1090#1082#1072' ?'#1085#1072#1090#1080#1074#1085#1099#1093'? '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1081' '#1076#1083#1103' iOS '#1080' An' +
          'droid '#1085#1072' '#1086#1089#1085#1086#1074#1077' '#1077#1076#1080#1085#1086#1075#1086' '#1082#1086#1076#1072' '#1080#1083#1080' '#1074#1090#1086#1088#1086#1077' '#1088#1086#1078#1076#1077#1085#1080#1077' Delphi</strong>' +
          '</p>'
        '<p><em>'#1040#1085#1085#1086#1090#1072#1094#1080#1103'</em></p>'
        
          '<p><!--[if gte mso 9]&gt; Normal   0               false   false' +
          '   false      RU   X-NONE   X-NONE                              ' +
          '                       MicrosoftInternetExplorer4 &lt;![endif]--' +
          '></p>'
        
          '<p>'#1044#1074#1077' '#1089#1072#1084#1099#1093' '#1087#1086#1087#1091#1083#1103#1088#1085#1099#1093' '#1087#1083#1072#1090#1092#1086#1088#1084#1099' iOS '#1080' Android '#1076#1072#1102#1090' '#1079#1085#1072#1095#1080#1090#1077#1083#1100#1085#1099 +
          #1081' '#1096#1072#1085#1089' '#1088#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082#1072#1084' '#1087#1088#1086#1103#1074#1080#1090#1100' '#1089#1077#1073#1103' '#1074' '#1084#1086#1073#1080#1083#1100#1085#1086#1084' '#1084#1080#1088#1077'. '#1042#1079#1088#1099#1074#1086#1087#1086#1076#1086#1073 +
          #1085#1099#1081' '#1088#1086#1089#1090' '#1087#1086#1087#1091#1083#1103#1088#1085#1086#1089#1090#1080' '#1084#1086#1073#1080#1083#1100#1085#1099#1093' '#1089#1080#1089#1090#1077#1084' '#1087#1086#1079#1074#1086#1083#1103#1102#1090' '#1082#1072#1082' '#1085#1072#1095#1080#1085#1072#1102#1097#1080#1084' ' +
          #1088#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082#1072#1084', '#1090#1072#1082' '#1080' '#1091#1078#1077' '#1089#1083#1086#1078#1080#1074#1096#1080#1084#1089#1103' '#1087#1088#1086#1092#1077#1089#1089#1080#1086#1085#1072#1083#1072#1084' '#1082#1072#1082' '#1084#1080#1085#1080#1084#1091#1084' ' +
          #1087#1086#1083#1091#1095#1080#1090#1100' '#1096#1080#1088#1086#1095#1072#1081#1096#1077#1077' '#1087#1088#1080#1079#1085#1072#1085#1080#1077'. '#1047#1072#1076#1072#1095#1072' '#1084#1072#1082#1089#1080#1084#1091#1084' - '#1089#1090#1072#1090#1100' '#1085#1077#1079#1072#1074#1080#1089#1080#1084 +
          #1099#1084' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1086#1084' '#1055#1054'. '#1057#1086#1074#1088#1077#1084#1077#1085#1085#1072#1103' '#1074#1077#1088#1089#1080#1103' Delphi '#1087#1086#1079#1074#1086#1083#1103#1077#1090' '#1087#1088#1086#1075#1088#1072#1084#1084#1080 +
          #1089#1090#1072#1084' '#1083#1102#1073#1086#1075#1086' '#1091#1088#1086#1074#1085#1103' '#1073#1091#1082#1074#1072#1083#1100#1085#1086' '#1074' '#1089#1095#1080#1090#1072#1085#1085#1099#1077' '#1076#1085#1080' '#1089#1086#1079#1076#1072#1090#1100' '#1101#1092#1092#1077#1082#1090#1080#1074#1085#1099#1081 +
          ' '#1084#1086#1073#1080#1083#1100#1085#1099#1081' '#1087#1088#1086#1077#1082#1090', '#1076#1083#1103' '#1101#1090#1086#1075#1086' '#1085#1077' '#1085#1091#1078#1085#1072' '#1085#1080' Java, '#1085#1080' Objective-C. '#1041 +
          #1086#1083#1077#1077' '#1090#1086#1075#1086', '#1086#1076#1080#1085' '#1080' '#1090#1086#1090' '#1078#1077' '#1080#1089#1093#1086#1076#1085#1099#1081' '#1082#1086#1076' '#1083#1077#1075#1082#1086' '#1087#1088#1077#1086#1073#1088#1072#1079#1091#1077#1090#1089#1103' '#1074' '
        
          '?'#1085#1072#1090#1080#1074#1085#1086#1077'? '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1077' '#1082#1072#1082' '#1076#1083#1103' iOS, '#1090#1072#1082' '#1080' Android. '#1069#1090#1086' '#1073#1091#1076#1077#1090' '#1085#1077#1079#1072 +
          #1073#1099#1074#1072#1077#1084#1072#1103' '#1080#1085#1090#1077#1088#1072#1082#1090#1080#1074#1085#1072#1103' '#1089#1077#1089#1089#1080#1103' '#1089' '#1082#1086#1085#1082#1088#1077#1090#1085#1099#1084#1080' '#1087#1088#1080#1084#1077#1088#1072#1084#1080' '#1074' '#1088#1077#1078#1080#1084#1077' r' +
          'eality-show!</p>'
        
          '<p><a href="/files/2013/08/devsleep_9208.jpg"><img src="/files/2' +
          '013/08/devsleep_9208.jpg" alt="" width="372" height="360" /></a>' +
          '</p>'
        
          '<p>'#1045#1089#1083#1080' '#1087#1086#1087#1072#1076#1072#1102' ('#1074#1072#1096#1080#1084#1080' '#1091#1089#1080#1083#1080#1103#1084#1080') '#1085#1072' '#1082#1086#1085#1092#1077#1088#1077#1085#1094#1080#1102' - '#1089' '#1084#1077#1085#1103' '#1073#1086#1083#1100#1096#1086 +
          #1081' '#1082#1088#1072#1089#1080#1074#1099#1081' '#1076#1077#1090#1072#1083#1100#1085#1099#1081' '#1086#1073#1079#1086#1088' '#1076#1086#1082#1083#1072#1076#1086#1074'. '#1050#1072#1082#1086#1074#1099' '#1090#1072#1084' '#1090#1088#1077#1085#1076#1099' '#1074' '#1086#1073#1083#1072#1089#1090#1080 +
          ' IT, '#1087#1088#1080#1095#1077#1084' '#1089' '#1085#1072#1091#1095#1085#1099#1084' '#1091#1082#1083#1086#1085#1086#1084'. '#1053#1072#1076#1077#1102#1089#1100' '#1085#1072' '#1074#1072#1089'!</p>'
        
          '<p><!--[if gte mso 9]&gt; &lt;![endif]--><!--[if gte mso 10]&gt;' +
          ' &lt;!   /* Style Definitions */  table.MsoNormalTable '#9'{mso-sty' +
          'le-name:"Table Normal"; '#9'mso-tstyle-rowband-size:0; '#9'mso-tstyle-' +
          'colband-size:0; '#9'mso-style-noshow:yes; '#9'mso-style-priority:99; '#9 +
          'mso-style-qformat:yes; '#9'mso-style-parent:""; '#9'mso-padding-alt:0c' +
          'm 5.4pt 0cm 5.4pt; '#9'mso-para-margin:0cm; '#9'mso-para-margin-bottom' +
          ':.0001pt; '#9'mso-pagination:widow-orphan; '#9'font-size:11.0pt; '#9'font' +
          '-family:"Calibri","sans-serif"; '#9'mso-ascii-font-family:Calibri; ' +
          #9'mso-ascii-theme-font:minor-latin; '#9'mso-fareast-font-family:"Tim' +
          'es New Roman"; '#9'mso-fareast-theme-font:minor-fareast; '#9'mso-hansi' +
          '-font-family:Calibri; '#9'mso-hansi-theme-font:minor-latin; '#9'mso-bi' +
          'di-font-family:"Times New Roman"; '#9'mso-bidi-theme-font:minor-bid' +
          'i;} --> <!--[endif] --></p>'
        
          '<p class="akst_link"><a href="http://blogs.embarcadero.com/vsevo' +
          'lodleonov/?p=1346&amp;akst_action=share-this" onclick="akst_shar' +
          'e('#39'1346'#39', '#39'http%3A%2F%2Fblogs.embarcadero.com%2Fvsevolodleonov%2' +
          'F2013%2F08%2F07%2Fsecr201%2F'#39', '#39'Delphi+must%26%238230%3B'#39'); retu' +
          'rn false;" title="Post to del.icio.us, etc." id="akst_link_1346"' +
          ' class="akst_share_link" rel="nofollow">Share This</a> | <a href' +
          '="mailto:?subject=Delphi%20must%26%238230%3B&body=Have you seen ' +
          'this? http%3A%2F%2Fblogs.embarcadero.com%2Fvsevolodleonov%2F2013' +
          '%2F08%2F07%2Fsecr201%2F" id="akst_email_1346" class="akst_share_' +
          'email" rel="nofollow">Email this page to a friend</a></p><br><p ' +
          'class="postfoot">posted @ Wed, 07 Aug 2013 14:20:40 +0000 by Vse' +
          'volod Leonov</p></div><hr><div><h3><a id="RecentPosts__ct7_Hyper' +
          'link2" href="http://delphi-insider.blogspot.com/2013/08/webinar-' +
          'data-visualization-in-multi.html">Webinar: Data Visualization in' +
          ' Multi-Device Apps with RAD Studio</a></h3>We have a great new w' +
          'ebinar coming up August 14 that you won'#39't want to miss. Register' +
          ' '
        
          'now!<br /><br /><img alt="Seeing is Believing - Register Now" he' +
          'ight="141" src="http://img.en25.com/EloquaImages/clients/Embarca' +
          'dero/%7B6116f93f-d082-4d8d-8319-13f821307147%7D_RADInAction_Data' +
          'VisualizationWebinar_680x150_cta.jpg" width="640" /><br /><br />' +
          '<span class="remove-absolute"><span style="font-size: 14px;">You' +
          #8217're invited to join Embarcadero and Delphi expert Ray Konopka to' +
          ' learn about data visualization in a new RAD in Action technical' +
          ' webinar:</span><br /><span style="font-size: 14px;"><br /></spa' +
          'n></span><br /><div align="center"><span class="remove-absolute"' +
          '><span style="color: #1632e3; font-weight: bold;"><span style="f' +
          'ont-size: 20px;"><b><a href="http://embt.co/DataViz814" style="c' +
          'olor: #0072bc; text-decoration: none;">Data Visualization in Mul' +
          'ti-Device Apps with RAD Studio</a></b></span></span></span></div' +
          '><div align="center"><span class="remove-absolute"><span style="' +
          'color: #1632e3; font-weight: bold;"><span style="font-size: 20px' +
          ';"><br /></span></span></span></div><div align="center"><span c'
        'l'
        
          'ass="remove-absolute"><span style="font-size: 14px;">Conveying t' +
          'he meaning of data quickly and concisely is a focal point of tod' +
          'ay'#39's applications. This is especially true for mobile devices wh' +
          'ere real-estate and user attention are in short supply. Delphi/C' +
          '++ and the FM Application Platform, along with native code perfo' +
          'rmance, provide the tools necessary to create vibrant, informati' +
          'on rich displays.</span></span></div><div align="center"><span c' +
          'lass="remove-absolute"><span style="font-size: 14px;"><br /></sp' +
          'an></span></div><div align="center"><span class="remove-absolute' +
          '"><span style="font-size: 14px;"><b>Wednesday, August 14, 2013</' +
          'b></span></span><br /><span class="remove-absolute">6AM PDT / 8A' +
          'M CDT / 9AM EDT</span><br /><span class="remove-absolute">11AM P' +
          'DT / 1PM CDT / 2PM EDT</span><br /><span class="remove-absolute"' +
          '>5PM PDT / 7PM CDT / 8PM EDT</span></div><div align="center"><sp' +
          'an class="remove-absolute"><br /></span></div><div align="center' +
          '"><div style="background-color: white; font-family: Arial; font-'
        
          'size: 12px; line-height: 18px;"><span class="remove-absolute"><s' +
          'pan style="color: #0072bc; font-size: 14px; font-weight: bold;">' +
          '<a href="http://embt.co/DataViz814" style="color: #0072bc; text-' +
          'decoration: none;" title="Register Now"><img alt="Register Now" ' +
          'src="http://img.en25.com/EloquaImages/clients/Embarcadero/%7B6f5' +
          'e455f-945a-475f-90e4-351328ad9aee%7D_RegNow_Normal.png" style="b' +
          'order: none;" title="Register Now" /></a></span></span></div></d' +
          'iv><div><br /></div><b>About the presenter: </b><br />Ray Konopk' +
          'a is the creator of Raize Components and CodeSite, the award win' +
          'ning products from Raize Software, which he founded in 1995. Ray' +
          ' is also the author of the highly acclaimed Developing Custom De' +
          'lphi Components books and has published numerous articles on sof' +
          'tware development. Ray specializes in user interface design and ' +
          'custom component development. An engaging presenter, Ray is an E' +
          'mbarcadero MVP and a frequent speaker at developer conferences<b' +
          'r><p class="postfoot">posted @ Mon, 05 Aug 2013 09:31:00 +0000 b'
        
          'y Tim Del Chiaro</p></div><hr><div><div style="float: left; heig' +
          'ht: 100px; margin-right: 10px;"><img src="https://secure.gravata' +
          'r.com/avatar/08d2b220263764768f5e882aab472d3b?r=g&d=https%3a%2f%' +
          '2fstatic.codegear.com%2fimages%2fno_avatar.jpg&s=50" alt="" bord' +
          'er="0"></div>'
        
          '<h3><a id="RecentPosts__ct8_Hyperlink2" href="http://feedproxy.g' +
          'oogle.com/~r/DelphiDotOrg/~3/J8dz1LfcpCc/">Sum(Programming Langu' +
          'ages) > 0</a></h3>A Zero-sum game is a situation where for one c' +
          'ontestant to win or gain, the other contestants must lose or hav' +
          'e a loss. Thus for contestant A to have a +5 then contestant B m' +
          'ust have a -5, resulting in &#8230;<p class="read-more"><a href=' +
          '"http://delphi.org/2013/08/programming-languages-not-0-sum/">Rea' +
          'd more &#187;</a></p><br><p class="postfoot">posted @ Fri, 02 Au' +
          'g 2013 13:32:43 +0000 by Jim McKeeth</p></div><hr><div><h3><a id' +
          '="RecentPosts__ct9_Hyperlink2" href="http://blogs.embarcadero.co' +
          'm/vsevolodleonov/2013/08/02/whyumlru/">'#1047#1072#1095#1077#1084' UML</a></h3><p>Engl' +
          'ish version will go soon</p>'
        
          '<p><span style="color: #808080"><em>'#1052#1072#1083#1077#1085#1100#1082#1072#1103' '#1087#1088#1080#1089#1082#1072#1079#1082#1072' - '#1074' '#1082#1086#1084#1087 +
          #1072#1085#1080#1080' "'#1043#1072#1088#1072#1085#1090'" '#1080#1089#1087#1086#1083#1100#1079#1091#1077#1090#1089#1103' Delphi. '#1050#1072#1082' '#1086#1073#1099#1095#1085#1086', '#1088#1072#1079#1075#1086#1074#1086#1088#1099' '#1085#1072#1095#1072#1083#1080#1089 +
          #1100' "'#1082#1072#1082' '#1091' '#1074#1072#1089', '#1072' '#1095#1090#1086' '#1076#1077#1083#1072#1077#1090#1077', '#1072' '#1082#1072#1082'"? '#1043#1086#1074#1086#1088#1080#1083#1080', '#1082#1086#1085#1077#1095#1085#1086', '#1086' Delphi' +
          ', '#1085#1086' '#1074#1076#1088#1091#1075' "'#1074#1089#1087#1083#1099#1083#1072'" '#1090#1077#1084#1072', '#1080#1085#1090#1077#1088#1077#1089#1086#1074#1072#1074#1096#1072#1103' '#1085#1077' '#1090#1086#1083#1100#1082#1086' '#1084#1077#1085#1103', '#1085#1086' '#1080' '#1096 +
          #1080#1088#1086#1082#1080#1081' '#1082#1088#1091#1075' IT-'#1089#1087#1077#1094#1080#1072#1083#1080#1089#1090#1086#1074'. '#1069#1090#1086' - '#1087#1088#1072#1082#1090#1080#1095#1077#1089#1082#1086#1077' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1077' UM' +
          'L. '#1054#1073' '#1101#1090#1086#1084' '#1089#1077#1075#1086#1076#1085#1103' '#1080' '#1087#1086#1075#1086#1074#1086#1088#1080#1084' '#1089' '#1101#1082#1089#1087#1077#1088#1090#1072#1084#1080' - '#1076#1077#1081#1089#1090#1074#1091#1102#1097#1080#1084#1080' '#1088#1072#1079#1088#1072 +
          #1073#1086#1090#1095#1080#1082#1072#1084#1080'. '#1054#1085#1080' '#1085#1077' '#1087#1080#1096#1091#1090' '#1091#1095#1077#1073#1085#1080#1082#1086#1074' '#1087#1086' UML ('#1074#1086' '#1074#1089#1103#1082#1086#1084' '#1089#1083#1091#1095#1072#1077', '#1087#1086#1082#1072 +
          '), '#1085#1086' '#1086#1085#1080' '#1088#1077#1072#1083#1100#1085#1086' '#1087#1088#1080#1084#1077#1085#1103#1102#1090' '#1077#1075#1086'&#8230; '#1082#1072#1078#1076#1099#1081' '#1076#1077#1085#1100' '#1080' '#1089' '#1084#1072#1082#1089#1080#1084#1072#1083#1100 +
          #1085#1086#1081', '#1085#1072' '#1084#1086#1081' '#1074#1079#1075#1083#1103#1076', '#1101#1092#1092#1077#1082#1090#1080#1074#1085#1086#1089#1090#1100#1102'.</em></span></p>'
        
          '<p><strong>'#1042#1089#1077#1074#1086#1083#1086#1076' '#1051#1077#1086#1085#1086#1074'</strong> - '#1084#1077#1085#1077#1076#1078#1077#1088' '#1087#1086' '#1087#1088#1086#1076#1091#1082#1090#1072#1084', <a ' +
          'href="http://www.embarcadero.com">Embarcadero</a>.</p>'
        
          '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088' '#1051#1102#1083#1080#1085'</strong> - '#1074#1077#1076#1091#1097#1080#1081' '#1088#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082', <a hr' +
          'ef="http://www.garant.ru">?'#1043#1072#1088#1072#1085#1090'?</a></p>'
        
          '<p><strong>'#1052#1072#1082#1089#1080#1084' '#1050#1088#1099#1083#1086#1074'</strong> - '#1088#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100' '#1087#1088#1086#1077#1082#1090#1072', <a hre' +
          'f="http://www.garant.ru">?'#1043#1072#1088#1072#1085#1090'?</a></p>'
        
          '<p>'#1050#1086#1084#1087#1072#1085#1080#1103' ?'#1043#1072#1088#1072#1085#1090'? '#1080#1079#1074#1077#1089#1090#1085#1072' '#1084#1085#1086#1075#1080#1084' '#1088#1086#1089#1089#1080#1081#1089#1082#1080#1084' IT-'#1089#1087#1077#1094#1080#1072#1083#1080#1089#1090#1072#1084' ' +
          #1073#1083#1072#1075#1086#1076#1072#1088#1103' '#1089#1074#1086#1077#1084#1091' '#1082#1083#1102#1095#1077#1074#1086#1084#1091' '#1087#1088#1086#1076#1091#1082#1090#1091' - '#1089#1080#1089#1090#1077#1084#1077' '#1048#1055#1054' '#1043#1040#1056#1040#1053#1058'. '#1041#1086#1083#1100#1096#1072 +
          #1103' '#1095#1072#1089#1090#1100' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074' '#1082#1086#1084#1087#1072#1085#1080#1080' '#1079#1072#1085#1103#1090#1099' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086#1084' '#1055#1054', '#1072' '#1089#1072#1084#1072' '#1089#1080#1089 +
          #1090#1077#1084#1072' '#1080#1084#1077#1077#1090' 23-'#1083#1077#1090#1085#1102#1102' '#1080#1089#1090#1086#1088#1080#1102' '#1088#1072#1079#1074#1080#1090#1080#1103' '#1080' '#1085#1072#1089#1095#1080#1090#1099#1074#1072#1077#1090' '#1076#1077#1089#1103#1090#1082#1080' '#1084#1080#1083#1083 +
          #1080#1086#1085#1086#1074' '#1089#1090#1088#1086#1082' '#1082#1086#1076#1072', '#1085#1072#1087#1080#1089#1072#1085#1085#1099#1093' '#1085#1072' '#1088#1072#1079#1083#1080#1095#1085#1099#1093' '#1103#1079#1099#1082#1072#1093' '#1087#1088#1086#1075#1088#1072#1084#1084#1080#1088#1086#1074#1072#1085#1080 +
          #1103'. '#1055#1088#1080' '#1090#1072#1082#1086#1084' '#1084#1072#1089#1096#1090#1072#1073#1077', '#1103#1079#1099#1082#1086#1074#1086#1081' '#1080' '#1090#1077#1093#1085#1086#1083#1086#1075#1080#1095#1077#1089#1082#1086#1081' '#1085#1077#1086#1076#1085#1086#1088#1086#1076#1085#1086#1089#1090#1103 +
          #1093', '#1074#1099#1089#1086#1082#1080#1093' '#1090#1077#1084#1087#1072#1093' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1072', '#1086#1095#1077#1085#1100' '#1078#1105#1089#1090#1082#1080#1093' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103#1093' '#1082' '#1089#1090#1072#1073 +
          #1080#1083#1100#1085#1086#1089#1090#1080' '#1090#1086#1083#1100#1082#1086' '#1087#1088#1080#1084#1077#1085#1077#1085#1080#1077' '#1089#1072#1084#1099#1093' '#1087#1077#1088#1077#1076#1086#1074#1099#1093' '#1090#1077#1093#1085#1086#1083#1086#1075#1080#1081' '#1084#1086#1078#1077#1090' '#1086#1073#1077#1089 +
          #1087#1077#1095#1080#1090#1100' '#1082#1072#1095#1077#1089#1090#1074#1086' '#1101#1074#1086#1083#1102#1094#1080#1086#1085#1080#1088#1091#1102#1097#1077#1081' '#1089#1080#1089#1090#1077#1084#1099'. '
        
          'UML '#1082#1072#1082' '#1089#1088#1077#1076#1089#1090#1074#1086' '#1084#1086#1076#1077#1083#1080#1088#1086#1074#1072#1085#1080#1103', '#1073#1077#1089#1089#1087#1086#1088#1085#1086', '#1103#1074#1083#1103#1077#1090#1089#1103' '#1086#1076#1085#1080#1084' '#1080#1079' '#1090#1072#1082 +
          #1080#1093' ?'#1087#1088#1086#1076#1074#1080#1085#1091#1090#1099#1093'? '#1087#1086#1076#1093#1086#1076#1086#1074', '#1087#1088#1080#1084#1077#1085#1077#1085#1080#1077' '#1082#1086#1090#1086#1088#1086#1075#1086' '#1074' '#1082#1086#1084#1087#1072#1085#1080#1080' ?'#1043#1072#1088#1072#1085 +
          #1090'? '#1086#1090#1083#1080#1095#1072#1077#1090#1089#1103' '#1074#1099#1089#1086#1082#1080#1084' '#1091#1088#1086#1074#1085#1077#1084' '#1072#1074#1090#1086#1084#1072#1090#1080#1079#1072#1094#1080#1080' '#1089#1086' '#1079#1085#1072#1095#1080#1090#1077#1083#1100#1085#1086#1081' '#1076#1086#1083#1077 +
          #1081' '#1091#1089#1080#1083#1077#1085#1080#1103' '#1077#1075#1086' '#1089#1080#1089#1090#1077#1084#1085#1086#1081' '#1088#1086#1083#1080'. '#1057#1077#1075#1086#1076#1085#1103' '#1089#1074#1086#1080#1084' '#1086#1087#1099#1090#1086#1084' '#1076#1077#1083#1103#1090#1089#1103' '#1074#1077#1076#1091 +
          #1097#1080#1081' '#1088#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082' '#1089#1080#1089#1090#1077#1084#1099' '#1043#1040#1056#1040#1053#1058' '#1040#1083#1077#1082#1089#1072#1085#1076#1088' '#1051#1102#1083#1080#1085' '#1080' '#1088#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100' '#1087#1088 +
          #1086#1077#1082#1090#1072' '#1052#1072#1082#1089#1080#1084' '#1050#1088#1099#1083#1086#1074'.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1056#1072#1089#1089#1082 +
          #1072#1078#1080#1090#1077', '#1073#1099#1083' '#1083#1080' '#1080#1079#1085#1072#1095#1072#1083#1100#1085#1086' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1077' UML '#1087#1088#1080#1085#1103#1090#1086' '#1074' '#1082#1072#1095#1077#1089#1090#1074#1077' '#1086#1076 +
          #1085#1086#1081' '#1080#1079' '#1089#1086#1089#1090#1072#1074#1083#1103#1102#1097#1077#1081' '#1087#1088#1086#1094#1077#1089#1089#1072' '#1088#1072#1079#1088#1072#1073#1086#1090#1082#1080'?</span></p>'
        
          '<p><strong>'#1052#1072#1082#1089#1080#1084'</strong>: '#1053#1077#1090', '#1082#1086#1085#1077#1095#1085#1086', '#1082#1086#1075#1076#1072' '#1084#1099' '#1087#1088#1080#1096#1083#1080' '#1074' '#1043#1072#1088#1072 +
          #1085#1090', '#1077#1075#1086' '#1077#1097#1077' '#1087#1086#1087#1088#1086#1089#1090#1091' '#1085#1077' '#1073#1099#1083#1086'. '#1053#1086', '#1082#1072#1078#1077#1090#1089#1103', '#1091#1078#1077' '#1074' 97-'#1084' '#1075#1086#1076#1091' '#1085#1072#1096' '#1084 +
          #1086#1083#1086#1076#1086#1081' '#1080' '#1090#1072#1083#1072#1085#1090#1083#1080#1074#1099#1081' '#1082#1086#1083#1083#1077#1075#1072' ('#1093#1086#1090#1103' '#1074' '#1090#1091' '#1087#1086#1088#1091' '#1084#1099' '#1074#1089#1077' '#1073#1099#1083#1080' '#1084#1086#1083#1086#1076#1099')' +
          ' '#1087#1088#1080#1085#1105#1089' '#1076#1080#1089#1082#1077#1090#1091' '#1089' '#1086#1076#1085#1080#1084' '#1080#1079' '#1087#1077#1088#1074#1099#1093' '#1080#1085#1089#1090#1088#1091#1084#1077#1085#1090#1086#1074' UML-'#1084#1086#1076#1077#1083#1080#1088#1086#1074#1072#1085#1080#1103 +
          '. '#1055#1088#1080#1084#1077#1088#1085#1086' '#1089' '#1101#1090#1086#1075#1086' '#1084#1086#1084#1077#1085#1090#1072' '#1084#1086#1078#1085#1086' '#1089#1095#1080#1090#1072#1090#1100', '#1095#1090#1086' '#1074#1085#1077#1076#1088#1077#1085#1080#1077' UML '#1074' '#1089#1090 +
          #1077#1085#1072#1093' ?'#1043#1072#1088#1072#1085#1090#1072'? '#1085#1072#1095#1072#1083#1086#1089#1100'. '#1054#1076#1085#1072#1082#1086', '#1076#1086' '#1077#1075#1086' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1103' '#1074' '#1086#1089#1085#1086#1074#1085#1099#1093 +
          ' '#1085#1072#1096#1080#1093' '#1087#1088#1086#1077#1082#1090#1072#1093', '#1090#1072#1082' '#1089#1082#1072#1079#1072#1090#1100' '#1074' '#1087#1088#1086#1084#1099#1096#1083#1077#1085#1085#1099#1093' '#1084#1072#1089#1096#1090#1072#1073#1072#1093', '#1087#1088#1086#1096#1083#1080' '#1077#1097 +
          #1077' '#1075#1086#1076#1099'.</p>'
        
          '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088'</strong>: '#1041#1086#1083#1077#1077' '#1090#1086#1075#1086', '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1077' UML '#1074#1085#1077 +
          #1076#1088#1103#1083#1086#1089#1100' '#1076#1086#1083#1075#1086' '#1080' '#1074' '#1085#1077#1089#1082#1086#1083#1100#1082#1086' '#1101#1090#1072#1087#1086#1074'. '#1055#1086' '#1084#1077#1088#1077' '#1088#1086#1089#1090#1072' '#1085#1072#1096#1080#1093' '#1088#1072#1079#1088#1072#1073#1086#1090 +
          #1086#1082' '#1080' '#1087#1086#1085#1080#1084#1072#1085#1080#1103', '#1095#1090#1086' '#1073#1077#1079' '#1101#1090#1086#1075#1086' '#1080#1085#1089#1090#1088#1091#1084#1077#1085#1090#1072' '#1077#1089#1090#1100' '#1088#1080#1089#1082' '#1085#1077' '#1089#1087#1088#1072#1074#1080#1090#1100#1089 +
          #1103' '#1089' '#1074#1089#1105' '#1091#1089#1083#1086#1078#1085#1103#1102#1097#1077#1081#1089#1103' '#1089#1090#1088#1091#1082#1090#1091#1088#1086#1081' '#1082#1086#1076#1072' '#1080' '#1074#1085#1091#1090#1088#1077#1085#1085#1077#1081' '#1072#1088#1093#1080#1090#1077#1082#1090#1091#1088#1086#1081' ' +
          #1087#1088#1086#1077#1082#1090#1086#1074'.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1053#1077' '#1073#1099 +
          #1083#1086' '#1083#1080' ?'#1080#1076#1077#1086#1083#1086#1075#1080#1095#1077#1089#1082#1080#1093' '#1088#1072#1079#1085#1086#1075#1083#1072#1089#1080#1081'?? '#1045#1089#1090#1100' '#1088#1072#1079#1085#1099#1077' '#1089#1090#1080#1083#1080' '#1082#1086#1076#1080#1088#1086#1074#1072#1085#1080 +
          #1103', '#1085#1077' '#1087#1086#1083#1091#1095#1072#1083#1086#1089#1100' '#1083#1080' '#1090#1072#1082', '#1095#1090#1086' ?'#1091' '#1082#1072#1078#1076#1086#1075#1086' '#1089#1074#1086#1081' UML?? '#1048#1083#1080' UML ?'#1087#1088#1080#1095 +
          #1105#1089#1099#1074#1072#1077#1090' '#1074#1089#1077#1093' '#1087#1086#1076' '#1086#1076#1085#1091' '#1075#1088#1077#1073#1105#1085#1082#1091'??</span></p>'
        
          '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088'</strong>: '#1050#1086#1085#1077#1095#1085#1086', '#1073#1099#1083#1080' '#1088#1072#1079#1085#1086#1075#1083#1072#1089#1080#1103'. '#1048' '#1082#1072#1082' ' +
          #1088#1072#1079' '#1074' '#1080#1076#1077#1086#1083#1086#1075#1080#1095#1077#1089#1082#1086#1081' '#1086#1089#1085#1086#1074#1077' '#1074#1085#1077#1076#1088#1077#1085#1080#1103' '#1080' '#1073#1099#1083#1086' '#1089#1090#1088#1077#1084#1083#1077#1085#1080#1077' '#1074#1089#1077' ?'#1087#1088#1080 +
          #1095#1077#1089#1072#1090#1100'? '#1080' '#1091#1085#1080#1092#1080#1094#1080#1088#1086#1074#1072#1090#1100' '#1080#1084#1077#1102#1097#1080#1077#1089#1103' '#1087#1086#1076#1093#1086#1076#1099'.</p>'
        
          '<p><strong>'#1052#1072#1082#1089#1080#1084'</strong>: '#1050' '#1090#1086#1084#1091' '#1084#1086#1084#1077#1085#1090#1091', '#1082#1086#1075#1076#1072' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1077' ' +
          'UML '#1080#1079' '#1101#1082#1089#1087#1077#1088#1080#1084#1077#1085#1090#1086#1074' '#1086#1076#1085#1086#1075#1086'-'#1076#1074#1091#1093' '#1101#1085#1090#1091#1079#1080#1072#1089#1090#1086#1074' '#1087#1077#1088#1077#1096#1083#1086' '#1074' '#1089#1090#1072#1076#1080#1102' '#1087#1088 +
          #1086#1077#1082#1090#1085#1086#1075#1086' '#1074#1085#1077#1076#1088#1077#1085#1080#1103', '#1091' '#1085#1072#1089' '#1091#1078#1077' '#1073#1099#1083#1086' '#1076#1086#1074#1086#1083#1100#1085#1086' '#1095#1077#1090#1082#1086#1077' '#1087#1086#1085#1080#1084#1072#1085#1080#1077' '#1095#1090#1086 +
          ' '#1101#1090#1086' '#1080' '#1079#1072#1095#1077#1084' '#1080' '#1082#1072#1082' '#1089#1076#1077#1083#1072#1090#1100' '#1090#1072#1082', '#1095#1090#1086#1073#1099' '#1085#1077' '#1073#1099#1083#1086' ?'#1088#1072#1079#1085#1099#1093' UML-'#1077#1081'?.</' +
          'p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1042' '#1082#1072#1082 +
          #1086#1081' '#1084#1086#1084#1077#1085#1090' '#1073#1099#1083#1086' '#1087#1088#1080#1085#1103#1090#1086' '#1088#1077#1096#1077#1085#1080#1077' '#1087#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1074' '#1089#1090#1086#1088#1086#1085#1091' UML?</span><' +
          '/p>'
        
          '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088'</strong>: '#1050#1086#1075#1076#1072' '#1087#1086#1103#1074#1080#1083#1086#1089#1100' '#1086#1089#1086#1079#1085#1072#1085#1080#1077' '#1090#1086#1075#1086', '#1095 +
          #1090#1086' '#1087#1088#1086#1077#1082#1090#1099' '#1089#1083#1086#1078#1085#1099#1077'. '#1063#1090#1086' '#1074' '#1085#1080#1093' '#1079#1072#1076#1077#1081#1089#1090#1074#1086#1074#1072#1085#1086' '#1084#1085#1086#1075#1086' '#1083#1102#1076#1077#1081'. '#1063#1090#1086' '#1085#1072#1076 +
          #1086' '#1082#1072#1082'-'#1090#1086' ?'#1076#1086#1075#1086#1074#1072#1088#1080#1074#1072#1090#1100#1089#1103'?. '#1048' '#1095#1090#1086' '#1085#1072#1076#1086' '#1082#1072#1082'-'#1090#1086' ?'#1074#1080#1076#1077#1090#1100'? '#1086#1073#1097#1091#1102' '#1072#1088#1093#1080 +
          #1090#1077#1082#1090#1091#1088#1091' '#1087#1088#1086#1077#1082#1090#1086#1074'.</p>'
        
          '<p><strong>'#1052#1072#1082#1089#1080#1084'</strong>: '#1044#1086#1083#1075#1086#1077' '#1074#1088#1077#1084#1103' '#1077#1075#1086' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1077' '#1086#1075#1088#1072#1085 +
          #1080#1095#1080#1074#1072#1083#1086#1089#1100' '#1083#1080#1095#1085#1099#1084#1080' '#1085#1072#1073#1088#1086#1089#1082#1072#1084#1080' '#1076#1083#1103' '#1087#1086#1090#1088#1077#1073#1083#1077#1085#1080#1103' '#1091#1079#1082#1086#1081' '#1075#1088#1091#1087#1087#1086#1081' ?'#1087#1086#1089#1074 +
          #1103#1097#1077#1085#1085#1099#1093'?. '#1042' '#1082#1072#1082#1086#1081'-'#1090#1086' '#1084#1086#1084#1077#1085#1090' '#1087#1099#1090#1072#1083#1080#1089#1100' '#1085#1072#1095#1072#1090#1100' '#1075#1077#1085#1077#1088#1080#1088#1086#1074#1072#1090#1100' '#1080#1079' '#1085#1077#1075#1086 +
          ' CORBA IDL . '#1042' '#1080#1090#1086#1075#1077', '#1087#1088#1080#1096#1083#1080' '#1082' '#1074#1099#1074#1086#1076#1091', '#1095#1090#1086' '#1101#1090#1086' '#1087#1086#1095#1090#1080' '#1085#1077#1074#1086#1079#1084#1086#1078#1085#1086' ' +
          #1080' '#1085#1072#1087#1080#1089#1072#1083#1080' '#1089#1074#1086#1081' '#1087#1088#1086#1089#1090#1077#1085#1100#1082#1080#1081' '#1075#1077#1085#1077#1088#1072#1090#1086#1088'. '#1057#1086#1073#1089#1090#1074#1077#1085#1085#1086', '#1101#1090#1086' '#1080' '#1073#1099#1083#1086' '#1090#1086 +
          #1095#1082#1086#1081' '#1085#1077#1074#1086#1079#1074#1088#1072#1090#1072'. '#1055#1086#1089#1083#1077' '#1101#1090#1086#1075#1086' UML '#1089#1090#1072#1083' '#1087#1088#1080#1084#1077#1085#1103#1090#1100#1089#1103' '#1074' '#1073#1086#1083#1100#1096#1080#1085#1089#1090#1074#1077' ' +
          #1087#1088#1086#1077#1082#1090#1086#1074', '#1080' '#1095#1090#1086' '#1075#1083#1072#1074#1085#1086#1077', '#1087#1077#1088#1077#1088#1086#1076#1080#1083#1089#1103' '#1074' '#1085#1077#1095#1090#1086' '#1089#1091#1097#1077#1089#1090#1074#1077#1085#1085#1086' '#1073#1086#1083#1100#1096#1077#1077 +
          ', '#1095#1077#1084' '#1087#1088#1086#1089#1090#1086' '#1085#1072#1073#1086#1088' '#1082#1072#1088#1090#1080#1085#1086#1082', '#1084#1099' '#1086#1073' '#1101#1090#1086#1084' '#1087#1086#1090#1086#1084' '#1095#1091#1090#1100' '#1087#1086#1076#1088#1086#1073#1085#1077#1077' '#1088#1072#1089 +
          #1089#1082#1072#1078#1077#1084'. '#1053#1086' '#1074' '#1085#1072#1095#1072#1083#1077', '#1076#1072' - '#1087#1088#1086#1089#1090#1086' '#1082#1072#1082' '#1074#1086#1079#1084#1086#1078#1085#1086#1089#1090#1100' '#1073#1099#1089#1090#1088#1077#1077' '#1080' '#1101#1092#1092#1077#1082 +
          #1090
        #1080#1074#1085#1077#1077' '#1076#1086#1075#1086#1074#1086#1088#1080#1090#1100#1089#1103'.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1041#1099#1083#1080' ' +
          #1083#1080' '#1089#1083#1091#1095#1072#1080', '#1082#1086#1075#1076#1072' '#1076#1086#1075#1086#1074#1086#1088#1080#1090#1100#1089#1103' '#1085#1077' '#1091#1076#1072#1083#1086#1089#1100' '#1076#1072#1078#1077' '#1089' UML?</span></p>'
        
          '<p><strong>'#1052#1072#1082#1089#1080#1084'</strong>: '#1042' '#1083#1102#1073#1099#1093' '#1082#1086#1083#1083#1077#1082#1090#1080#1074#1072#1093' '#1074#1086#1079#1085#1080#1082#1072#1102#1090' '#1089#1080#1090#1091#1072#1094 +
          #1080#1080', '#1082#1086#1075#1076#1072' '#1082#1090#1086'-'#1090#1086' '#1090#1077#1088#1103#1077#1090' '#1078#1077#1083#1072#1085#1080#1077' '#1076#1086#1075#1086#1074#1072#1088#1080#1074#1072#1090#1100#1089#1103'. '#1058#1091#1090' '#1091#1078#1077' '#1085#1077' '#1087#1086#1084#1086#1078 +
          #1077#1090' '#1085#1080' UML, '#1085#1080' '#1095#1090#1086'-'#1090#1086' '#1076#1088#1091#1075#1086#1077'. '#1053#1086' '#1082#1086#1075#1076#1072' '#1083#1102#1076#1080' '#1079#1072#1085#1080#1084#1072#1102#1090' '#1082#1086#1085#1089#1090#1088#1091#1082#1090#1080#1074#1085 +
          #1091#1102' '#1087#1086#1079#1080#1094#1080#1102', '#1090#1086' '#1085#1072#1083#1080#1095#1080#1077' '#1091#1085#1080#1074#1077#1088#1089#1072#1083#1100#1085#1086#1075#1086' '#1103#1079#1099#1082#1072' '#1086#1095#1077#1085#1100' '#1086#1073#1083#1077#1075#1095#1072#1077#1090' '#1078#1080#1079#1085 +
          #1100'.</p>'
        
          '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088'</strong>: UML - '#1085#1077' '#1076#1086#1075#1084#1072' '#1080' '#1085#1077' ?'#1091#1085#1080#1074#1077#1088#1089#1072#1083#1100#1085#1072 +
          #1103' '#1087#1080#1083#1102#1083#1103'?, '#1072' '#1089#1088#1077#1076#1089#1090#1074#1086'. '#1053#1086' '#1088#1072#1073#1086#1090#1072#1090#1100' '#1089#1090#1072#1083#1086' '#1088#1077#1072#1083#1100#1085#1086' '#1083#1091#1095#1096#1077'. '#1055#1086#1090#1086#1084#1091', ' +
          #1095#1090#1086' '#1089#1090#1072#1083#1086' '#1074#1086#1079#1084#1086#1078#1085#1099#1084' '#1087#1088#1086#1089#1090#1086' "'#1089#1082#1086#1083#1100#1079#1080#1090#1100' '#1074#1079#1075#1083#1103#1076#1086#1084'" '#1087#1086' '#1074#1089#1077#1081' '#1089#1080#1089#1090#1077#1084#1077',' +
          ' '#1073#1099#1089#1090#1088#1086' '#1084#1077#1085#1103#1103' '#1084#1072#1089#1096#1090#1072#1073' '#1088#1072#1089#1089#1084#1086#1090#1088#1077#1085#1080#1103'. '#1058#1086' '#1084#1099' '#1089#1084#1086#1090#1088#1080#1084' '#1085#1072' UseCase, '#1090#1086 +
          ' '#1084#1099' '#1095#1077#1088#1077#1079' 5 '#1084#1080#1085#1091#1090' '#1091#1078#1077' '#1089#1087#1091#1089#1090#1080#1083#1080#1089#1100' ?'#1082' '#1073#1072#1081#1090#1072#1084'?. '#1052#1072#1089#1096#1090#1072#1073#1080#1088#1086#1074#1072#1085#1080#1077' '#1086#1095#1077 +
          #1085#1100' '#1073#1099#1089#1090#1088#1086' '#1076#1077#1083#1072#1077#1090#1089#1103'. '#1057#1082#1072#1078#1077#1084', '#1082#1072#1082' '#1074' Google Earth.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1053#1077' '#1103#1074 +
          #1083#1103#1077#1090#1089#1103' '#1083#1080' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1077' '#1087#1086#1076#1086#1073#1085#1099#1093' '#1090#1077#1093#1085#1080#1082' '#1080' '#1087#1088#1086#1089#1090#1086' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086#1089#1090#1100' ?' +
          #1076#1086#1075#1086#1074#1072#1088#1080#1074#1072#1090#1100#1089#1103'? '#1080#1085#1076#1080#1082#1072#1090#1086#1088#1086#1084' '#1090#1086#1075#1086', '#1095#1090#1086' '#1077#1089#1090#1100' '#1087#1088#1086#1073#1083#1077#1084#1099' '#1074' '#1088#1072#1089#1087#1088#1077#1076#1077#1083#1077 +
          #1085#1080#1080' ?'#1079#1086#1085' '#1086#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1086#1089#1090#1080'? '#1074' '#1082#1086#1076#1077'? '#1047#1072#1095#1077#1084' '#1076#1086#1075#1086#1074#1072#1088#1080#1074#1072#1090#1100#1089#1103' '#1080' '#1089#1086#1075#1083#1072#1089#1086 +
          #1074#1099#1074#1072#1090#1100', '#1077#1089#1083#1080' '#1084#1086#1078#1085#1086' '#1095#1105#1090#1082#1086' '#1088#1072#1079#1075#1088#1072#1085#1080#1095#1080#1090#1100', '#1082#1090#1086' '#1082#1072#1082#1080#1077' '#1082#1083#1072#1089#1089#1099'/'#1084#1077#1090#1086#1076#1099' '#1088 +
          #1072#1079#1088#1072#1073#1072#1090#1099#1074#1072#1077#1090', '#1072' '#1082#1090#1086' '#1080#1093' '#1080#1089#1087#1086#1083#1100#1079#1091#1077#1090'? '#1071' '#1076#1077#1083#1072#1102' '#1073#1086#1083#1090#1099', '#1042#1072#1089#1103' - '#1075#1072#1081#1082#1080', ' +
          #1072' '#1046#1086#1088#1072' '#1089#1074#1080#1085#1095#1080#1074#1072#1077#1090' '#1080#1084#1080' '#1076#1074#1077' '#1076#1077#1090#1072#1083#1080'. '#1050#1072#1082#1080#1077' '#1076#1077#1090#1072#1083#1080'? '#1044#1072' '#1073#1077#1079' '#1088#1072#1079#1085#1080#1094#1099', ' +
          #1084#1099' '#1095#1105#1090#1082#1086' '#1087#1086#1076#1077#1083#1080#1083#1080' '#1079#1086#1085#1099' '#1086#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1086#1089#1090#1080'. '#1055#1086#1095#1077#1084#1091' '#1101#1090#1086' '#1074' '#1086#1073#1083#1072#1089#1090#1080' '#1088#1072#1079 +
          #1088#1072#1073#1086#1090#1082#1080' '#1055#1054' '#1085#1077' '#1088#1072#1073#1086#1090#1072#1077#1090'?</span></p>'
        
          '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088'</strong>: '#1044#1086' '#1082#1072#1082#1086#1075#1086'-'#1090#1086' '#1084#1086#1084#1077#1085#1090#1072' '#1091' '#1085#1072#1089' '#1080' '#1090#1072#1082#1072 +
          #1103' '#1089#1093#1077#1084#1072' '#1088#1072#1073#1086#1090#1072#1083#1072'. '#1053#1086' '#1087#1088#1080#1096#1083#1086#1089#1100' '#1084#1077#1085#1103#1090#1100#1089#1103' '#1088#1086#1083#1103#1084#1080'. '#1047#1072#1084#1077#1097#1072#1090#1100' '#1076#1088#1091#1075#1080#1093'. ' +
          #1044#1072' '#1080' '#1089#1083#1086#1078#1085#1086#1089#1090#1100' '#1087#1088#1086#1077#1082#1090#1086#1074' '#1074#1086#1079#1088#1086#1089#1083#1072'.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1040' '#1082#1072#1082 +
          ' '#1087#1086#1085#1103#1090#1100', '#1095#1090#1086' '#1087#1088#1086#1077#1082#1090' '#1091#1078#1077' '#1089#1090#1072#1083' ?'#1089#1083#1086#1078#1085#1099#1084'??</span></p>'
        
          '<p><strong>'#1052#1072#1082#1089#1080#1084'</strong>: '#1042#1089#1077' '#1079#1072#1074#1080#1089#1080#1090' '#1086#1090' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072' '#1094#1077#1087#1086#1095#1077#1082' ?'#1073 +
          #1086#1083#1090'-'#1075#1072#1081#1082#1072'-'#1076#1077#1090#1072#1083#1100'?, '#1086#1090' '#1084#1085#1086#1075#1086#1075#1088#1072#1085#1085#1086#1089#1090#1080' '#1082#1072#1078#1076#1086#1081' '#1075#1072#1081#1082#1080', '#1086#1090' '#1074#1072#1088#1080#1072#1090#1080#1074#1085#1086 +
          #1089#1090#1080' '#1073#1086#1083#1090#1086#1074' '#1080' '#1084#1072#1085#1080#1087#1091#1083#1103#1094#1080#1081' '#1089' '#1085#1080#1084#1080'. '#1063#1090#1086#1073#1099' '#1085#1072#1087#1080#1089#1072#1090#1100' ?hello, world? '#1085 +
          #1077' '#1085#1091#1078#1085#1086' '#1085#1080' '#1089' '#1082#1077#1084' '#1076#1086#1075#1086#1074#1072#1088#1080#1074#1072#1090#1100#1089#1103' '#1080' '#1076#1077#1083#1080#1090#1100' '#1079#1086#1085#1099' '#1086#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1086#1089#1090#1080'. '#1053 +
          #1077' '#1085#1091#1078#1077#1085' UML '#1080' OOP, SOAP, XML '#1080' ?'#1075#1080#1073#1082#1080#1077'? '#1084#1077#1090#1086#1076#1086#1083#1086#1075#1080#1080'. '#1042#1089#1077' '#1085#1072#1095#1080#1085#1072#1077 +
          #1090#1089#1103' '#1089' '#1088#1086#1089#1090#1086#1084' '#1087#1088#1086#1077#1082#1090#1072'. '#1042' '#1082#1072#1082#1086#1081'-'#1090#1086' '#1084#1086#1084#1077#1085#1090' '#1086#1082#1072#1079#1099#1074#1072#1077#1090#1089#1103', '#1095#1090#1086' '#1042#1072#1089#1103' '#1080#1079 +
          #1084#1077#1085#1080#1083' '#1076#1080#1072#1084#1077#1090#1088' '#1088#1077#1079#1100#1073#1099' '#1091' '#1089#1074#1086#1080#1093' '#1075#1072#1077#1082', '#1080' '#1046#1086#1088#1072' '#1073#1086#1083#1100#1096#1077' '#1085#1077' '#1084#1086#1078#1077#1090' '#1085#1072#1074#1077#1088#1085 +
          #1091#1090#1100' '#1080#1093' '#1085#1072' '#1074#1072#1096' '#1073#1086#1083#1090', '#1072' '#1077#1097#1077' '#1093#1091#1078#1077' '#1086#1085#1080' '#1089' '#1085#1080#1093' '#1089#1072#1084#1080' '#1089#1086#1089#1082#1072#1082#1080#1074#1072#1102#1090', '#1091#1078#1077' '#1075 +
          #1076#1077'-'#1090#1086' '#1087#1086#1090#1086#1084', '#1076#1072#1083#1100#1096#1077'. '#1048#1083#1080' '#1074#1076#1088#1091#1075' '#1074#1099#1103#1089#1085#1103#1077#1090#1089#1103', '#1095#1090#1086' '#1074' '#1082#1086#1085#1094#1077' '#1094#1077#1087#1086#1095#1082#1080' '#1089 +
          #1090#1086#1080#1090' '#1085#1086#1074#1077#1085#1100#1082#1072#1103' '#1052
        
          #1072#1096#1072', '#1082#1086#1090#1086#1088#1072#1103' '#1089' '#1085#1077#1080#1084#1086#1074#1077#1088#1085#1099#1084' '#1090#1088#1091#1076#1086#1084' '#1088#1072#1089#1082#1088#1091#1095#1080#1074#1072#1077#1090' '#1086#1073#1088#1072#1090#1085#1086' '#1074#1072#1096#1080' '#1075#1072#1081#1082 +
          #1080' '#1089' '#1073#1086#1083#1090#1072#1084#1080', '#1080' '#1084#1077#1085#1103#1077#1090' '#1080#1093' '#1085#1072' '#1079#1072#1082#1083#1077#1087#1082#1080', '#1082#1086#1090#1086#1088#1099#1077' '#1080#1076#1091#1090' '#1080#1079' '#1089#1086#1089#1077#1076#1085#1077#1075#1086' ' +
          #1094#1077#1093#1072'. '#1069#1090#1086' '#1074#1089#1077' '#1087#1088#1080#1084#1080#1090#1080#1074#1085#1099#1077' '#1087#1088#1080#1084#1077#1088#1099', '#1085#1086' '#1085#1072#1082#1072#1087#1083#1080#1074#1072#1103#1089#1100', '#1087#1077#1088#1077#1084#1077#1096#1080#1074#1072#1103#1089 +
          #1100', '#1086#1073#1088#1072#1079#1091#1103' '#1087#1088#1080#1095#1091#1076#1083#1080#1074#1099#1077' '#1082#1086#1084#1073#1080#1085#1072#1094#1080#1080', '#1086#1085#1080' '#1080' '#1089#1086#1079#1076#1072#1102#1090' '#1089#1083#1086#1078#1085#1086#1089#1090#1100', '#1080#1084#1077#1085 +
          #1085#1086' '#1080#1079'-'#1079#1072' '#1085#1080#1093' '#1084#1099' '#1080' '#1090#1077#1088#1103#1077#1084' '#1082#1072#1095#1077#1089#1090#1074#1086', '#1082#1072#1082' '#1087#1088#1086#1094#1077#1089#1089#1072', '#1090#1072#1082' '#1080' '#1088#1077#1079#1091#1083#1100#1090#1072#1090 +
          #1072'.</p>'
        
          '<p>'#1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1077' '#1083#1102#1073#1086#1081' '#1085#1086#1090#1072#1094#1080#1080' '#1087#1086#1085#1103#1090#1085#1086#1081' '#1074#1089#1077#1084' '#1091#1095#1072#1089#1090#1085#1080#1082#1072#1084' '#1087#1088#1086#1094#1077#1089#1089#1072 +
          ', '#1091#1084#1077#1085#1100#1096#1072#1077#1090' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1086#1076#1086#1073#1085#1099#1093' '#1089#1102#1088#1087#1088#1080#1079#1086#1074'. '#1043#1080#1087#1086#1090#1077#1090#1080#1095#1077#1089#1082#1086#1077' '#1087#1088#1086#1080#1079#1074 +
          #1086#1076#1089#1090#1074#1086' '#1089' '#1073#1086#1083#1090#1072#1084#1080' '#1080' '#1075#1072#1081#1082#1072#1084#1080' '#1073#1099#1083#1086' '#1073#1099' '#1085#1077' '#1074#1086#1079#1084#1086#1078#1085#1086' '#1073#1077#1079' '#1095#1077#1088#1090#1077#1078#1077#1081' '#1080' '#1076#1086 +
          #1082#1091#1084#1077#1085#1090#1072#1094#1080#1080'. '#1053#1086' '#1101#1090#1086#1075#1086' '#1090#1086#1078#1077' '#1085#1077' '#1076#1086#1089#1090#1072#1090#1086#1095#1085#1086'. '#1063#1090#1086#1073#1099' '#1087#1086#1089#1090#1088#1086#1080#1090#1100' '#1101#1092#1092#1077#1082#1090#1080 +
          #1074#1085#1099#1081' '#1082#1086#1085#1074#1077#1081#1077#1088' '#1074#1072#1084' '#1085#1091#1078#1085#1099' '#1089#1090#1072#1085#1082#1080', '#1088#1086#1073#1086#1090#1099' '#1089' '#1063#1055#1059'. '#1054#1085#1080' '#1086#1076#1085#1086#1079#1085#1072#1095#1085#1086' '#1080' '#1073 +
          #1077#1079' '#1074#1086#1083#1100#1085#1086#1089#1090#1077#1081' '#1090#1088#1072#1082#1090#1091#1102#1090' '#1074#1093#1086#1076#1085#1091#1102' '#1076#1086#1082#1091#1084#1077#1085#1090#1072#1094#1080#1102' '#1080' '#1074#1099#1076#1072#1102#1090' '#1075#1072#1088#1072#1085#1090#1080#1088#1086#1074#1072 +
          #1085#1085#1099#1081' '#1088#1077#1079#1091#1083#1100#1090#1072#1090'. '#1055#1086#1101#1090#1086#1084#1091' '#1086#1076#1080#1085' UML '#1085#1077' '#1087#1088#1080#1085#1086#1089#1080#1090' '#1089#1090#1086#1083#1100#1082#1086' '#1087#1086#1083#1100#1079#1099', '#1089#1082#1086 +
          #1083#1100#1082#1086' UML '#1082#1086#1090#1086#1088#1099#1081' '#1074#1099' '#1084#1086#1078#1077#1090#1077' '#1089#1082#1086#1088#1084#1080#1090#1100' ?'#1089#1090#1072#1085#1082#1091'? '#1080' '#1087#1086#1083#1091#1095#1080#1090#1100' '#1085#1072' '#1074#1099#1093#1086#1076 +
          #1077' 100% '#1074#1072#1083#1080#1076#1085#1099#1081', '#1086#1090#1083#1072#1078#1077#1085#1085#1099#1081' '#1082#1086#1076', '#1082#1086#1090#1086#1088#1099#1081' '#1079#1072#1090#1077#1084' '#1091#1078#1077' '
        #1074' '#1088#1091#1095#1085#1086#1084' '#1088#1077#1078#1080#1084#1077' '#1087#1088#1077#1074#1088#1072#1090#1080#1090#1077' '#1074' '#1092#1080#1085#1072#1083#1100#1085#1099#1081' '#1087#1088#1086#1076#1091#1082#1090'.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1050#1072#1082' '#1087 +
          #1088#1086#1080#1089#1093#1086#1076#1080#1090' '#1087#1088#1086#1094#1077#1089#1089' '#1084#1086#1076#1077#1083#1080#1088#1086#1074#1072#1085#1080#1103'? '#1055#1088#1103#1084#1086' '#1090#1072#1082' '#1089#1086#1073#1080#1088#1072#1077#1090#1089#1103' '#1075#1088#1091#1087#1087#1072' ?'#1079#1072 +
          #1080#1085#1090#1077#1088#1077#1089#1086#1074#1072#1085#1085#1099#1093' '#1090#1086#1074#1072#1088#1080#1097#1077#1081'? '#1080' '#1074#1089#1077' '#1086#1076#1085#1086#1074#1088#1077#1084#1077#1085#1085#1086' ?'#1090#1099#1095#1091#1090' '#1087#1072#1083#1100#1094#1072#1084#1080' '#1074' '#1076 +
          #1080#1072#1075#1088#1072#1084#1084#1091'? '#1080' '#1076#1086#1088#1080#1089#1086#1074#1099#1074#1072#1102#1090' '#1077#1105'? '#1048#1083#1080' '#1077#1089#1090#1100' '#1095#1105#1090#1082#1086#1077' '#1088#1072#1079#1075#1088#1072#1085#1080#1095#1077#1085#1080#1077' - '#1074#1077#1076 +
          #1091#1097#1080#1081'-'#1074#1077#1076#1086#1084#1099#1077'. '#1058'.'#1077'. '#1086#1076#1080#1085' '#1088#1080#1089#1091#1077#1090' - '#1086#1089#1090#1072#1083#1100#1085#1099#1077' '#1087#1088#1080#1085#1080#1084#1072#1102#1090' '#1082' '#1089#1074#1077#1076#1077#1085#1080#1102'?' +
          '</span></p>'
        
          '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088'</strong>: '#1041#1099#1074#1072#1077#1090' '#1080' '#1090#1072#1082#1086#1077'. '#1048' '#1089#1086#1073#1080#1088#1072#1102#1090#1089#1103', '#1080' '#1090 +
          #1099#1095#1091#1090'. '#1056#1072#1079#1076#1077#1083#1077#1085#1080#1077' '#1074#1077#1076#1091#1097#1080#1081'-'#1074#1077#1076#1086#1084#1099#1081' - '#1090#1086#1078#1077' '#1089#1083#1091#1095#1072#1077#1090#1089#1103'. '#1053#1086' '#1101#1090#1086' '#1089#1082#1086#1088#1077#1077 +
          ' ?'#1088#1086#1083#1080'?, '#1072' '#1085#1077' '#1076#1086#1083#1078#1085#1086#1089#1090#1080'. ?'#1050#1088#1091#1075' '#1089#1087#1077#1094#1080#1072#1083#1080#1089#1090#1086#1074'? '#1085#1072#1095#1072#1083#1100#1085#1099#1081' - '#1082#1072#1082#1086#1081'-'#1090 +
          #1086' '#1077#1089#1090#1100'. '#1057#1085#1072#1095#1072#1083#1072' '#1086#1073#1097#1072#1077#1084#1089#1103' '#1091#1089#1090#1085#1086'. '#1055#1086#1090#1086#1084' '#1095#1080#1090#1072#1077#1084' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103'. '#1055#1086#1090#1086#1084' '#1079 +
          #1072#1076#1072#1105#1084' '#1087#1086' '#1085#1080#1084' '#1074#1086#1087#1088#1086#1089#1099'. '#1055#1086#1083#1091#1095#1072#1077#1084' '#1085#1072' '#1085#1080#1093' '#1086#1090#1074#1077#1090#1099'. '#1056#1080#1089#1091#1077#1084' '#1087#1088#1086#1090#1086#1090#1080#1087'. '#1043 +
          #1076#1077'-'#1090#1086' '#1090#1091#1090' '#1078#1077' '#1086#1087#1088#1077#1076#1077#1083#1103#1077#1084' ?'#1082#1088#1091#1075' '#1089#1087#1077#1094#1080#1072#1083#1080#1089#1090#1086#1074'?. '#1041#1086#1083#1077#1077' '#1091#1079#1082#1080#1081'. '#1048#1083#1080' '#1073#1086 +
          #1083#1077#1077' '#1096#1080#1088#1086#1082#1080#1081'. ?'#1054#1073#1082#1072#1090#1099#1074#1072#1077#1084'? '#1088#1077#1096#1077#1085#1080#1103'. '#1053#1072#1093#1086#1076#1080#1084' ?'#1087#1086#1076#1074#1086#1076#1085#1099#1077' '#1082#1072#1084#1085#1080' '#1074' '#1058#1047 +
          '? '#1080#1083#1080' '#1087#1088#1086#1090#1080#1074#1086#1088#1077#1095#1080#1103' '#1089' ?'#1089#1091#1097#1077#1089#1090#1074#1091#1102#1097#1077#1081' '#1072#1088#1093#1080#1090#1077#1082#1090#1091#1088#1086#1081'?. '#1044#1072#1083#1077#1077', '#1087#1088#1086#1094#1077#1089#1089 +
          ', '#1074' '#1094#1077#1083#1086#1084', '#1094#1080#1082#1083#1080#1095#1077#1089#1082#1080#1081'.</p>'
        
          '<p><strong>'#1052#1072#1082#1089#1080#1084'</strong>: '#1059' '#1085#1072#1089', '#1082#1072#1082' '#1087#1088#1072#1074#1080#1083#1086', '#1088#1080#1089#1091#1102#1090' '#1074#1089#1077', '#1085#1091' '#1080 +
          #1083#1080' '#1087#1086#1095#1090#1080' '#1074#1089#1077'. '#1047#1072#1074#1080#1089#1080#1090' '#1086#1090' '#1087#1088#1086#1077#1082#1090#1072' '#1080' '#1089#1087#1077#1094#1080#1092#1080#1082#1080', '#1082#1086#1085#1077#1095#1085#1086'. '#1053#1086' '#1090#1077#1086#1088#1077#1090 +
          #1080#1095#1077#1089#1082#1080', '#1084#1086#1076#1077#1083#1100' ?'#1074#1077#1076#1091#1097#1080#1077'? ('#1080#1084#1077#1085#1085#1086' ?'#1080#1077'?) - ?'#1074#1077#1076#1086#1084#1099#1077'?, '#1084#1085#1077' '#1082#1072#1078#1077#1090#1089#1103' ' +
          #1073#1086#1083#1077#1077' '#1087#1088#1072#1074#1080#1083#1100#1085#1086#1081' '#1080' '#1078#1080#1079#1085#1077#1089#1087#1086#1089#1086#1073#1085#1086#1081', '#1090'.'#1082'. '#1087#1086#1079#1074#1086#1083#1103#1077#1090' '#1085#1072#1080#1073#1086#1083#1077#1077' '#1086#1087#1090#1080#1084 +
          #1072#1083#1100#1085#1086' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' '#1089#1080#1083#1100#1085#1099#1077' '#1089#1090#1086#1088#1086#1085#1099' '#1086#1076#1085#1080#1093' '#1080' '#1085#1080#1074#1077#1083#1080#1088#1086#1074#1072#1090#1100' '#1085#1077#1076#1086#1089#1090#1072#1090 +
          #1082#1080' '#1076#1088#1091#1075#1080#1093'. '#1058#1077', '#1082#1090#1086' '#1083#1091#1095#1096#1077' ?'#1079#1072#1090#1086#1095#1077#1085'? '#1085#1072' '#1087#1088#1086#1077#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077', '#1088#1080#1089#1091#1102#1090' '#1084#1086#1076 +
          #1077#1083#1080'. '#1058#1077', '#1082#1090#1086' '#1091#1074#1077#1088#1077#1085#1085#1077#1077' '#1095#1091#1074#1089#1090#1074#1091#1077#1090' '#1089#1077#1073#1103' '#1074' '#1088#1077#1072#1083#1080#1079#1072#1094#1080#1080' '#1072#1083#1075#1086#1088#1080#1090#1084#1086#1074', '#1075 +
          #1077#1085#1077#1088#1080#1088#1091#1077#1090' '#1080#1079' '#1085#1080#1093' '#1082#1086#1076' '#1080' '#1085#1072#1087#1086#1083#1085#1103#1077#1090' '#1077#1075#1086' '#1073#1080#1079#1085#1077#1089#1089'-'#1083#1086#1075#1080#1082#1086#1081'.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1050#1072#1082#1080#1077 +
          ' '#1087#1088#1086#1073#1083#1077#1084#1099' '#1080#1079#1085#1072#1095#1072#1083#1100#1085#1086' '#1093#1086#1090#1077#1083#1086#1089#1100' '#1088#1077#1096#1080#1090#1100' '#1089' '#1087#1086#1084#1086#1097#1100#1102' UML?</span></p>'
        
          '<p><strong>'#1052#1072#1082#1089#1080#1084'</strong>: '#1048#1079#1085#1072#1095#1072#1083#1100#1085#1086' '#1077#1097#1077' '#1085#1072' '#1091#1088#1086#1074#1085#1077' '#1101#1082#1089#1087#1077#1088#1080#1084#1077#1085#1090 +
          #1086#1074', '#1087#1088#1086#1089#1090#1086' '#1082#1072#1082' '#1089#1087#1086#1089#1086#1073' '#1089#1090#1088#1091#1082#1090#1091#1088#1080#1088#1086#1074#1072#1090#1100' '#1089#1074#1086#1080' '#1084#1099#1089#1083#1080'. '#1057#1072#1084#1099#1077' '#1087#1077#1088#1074#1099#1077' '#1086 +
          #1087#1099#1090#1099' '#1074#1082#1083#1102#1095#1072#1083#1080' '#1083#1080#1096#1100' '#1088#1080#1089#1086#1074#1072#1085#1080#1077' '#1082#1083#1072#1089#1089#1086#1074' '#1080' '#1089#1074#1103#1079#1077#1081', '#1074' '#1101#1090#1086#1084' '#1085#1077' '#1073#1099#1083#1086' '#1095#1077 +
          #1090#1082#1086' '#1089#1092#1086#1088#1084#1091#1083#1080#1088#1086#1074#1072#1085#1085#1086#1081' '#1087#1088#1072#1082#1090#1080#1095#1077#1089#1082#1086#1081' '#1087#1086#1083#1100#1079#1099', '#1089#1082#1086#1088#1077#1077' '#1085#1072#1084' '#1101#1090#1086' '#1085#1088#1072#1074#1080#1083#1086 +
          #1089#1100' '#1101#1089#1090#1077#1090#1080#1095#1077#1089#1082#1080', '#1101#1090#1086' '#1073#1099#1083#1086' '#1079#1076#1086#1088#1086#1074#1086' '#1080' '#1080#1085#1090#1077#1088#1077#1089#1085#1086', '#1073#1091#1076#1090#1086' '#1084#1099' '#1088#1080#1089#1086#1074#1072#1083#1080' ' +
          #1080#1083#1083#1102#1089#1090#1088#1072#1094#1080#1080' '#1082' '#1082#1085#1080#1075#1072#1084' ?'#1082#1083#1072#1089#1089#1080#1082#1086#1074'?. '#1053#1086' '#1091#1078#1077' '#1082' '#1084#1086#1084#1077#1085#1090#1091' '#1088#1077#1072#1083#1100#1085#1086#1075#1086' '#1074#1085#1077 +
          #1076#1088#1077#1085#1080#1103', '#1086#1089#1085#1086#1074#1085#1086#1081' '#1087#1088#1086#1073#1083#1077#1084#1086#1081', '#1082#1086#1090#1086#1088#1091#1102' '#1093#1086#1090#1077#1083#1086#1089#1100' '#1088#1077#1096#1080#1090#1100' '#1101#1090#1086' '#1085#1077#1076#1086#1089#1090#1072#1090 +
          #1086#1095#1085#1072#1103' '#1089#1082#1086#1088#1086#1089#1090#1100' '#1080' '#1082#1072#1095#1077#1089#1090#1074#1086' '#1088#1091#1095#1085#1086#1075#1086' '#1082#1086#1076#1080#1088#1086#1074#1072#1085#1080#1103' ?'#1088#1091#1090#1080#1085#1085#1086#1075#1086'? '#1082#1086#1076#1072'. ' +
          #1058'.'#1077'. '#1074#1086' '#1075#1083#1072#1074#1077' '#1091#1075#1083#1072' '#1089#1090#1086#1103#1083#1072' '#1082#1086#1076#1086#1075#1077#1085#1077#1088#1072#1094#1080#1103'.</p>'
        
          '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088'</strong>: '#1057#1083#1086#1078#1085#1086#1089#1090#1100' '#1074#1079#1103#1080#1084#1086#1089#1074#1103#1079#1077#1081'. '#1048#1093' ?'#1085#1077#1086#1097#1091 +
          #1097#1072#1077#1084#1086#1089#1090#1100'? '#1074' ?'#1075#1086#1083#1086#1084'? '#1082#1086#1076#1077'. '#1055#1088#1072#1074#1080#1083#1072' '#1087#1088#1086#1077#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103' '#1080' '#1082#1086#1076#1080#1088#1086#1074#1072#1085#1080#1103'. ' +
          #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1077' '#1096#1072#1073#1083#1086#1085#1085#1099#1093' '#1088#1077#1096#1077#1085#1080#1081'. '#1054#1087#1103#1090#1100' '#1078#1077' UML '#1088#1072#1089#1089#1084#1072#1090#1088#1080#1074#1072#1083#1072#1089#1100' '#1082#1072 +
          #1082' '#1074#1086#1079#1084#1086#1078#1085#1086#1089#1090#1100' ?'#1076#1086#1075#1086#1074#1086#1088#1080#1090#1089#1103'? '#1073#1086#1083#1077#1077' '#1092#1086#1088#1084#1072#1083#1100#1085#1086'.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1048' '#1087#1086#1095 +
          #1077#1084#1091' '#1080#1084#1077#1085#1085#1086' UML?</span></p>'
        
          '<p><strong>'#1052#1072#1082#1089#1080#1084'</strong>: '#1042' '#1090#1086' '#1074#1088#1077#1084#1103' '#1072#1083#1100#1090#1077#1088#1085#1072#1090#1080#1074' '#1087#1088#1086#1089#1090#1086' '#1085#1077' '#1073#1099#1083 +
          #1086', UML '#1073#1099#1083' '#1077#1076#1080#1085#1089#1090#1074#1077#1085#1085#1086#1081' '#1091#1085#1080#1074#1077#1088#1089#1072#1083#1100#1085#1086#1081' '#1075#1088#1072#1092#1080#1095#1077#1089#1082#1086#1081' '#1085#1086#1090#1072#1094#1080#1077#1081' '#1076#1086#1089#1090#1072 +
          #1090#1086#1095#1085#1086' '#1094#1077#1083#1086#1089#1090#1085#1086' '#1086#1087#1080#1089#1099#1074#1072#1102#1097#1077#1081' '#1087#1088#1077#1076#1084#1077#1090#1085#1091#1102' '#1086#1073#1083#1072#1089#1090#1100' '#1080' '#1080#1084#1077#1102#1097#1077#1081' '#1080#1085#1089#1090#1088#1091#1084#1077 +
          #1085#1090#1072#1083#1100#1085#1091#1102' '#1087#1086#1076#1076#1077#1088#1078#1082#1091', '#1076#1072#1078#1077' '#1089' '#1082#1072#1082#1086#1081'-'#1090#1086' '#1082#1086#1076#1086#1075#1077#1085#1077#1088#1072#1094#1080#1077#1081'. '#1055#1086#1101#1090#1086#1084#1091' '#1084#1086#1078#1085 +
          #1086' '#1089#1082#1072#1079#1072#1090#1100', '#1095#1090#1086' '#1090#1072#1082' '#1089#1083#1086#1078#1080#1083#1086#1089#1100' '#1080#1089#1090#1086#1088#1080#1095#1077#1089#1082#1080'. '#1040' '#1087#1086#1079#1078#1077', '#1082#1086#1075#1076#1072' '#1084#1099' '#1087#1086#1085#1103 +
          #1083#1080', '#1095#1090#1086' '#1085#1077' '#1090#1072#1082' '#1074#1072#1078#1085#1086' ?'#1082#1072#1082'? '#1088#1080#1089#1086#1074#1072#1090#1100', '#1089#1082#1086#1083#1100#1082#1086' ?'#1095#1090#1086' '#1080' '#1079#1072#1095#1077#1084'?, '#1090#1086' '#1084 +
          #1077#1085#1103#1090#1100' UML '#1085#1072' '#1095#1090#1086'-'#1090#1086' '#1076#1088#1091#1075#1086#1077' ('#1085#1072#1087#1088#1080#1084#1077#1088', DOT) '#1087#1088#1086#1089#1090#1086' '#1085#1077' '#1073#1099#1083#1086' '#1089#1084#1099#1089#1083#1072 +
          '. '#1055#1086' '#1073#1086#1083#1100#1096#1086#1084#1091' '#1089#1095#1077#1090#1091', UML '#1076#1083#1103' '#1085#1072#1089' '#1083#1080#1096#1100' '#1082#1086#1085#1082#1088#1077#1090#1085#1072#1103' '#1085#1086#1090#1072#1094#1080#1103' '#1079#1085#1072#1082#1086#1084#1072 +
          #1103' '#1073#1086#1083#1100#1096#1080#1085#1089#1090#1074#1091', ?'#1092#1086#1088#1084#1072' '#1089#1090#1088#1077#1083#1086#1095#1077#1082' '#1080' '#1082#1074#1072#1076#1088#1072#1090#1080#1082#1086#1074'?, '#1074#1072#1078#1077#1085' '#1085#1077' '#1086#1085#1072', '#1072' ' +
          #1087#1088#1080#1085#1094
        #1080#1087' '#1076#1077#1081#1089#1090#1074#1080#1103', '#1090'.'#1077'. '#1090#1086', '#1095#1090#1086' '#1084#1099' '#1089' '#1085#1080#1084' '#1076#1077#1083#1072#1077#1084' '#1080' '#1082#1072#1082'.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1050#1083#1072#1089#1089 +
          #1080#1082#1080' '#1085#1077' '#1086#1073#1084#1072#1085#1091#1083#1080'? '#1048#1083#1080' '#1091' '#1074#1072#1089' '#1086#1073#1088#1072#1079#1086#1074#1072#1083#1086#1089#1100' '#1089#1074#1086#1105' '#1074#1080#1076#1077#1085#1080#1077' '#1084#1077#1089#1090#1072' '#1080' '#1088#1086#1083 +
          #1080' UML?</span></p>'
        
          '<p><strong>'#1052#1072#1082#1089#1080#1084'</strong>: '#1050#1083#1072#1089#1089#1080#1082#1080' '#1079#1072#1076#1072#1083#1080' '#1073#1072#1079#1080#1089', '#1072' '#1084#1099' '#1077#1075#1086' '#1080#1089#1087#1086 +
          #1083#1100#1079#1086#1074#1072#1083#1080'. '#1048' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1083#1080' '#1090#1072#1082', '#1082#1072#1082' '#1082#1083#1072#1089#1089#1080#1082#1080' '#1087#1086#1076#1088#1072#1079#1091#1084#1077#1074#1072#1083#1080', '#1082#1072#1082' '#1085#1072 +
          #1084' '#1082#1072#1078#1077#1090#1089#1103', '#1085#1086' '#1085#1077' '#1076#1086' '#1082#1086#1085#1094#1072' '#1089#1092#1086#1088#1084#1091#1083#1080#1088#1086#1074#1072#1083#1080'. '#1042#1086'-'#1087#1077#1088#1074#1099#1093',  '#1085#1077' '#1073#1099#1083#1086' '#1086#1087 +
          #1088#1077#1076#1077#1083#1077#1085#1086' '#1089#1082#1074#1086#1079#1085#1086#1077' '#1087#1088#1086#1085#1080#1082#1085#1086#1074#1077#1085#1080#1077' '#1084#1086#1076#1077#1083#1080'. '#1044#1072', '#1074#1089#1077' '#1089#1083#1099#1096#1072#1083#1080' '#1087#1088#1086' MDA,' +
          ' '#1085#1086' '#1084#1085#1086#1075#1086' '#1083#1080' '#1077#1075#1086' '#1074#1080#1076#1077#1083#1080'? '#1052#1099' '#1101#1090#1086' ?'#1080#1089#1087#1088#1072#1074#1080#1083#1080'?, '#1085#1072#1087#1088#1080#1084#1077#1088', '#1086#1076#1085#1072' '#1080#1079' '#1085 +
          #1072#1096#1080#1093' '#1074#1077#1088#1089#1080#1081' '#1084#1077#1090#1072#1084#1086#1076#1077#1083#1080' '#1087#1086#1076#1088#1072#1079#1091#1084#1077#1074#1072#1083#1072' '#1085#1072#1095#1072#1083#1086' '#1076#1080#1079#1072#1081#1085#1072' '#1089#1080#1089#1090#1077#1084#1099' '#1089' '#1086#1087 +
          #1080#1089#1072#1085#1080#1103' ?'#1087#1088#1086#1073#1083#1077#1084'? '#1085#1072' UML, '#1082#1086#1090#1086#1088#1099#1077' '#1086#1085#1072' '#1076#1086#1083#1078#1085#1072' '#1088#1077#1096#1080#1090#1100', '#1080#1079' '#1085#1080#1093' '#1076#1086#1083#1078#1085 +
          #1099' '#1073#1099#1083#1080' '#1088#1086#1078#1076#1072#1090#1100#1089#1103' ?'#1074#1086#1079#1084#1086#1078#1085#1086#1089#1090#1080'?, '#1080#1079' '#1085#1080#1093' - ?'#1087#1088#1077#1094#1077#1076#1077#1085#1090#1099'? '#1080' '#1090'.'#1076'. '#1076#1086' ' +
          '?'#1089#1077#1088#1074#1072#1085#1090#1086#1074'?, '#1076#1086' ?'#1073#1072#1081#1090#1086#1074'?. '#1042#1089#1105' '#1101#1090#1086' '#1073#1099#1083#1086' '#1086#1076#1085#1086#1081' '#1094#1077#1083#1086#1089#1090#1085#1086#1081' '#1084#1086#1076#1077#1083#1100#1102', ' +
          #1074' '#1082#1086#1090#1086#1088#1086#1081' '
        
          #1084#1086#1078#1085#1086' '#1073#1099#1083#1086' '#1087#1088#1086' '#1082#1072#1078#1076#1099#1081' ?'#1073#1072#1081#1090'? '#1089#1082#1072#1079#1072#1090#1100', '#1082#1072#1082#1091#1102' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100#1089#1082#1091#1102' '#1087#1088#1086 +
          #1073#1083#1077#1084#1091' '#1086#1085' '#1088#1077#1096#1072#1077#1090'. '#1040' '#1076#1083#1103' '#1082#1072#1078#1076#1086#1081' ?'#1087#1088#1086#1073#1083#1077#1084#1099'? -  '#1087#1086#1083#1091#1095#1080#1090#1100' '#1074#1077#1089#1100' '#1080#1089#1093#1086#1076#1085 +
          #1099#1081' '#1082#1086#1076' '#1089' '#1085#1077#1081' '#1089#1074#1103#1079#1072#1085#1085#1099#1081'.</p>'
        
          '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088'</strong>: '#1069#1090#1086' '#1087#1086#1076#1086#1073#1080#1077' ?'#1084#1072#1090#1088#1105#1096#1082#1080'? '#1080' ?'#1089#1073#1086#1088#1086#1095#1085 +
          #1099#1093' '#1095#1077#1088#1090#1077#1078#1077#1081'?. '#1055#1088#1080#1095#1105#1084' '#1085#1072' '#1088#1072#1079#1085#1099#1093' '#1091#1088#1086#1074#1085#1103#1093', '#1082#1086#1090#1086#1088#1099#1093' '#1084#1086#1078#1077#1090' '#1073#1099#1090#1100' '#1089#1082#1086#1083#1100 +
          ' '#1091#1075#1086#1076#1085#1086' '#1084#1085#1086#1075#1086', '#1072' '#1085#1077' '#1087#1088#1086#1089#1090#1086' Class View, Deployment View, '#1082#1072#1082' '#1091' ?'#1082 +
          #1083#1072#1089#1089#1080#1082#1086#1074'?. '#1063#1077#1088#1090#1105#1078' ?'#1091#1088#1086#1074#1085#1103' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1103'? '#1080' '#1095#1077#1088#1090#1105#1078' ?'#1091#1088#1086#1074#1085#1103' '#1082#1086#1085#1090#1077#1081#1085#1077 +
          #1088#1086#1074' '#1074' '#1089#1090#1080#1083#1077' STL?. UML '#1087#1086#1079#1074#1086#1083#1103#1077#1090' ?'#1083#1086#1075#1072#1088#1080#1092#1084#1080#1088#1086#1074#1072#1090#1100'? '#1089#1083#1086#1078#1085#1086#1089#1090#1100' '#1079#1072#1076#1072 +
          #1095#1080'. '#1044#1083#1103' '#1084#1077#1085#1103' '#1083#1080#1095#1085#1086' '#1087#1088#1086#1077#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'/'#1082#1086#1076#1080#1088#1086#1074#1072#1085#1080#1077'/'#1086#1090#1083#1072#1076#1082#1072'/'#1090#1077#1089#1090#1080#1088#1086#1074#1072#1085 +
          #1080#1077' '#1076#1086#1089#1090#1072#1090#1086#1095#1085#1086' '#1073#1086#1083#1100#1096#1086#1075#1086' UseCase -  '#1085#1077' '#1089#1080#1083#1100#1085#1086' '#1089#1083#1086#1078#1085#1077#1077' '#1086#1090#1083#1072#1076#1082#1080' ?'#1089#1087#1080 +
          #1089#1082#1072' '#1094#1077#1083#1099#1093'?. '#1044#1088#1091#1075#1086#1077' '#1076#1077#1083#1086', '#1095#1090#1086' '#1080' '#1086#1090#1083#1072#1076#1082#1072' ?'#1089#1087#1080#1089#1082#1072' '#1094#1077#1083#1099#1093'? - '#1080#1085#1086#1075#1076#1072' '#1084 +
          #1086#1078#1077#1090' '#1079#1072#1085#1080#1084#1072#1090#1100' '#1080' '#1084#1077#1089#1103#1094#1099'.</p>'
        
          '<p>'#1040' '#1090#1072#1082' - ?'#1089#1073#1086#1088#1086#1095#1085#1099#1077' '#1095#1077#1088#1090#1077#1078#1080'?, '#1084#1072#1090#1088#1105#1096#1082#1072' '#1080' ?'#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072' '#1084#1080#1082#1088#1086#1089#1093 +
          #1077#1084'?. '#1069#1090#1086' - '#1082#1088#1072#1077#1091#1075#1086#1083#1100#1085#1099#1077' '#1082#1072#1084#1085#1080'. '#1054#1085#1080' '#1089' '#1086#1076#1085#1086#1081' '#1089#1090#1086#1088#1086#1085#1099' - ?'#1083#1086#1075#1072#1088#1080#1092#1084#1080#1088 +
          #1091#1102#1090'? '#1089#1083#1086#1078#1085#1086#1089#1090#1100', '#1072' '#1089' '#1076#1088#1091#1075#1086#1081' '#1089#1090#1086#1088#1086#1085#1099' - '#1087#1086#1079#1074#1086#1083#1103#1102#1090' ?'#1073#1099#1089#1090#1088#1086' '#1084#1077#1085#1103#1090#1100' '#1084#1072 +
          #1089#1096#1090#1072#1073'? '#1088#1072#1089#1089#1084#1086#1090#1088#1077#1085#1080#1103' '#1089#1080#1089#1090#1077#1084#1099'.</p>'
        
          '<p>'#1048' '#1077#1097#1105', ?'#1082#1083#1072#1089#1089#1080#1082#1080'? '#1085#1077' '#1091#1076#1077#1083#1080#1083#1080' '#1076#1086#1083#1078#1085#1086#1075#1086' '#1074#1085#1080#1084#1072#1085#1080#1103' &lt;&lt;'#1089#1090#1077#1088#1077#1086 +
          #1090#1080#1087#1072#1084'&gt;&gt;. '#1040' '#1091' '#1085#1072#1089' '#1101#1090#1086' - '#1082#1088#1072#1077#1091#1075#1086#1083#1100#1085#1099#1081' '#1082#1072#1084#1077#1085#1100'. &lt;&lt;'#1057#1090#1077#1088#1077#1086 +
          #1090#1080#1087'&gt;&gt; - '#1101#1090#1086' '#1082#1072#1082' '#1088#1072#1079' '#1101#1083#1077#1084#1077#1085#1090' '#1072#1088#1093#1080#1090#1077#1082#1090#1091#1088#1099' '#1080' '#1084#1077#1090#1072'-'#1084#1086#1076#1077#1083#1080'. '#1057#1090#1077 +
          #1088#1077#1086#1090#1080#1087' '#1074#1083#1080#1103#1077#1090' '#1085#1072' '#1089#1087#1086#1089#1086#1073#1099' '#1082#1086#1076#1086#1075#1077#1085#1077#1088#1072#1094#1080#1080' '#1080' '#1085#1072' '#1082#1086#1085#1077#1095#1085#1099#1081' '#1082#1086#1076'.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>:  '#1054#1073#1089#1091 +
          #1076#1080#1084' '#1087#1086#1085#1103#1090#1080#1077' &lt;&lt;'#1089#1090#1077#1088#1077#1086#1090#1080#1087'&gt;&gt;?</span></p>'
        
          '<p><strong>'#1052#1072#1082#1089#1080#1084'</strong>: '#1054#1089#1085#1086#1074#1085#1072#1103' '#1087#1088#1086#1073#1083#1077#1084#1072' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1103' UML ' +
          #1074' ?'#1082#1083#1072#1089#1089#1080#1095#1077#1089#1082#1080#1093'? '#1080#1085#1089#1090#1088#1091#1084#1077#1085#1090#1072#1093' '#1074' '#1090#1086#1084' '#1095#1090#1086', '#1082#1086#1076#1086#1075#1077#1085#1077#1088#1072#1094#1080#1103' '#1078#1077#1089#1090#1082#1086' '#1089#1074 +
          #1103#1079#1072#1085#1072' '#1089' '#1087#1088#1077#1076#1086#1087#1088#1077#1076#1077#1083#1077#1085#1085#1086#1081' '#1089#1090#1072#1090#1080#1095#1077#1089#1082#1086#1081' '#1084#1077#1090#1072#1084#1086#1076#1077#1083#1100#1102'. '#1042#1099' '#1085#1077' '#1084#1086#1078#1077#1090#1077' '#1080 +
          #1079#1084#1077#1085#1080#1090#1100' '#1085#1080' '#1086#1076#1085#1086', '#1085#1080' '#1076#1088#1091#1075#1086#1077'. '#1053#1080' '#1080#1079#1084#1077#1085#1080#1090#1100', '#1085#1080' '#1088#1072#1089#1096#1080#1088#1080#1090#1100', '#1085#1080' '#1087#1086#1084#1077#1085#1103 +
          #1090#1100' '#1087#1088#1072#1074#1080#1083#1072' '#1080#1083#1080' '#1079#1072#1076#1072#1090#1100' '#1085#1086#1074#1099#1077' '#1089#1087#1077#1094#1080#1092#1080#1095#1077#1089#1082#1080#1077'. '#1043#1083#1072#1074#1085#1086#1077', '#1095#1090#1086' '#1082#1083#1072#1089#1089#1080#1082#1080 +
          ' '#1085#1077' '#1088#1072#1089#1082#1088#1099#1083#1080' '#1096#1080#1088#1086#1082#1086#1081' '#1087#1091#1073#1083#1080#1082#1077', '#1072' ?'#1082#1083#1072#1089#1089#1080#1095#1077#1089#1082#1080#1077' '#1080#1085#1089#1090#1088#1091#1084#1077#1085#1090#1099'? '#1085#1077' '#1088#1077 +
          #1072#1083#1080#1079#1086#1074#1072#1083#1080', '#1101#1090#1086' '#1087#1086#1090#1077#1085#1094#1080#1072#1083' UML '#1080#1084#1077#1085#1085#1086' '#1089' '#1090#1086#1095#1082#1080' '#1079#1088#1077#1085#1080#1103' '#1084#1077#1090#1072'-'#1082#1086#1085#1089#1090#1088#1091#1080 +
          #1088#1086#1074#1072#1085#1080#1103'. '#1057#1086#1079#1076#1072#1085#1080#1103' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1099#1093' '#1084#1077#1090#1072#1084#1086#1076#1077#1083#1077#1081' '#1089#1086' '#1089#1074#1086#1077#1081' '#1089#1087#1077#1094#1080#1092#1080#1095#1077#1089#1082#1086#1081 +
          ' '#1082#1086#1076#1075#1077#1085#1077#1088#1072#1094#1080#1077#1081'. '#1048' '#1074#1086#1090' '#1090#1091#1090' '#1082#1083#1102#1095#1077#1074#1091#1102' '#1088#1086#1083#1100' '#1085#1072#1095#1080#1085#1072#1077#1090' '#1080#1075#1088#1072#1090#1100' '#1087
        
          #1086#1085#1103#1090#1080#1077' &lt;&lt;'#1089#1090#1077#1088#1077#1086#1090#1080#1087#1072'&gt;&gt;, '#1086' '#1082#1086#1090#1086#1088#1086#1084' '#1075#1086#1074#1086#1088#1080#1090' '#1040#1083#1077#1082#1089#1072#1085#1076#1088'. ' +
          #1057#1090#1077#1088#1077#1086#1090#1080#1087' '#1087#1086#1079#1074#1086#1083#1103#1077#1090' '#1085#1072#1084' '#1086#1087#1088#1077#1076#1077#1083#1080#1090#1100' '#1075#1088#1091#1087#1087#1091' '#1089#1087#1077#1094#1080#1092#1080#1095#1077#1089#1082#1080#1093' '#1084#1077#1090#1072#1082#1083#1072#1089 +
          #1089#1086#1074' '#1089' '#1087#1088#1080#1074#1103#1079#1082#1086#1081' '#1082' '#1085#1080#1084' '#1087#1088#1086#1080#1079#1074#1086#1083#1100#1085#1086#1081' '#1082#1086#1076#1086#1075#1077#1085#1077#1088#1072#1094#1080#1080'. '#1060#1072#1082#1090#1080#1095#1077#1089#1082#1080', '#1089' ' +
          #1087#1086#1084#1086#1097#1100#1102' '#1089#1090#1077#1088#1077#1086#1090#1080#1087#1086#1074', '#1074#1099' '#1092#1086#1088#1084#1080#1088#1091#1077#1090#1077' '#1087#1088#1086#1080#1079#1074#1086#1083#1100#1085#1091#1102' '#1084#1077#1090#1072'-'#1084#1086#1076#1077#1083#1100', '#1082#1086#1090 +
          #1086#1088#1072#1103' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1089#1090#1072#1085#1086#1074#1080#1090#1089#1103' '#1074#1072#1096#1080#1084' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1099#1084' DSL, '#1090#1088#1072#1085#1089#1092#1086#1088#1084#1080#1088 +
          #1091#1102#1097#1080#1084' '#1082#1074#1072#1076#1088#1072#1090#1080#1082#1080' '#1074' '#1082#1086#1076', '#1087#1086' '#1083#1102#1073#1099#1084' '#1087#1088#1072#1074#1080#1083#1072#1084' '#1082#1086#1090#1086#1088#1099#1077' '#1074#1099' '#1088#1077#1072#1083#1080#1079#1091#1077#1090#1077'.' +
          ' '#1048#1084#1077#1085#1085#1086' '#1101#1090#1086#1090' '#1072#1089#1087#1077#1082#1090' '#1087#1086#1079#1074#1086#1083#1080#1083' UML '#1089#1090#1072#1090#1100' '#1076#1083#1103' '#1085#1072#1089' '#1085#1077' '#1087#1088#1086#1089#1090#1086' '#1080#1085#1089#1090#1088#1091#1084 +
          #1077#1085#1090#1086#1084' '#1076
        
          #1083#1103' '#1088#1080#1089#1086#1074#1072#1085#1080#1103' '#1082#1072#1088#1090#1080#1085#1086#1082', '#1072' '#1090#1077#1084', '#1095#1090#1086' '#1088#1077#1072#1083#1100#1085#1086' '#1091#1087#1088#1086#1097#1072#1077#1090' '#1087#1088#1086#1094#1077#1089#1089' '#1088#1072#1079#1088#1072 +
          #1073#1086#1090#1082#1080', '#1080#1085#1086#1075#1076#1072' '#1076#1077#1083#1072#1103' '#1087#1086#1080#1089#1090#1080#1085#1077' '#1085#1077#1074#1086#1079#1084#1086#1078#1085#1086#1077' - '#1074#1086#1079#1084#1086#1078#1085#1099#1084'. '#1048' '#1082#1072#1082' '#1085#1072#1084' ' +
          #1082#1072#1078#1077#1090#1089#1103', '#1086#1090#1089#1091#1090#1089#1090#1074#1080#1077' '#1101#1090#1086#1075#1086' '#1080#1083#1080' '#1072#1085#1072#1083#1086#1075#1080#1095#1085#1086#1075#1086' '#1084#1077#1093#1072#1085#1080#1079#1084#1072' '#1074' '#1082#1086#1084#1084#1077#1088#1095#1077#1089 +
          #1082#1080#1093' '#1080#1085#1089#1090#1088#1091#1084#1077#1085#1090#1072#1093', '#1080' '#1087#1088#1080#1074#1086#1076#1080#1090' '#1089#1077#1081#1095#1072#1089' '#1082' '#1090#1086#1084#1091', '#1095#1090#1086' UML '#1087#1077#1088#1077#1089#1090#1072#1102#1090' '#1080#1089 +
          #1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' '#1080' '#1089#1084#1086#1090#1088#1103#1090' '#1085#1072' '#1085#1077#1075#1086' '#1082#1072#1082' '#1085#1072' ?'#1087#1103#1090#1091#1102' '#1085#1086#1075#1091'?.</p>'
        
          '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088'</strong>: '#1044#1086#1073#1072#1074#1083#1102', '#1074' UML '#1077#1089#1090#1100' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1072#1103' ?' +
          #1084#1077#1090#1072'-'#1084#1086#1076#1077#1083#1100'?, '#1085#1072#1088#1080#1089#1086#1074#1072#1085#1085#1072#1103' '#1085#1072' '#1089#1072#1084#1086#1084' '#1078#1077' UML. '#1042' '#1085#1077#1081' '#1077#1089#1090#1100' '#1087#1086#1085#1103#1090#1080#1077' ?' +
          #1082#1083#1072#1089#1089' '#1101#1083#1077#1084#1077#1085#1090#1072'?. '#1069#1090#1086' - Class, Category, Operation, Attribute, De' +
          'pendency, Port, UseCase, Actor '#1080' '#1090'.'#1076'.  '#1048#1079' '#1101#1090#1080#1093' '#1082#1083#1072#1089#1089#1086#1074' '#1089#1090#1088#1086#1103#1090#1089#1103' ' +
          '?'#1082#1086#1085#1077#1095#1085#1099#1077' '#1076#1080#1072#1075#1088#1072#1084#1084#1099'?. '#1048' '#1082#1086#1076#1086#1075#1077#1085#1077#1088#1072#1094#1080#1102' '#1086#1073#1099#1095#1085#1086' '#1087#1088#1080#1074#1103#1079#1099#1074#1072#1102#1090' '#1082#1072#1082' '#1088#1072#1079 +
          ' '#1082' '#1082#1083#1072#1089#1089#1091'. '#1053#1086' '#1074' '#1101#1090#1086#1084' '#1080' '#1086#1096#1080#1073#1082#1072' '#1091' ?'#1082#1083#1072#1089#1089#1080#1082#1086#1074'? - '#1085#1077#1090' '#1085#1080' '#1075#1080#1073#1082#1086#1089#1090#1080', '#1085 +
          #1080' '#1088#1072#1089#1096#1080#1088#1103#1077#1084#1086#1089#1090#1080'. '#1052#1099' '#1078#1077' '#1087#1086#1076#1085#1103#1083#1080#1089#1100' '#1082#1072#1082' '#1073#1099' '#1085#1072' '#1091#1088#1086#1074#1077#1085#1100' '#1074#1099#1096#1077'. '#1057#1086#1073#1089#1090#1074#1077 +
          #1085#1085#1086' UML '#1086#1087#1080#1089#1099#1074#1072#1077#1090' '#1091' '#1085#1072#1089' '#1084#1077#1090#1072'-'#1084#1077#1090#1072'-'#1084#1086#1076#1077#1083#1100', '#1090'.'#1077'. '#1087#1088#1072#1074#1080#1083#1072' '#1092#1086#1088#1084#1080#1088#1086#1074#1072 +
          #1085#1080#1103' '#1087#1088#1072#1074#1080#1083'. '#1044#1072#1083#1100#1096#1077' '#1084#1099' '#1086#1087#1088#1077#1076#1077#1083#1103#1077#1084' '#1084#1077#1090#1072'-'#1084#1086#1076#1077#1083#1100', '#1074#1074#1086#1076#1103' '#1074' '#1085#1077#1077' '#1083#1102#1073#1099#1077' ' +
          #1085#1091#1078#1085#1099#1077' '#1085#1072#1084' '#1087#1086#1085#1103#1090#1080#1103'. '#1053#1072#1087#1088#1080#1084#1077#1088', '#1084#1099' '#1084#1086#1078#1077#1084' '#1086#1087#1088#1077#1076
        
          #1077#1083#1080#1090#1100' '#1076#1083#1103' Delphi '#1074#1086#1079#1084#1086#1078#1085#1086#1089#1090#1100' '#1084#1085#1086#1078#1077#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1085#1072#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103'.  '#1047#1072#1090#1077#1084 +
          ' '#1087#1088#1080#1074#1103#1079#1099#1074#1072#1077#1084' '#1082' '#1101#1090#1086#1081' '#1084#1077#1090#1072#1084#1086#1076#1077#1083#1080' '#1087#1088#1072#1074#1080#1083#1072' '#1087#1088#1077#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1103' '#1077#1077' '#1101#1083#1077#1084#1077#1085#1090 +
          #1086#1074' '#1074' '#1082#1086#1076' ('#1080#1083#1080' '#1083#1102#1073#1099#1077' '#1076#1088#1091#1075#1080#1077' '#1072#1088#1090#1077#1092#1072#1082#1090#1099', '#1085#1072#1087#1088#1080#1084#1077#1088' '#1074' '#1076#1086#1082#1091#1084#1077#1085#1090#1072#1094#1080#1102', '#1074 +
          #1089#1087#1086#1084#1086#1075#1072#1090#1077#1083#1100#1085#1099#1077' '#1092#1072#1081#1083#1099' '#1080' '#1090'.'#1076'.). '#1042' '#1087#1088#1080#1084#1077#1088#1077' '#1089' '#1084#1085#1086#1078#1077#1089#1090#1074#1077#1085#1085#1099#1084' '#1085#1072#1089#1083#1077#1076#1086#1074 +
          #1072#1085#1080#1077#1084' '#1101#1090#1086' '#1084#1086#1078#1077#1090' '#1073#1099#1090#1100' '#1090#1088#1072#1085#1089#1092#1086#1088#1084#1072#1094#1080#1077#1081' '#1074' '#1086#1076#1080#1085#1086#1095#1085#1086#1077' '#1085#1072#1089#1083#1077#1076#1086#1074#1072#1085#1080#1077' '#1087#1083#1102 +
          #1089' '#1072#1075#1088#1077#1075#1072#1094#1080#1102', '#1085#1086' '#1087#1088#1080' '#1101#1090#1086#1084' '#1090#1072#1082', '#1095#1090#1086' '#1089' '#1090#1086#1095#1082#1080' '#1079#1088#1077#1085#1080#1103' '#1087#1088#1086#1075#1088#1072#1084#1084#1080#1089#1090#1072' '#1101#1090 +
          #1086' '#1073#1091#1076#1077#1090' '#1074#1099#1075#1083#1103#1076#1077#1090#1100' '#1080#1084
        
          #1077#1085#1085#1086' '#1082#1072#1082' 100% '#1085#1072#1089#1083#1077#1076#1086#1074#1072#1085#1080#1077'. '#1053#1072#1082#1086#1085#1077#1094', '#1084#1099' '#1089#1086#1079#1076#1072#1077#1084' '#1088#1077#1072#1083#1100#1085#1099#1077' '#1084#1086#1076#1077#1083#1080' ' +
          #1089#1074#1086#1077#1081' '#1087#1088#1077#1076#1084#1077#1090#1085#1086#1081' '#1086#1073#1083#1072#1089#1090#1080', '#1085#1086' '#1091#1078#1077' '#1086#1087#1077#1088#1080#1088#1091#1103' '#1085#1077' '#1090#1077#1084', '#1095#1090#1086' '#1085#1072#1084' '#1080#1079#1085#1072#1095#1072 +
          #1083#1100#1085#1086' '#1087#1088#1077#1076#1083#1086#1078#1080#1083#1080' ?'#1082#1083#1072#1089#1089#1080#1082#1080'?, '#1072' '#1074#1089#1077#1084' '#1090#1077#1084' '#1072#1088#1089#1077#1085#1072#1083#1086#1084', '#1095#1090#1086' '#1084#1099' '#1089#1072#1084#1080' '#1087#1088 +
          #1080#1076#1091#1084#1072#1083#1080' '#1085#1072' '#1084#1077#1090#1072'-'#1091#1088#1086#1074#1085#1077' '#1080' '#1087#1086#1083#1091#1095#1072#1077#1084' '#1080#1079' '#1085#1080#1093' '#1075#1086#1090#1086#1074#1099#1081' '#1082#1086#1076' '#1087#1088#1086#1080#1079#1074#1086#1083#1100#1085#1086 +
          #1081' '#1089#1083#1086#1078#1085#1086#1089#1090#1080'.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1056#1072#1089#1089#1082 +
          #1072#1078#1080#1090#1077' '#1076#1077#1090#1072#1083#1100#1085#1086', '#1082#1072#1082' '#1101#1090#1086' '#1074#1089#1105' '#1091' '#1074#1072#1089' '#1088#1072#1079#1074#1080#1074#1072#1083#1086#1089#1100' - '#1089#1090#1091#1087#1077#1085#1095#1072#1090#1086'?</spa' +
          'n></p>'
        
          '<p><strong>'#1052#1072#1082#1089#1080#1084'</strong>: '#1042' '#1085#1072#1095#1072#1083#1077' '#1088#1072#1073#1086#1090' '#1085#1072#1076' '#1085#1086#1074#1086#1081' '#1074#1077#1088#1089#1080#1077#1081' ?'#1043#1072 +
          #1088#1072#1085#1090#1072'? (?'#1055#1083#1072#1090#1092#1086#1088#1084#1072' '#1060'1?), '#1087#1077#1088#1077#1076' '#1085#1072#1084#1080' '#1074#1089#1090#1072#1083#1072' '#1087#1088#1086#1073#1083#1077#1084#1072': '#1089#1077#1088#1074#1077#1088' '#1088#1072#1079#1088 +
          #1072#1073#1072#1090#1099#1074#1072#1083#1089#1103' '#1085#1072' C++/CORBA, '#1072' '#1082#1083#1080#1077#1085#1090' - '#1086#1073#1086#1083#1086#1095#1082#1072' '#1085#1072' Delphi. '#1055#1086' '#1086#1087#1088#1077#1076 +
          #1077#1083#1077#1085#1085#1099#1084' '#1087#1088#1080#1095#1080#1085#1072#1084' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' '#1085#1072' '#1086#1073#1086#1083#1086#1095#1082#1077', '#1088#1086#1076#1085#1086#1081' '#1076#1083#1103' Delphi, Vi' +
          'siBroker,  '#1084#1099' '#1085#1077' '#1084#1086#1075#1083#1080', '#1072' '#1076#1083#1103' '#1089#1077#1088#1074#1077#1088#1085#1086#1081' '#1095#1072#1089#1090#1080' '#1074#1084#1077#1085#1103#1077#1084#1086#1081' '#1072#1083#1100#1090#1077#1088#1085#1072 +
          #1090#1080#1074#1099' '#1084#1099' '#1085#1077' '#1074#1080#1076#1077#1083#1080'. '#1058#1086#1075#1076#1072' '#1073#1099#1083#1086' '#1087#1088#1077#1076#1083#1086#1078#1077#1085#1086' '#1088#1077#1096#1077#1085#1080#1077', '#1079#1072#1074#1077#1089#1090#1080' '#1085#1072' '#1082#1083#1080 +
          #1077#1085#1090#1077' ?'#1072#1076#1072#1087#1090#1077#1088'? (dll '#1085#1072' C++), '#1082#1086#1090#1086#1088#1099#1081' '#1073#1099' '#1088#1072#1073#1086#1090#1072#1083' '#1089' '#1089#1077#1088#1074#1077#1088#1086#1084', '#1080#1089#1087#1086 +
          #1083#1100#1079#1091#1103' CORBA, '#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086' '#1087#1088#1086#1074#1086#1076#1103' '#1082#1072#1082#1080#1077'-'#1090#1086' '#1074#1085#1091#1090#1088#1077#1085#1085#1080#1077' '#1087#1088#1077#1086#1073#1088#1072#1079#1086 +
          #1074#1072#1085#1080#1103', '#1082#1077#1096#1080#1088#1086#1074#1072#1085#1080#1077' '#1080' '#1076#1072#1078#1077' '#1089#1086#1076#1077#1088#1078#1072' '#1085#1077#1082#1086#1090#1086#1088#1091#1102' '#1095#1072#1089#1090#1100' '#1082#1083#1080#1077#1085#1090#1089#1082#1086#1081' '#1083#1086#1075 +
          #1080#1082#1080', '#1086#1090#1076#1072#1074#1072#1103' '#1087#1088#1080' '#1101#1090#1086#1084' '
        
          #1074#1089#1077', '#1095#1090#1086' '#1085#1091#1078#1085#1086' '#1086#1073#1086#1083#1086#1095#1082#1077' '#1085#1072' Delphi '#1074' '#1087#1086#1085#1103#1090#1085#1086#1084' '#1080' '#1091#1076#1086#1073#1085#1086#1084' '#1076#1083#1103' '#1085#1077#1077' '#1074 +
          #1080#1076#1077'. '#1044#1091#1084#1072#1102', '#1085#1077' '#1089#1090#1086#1080#1090' '#1075#1086#1074#1086#1088#1080#1090#1100', '#1095#1090#1086' '#1091' '#1090#1072#1082#1086#1081' '#1089#1080#1089#1090#1077#1084#1099' '#1082#1072#1082' ?'#1043#1072#1088#1072#1085#1090'?,' +
          ' '#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072' '#1080#1085#1090#1077#1088#1092#1077#1081#1089#1086#1074', '#1095#1077#1088#1077#1079' '#1082#1086#1090#1086#1088#1099#1077' '#1074#1079#1072#1080#1084#1086#1076#1077#1081#1089#1090#1074#1086#1074#1072#1083#1080' '#1072#1076#1072#1087#1090 +
          #1077#1088' '#1080' '#1086#1073#1086#1083#1086#1095#1082#1072', '#1073#1099#1089#1090#1088#1086' '#1087#1088#1080#1086#1073#1088#1077#1083#1072' '#1091#1075#1088#1086#1078#1072#1102#1097#1080#1077' '#1088#1072#1079#1084#1077#1088#1099'. '#1040' '#1090#1077#1087#1077#1088#1100' '#1087#1088#1077 +
          #1076#1089#1090#1072#1074#1100#1090#1077', '#1095#1090#1086' '#1089#1086#1073#1086#1081' '#1087#1088#1077#1076#1089#1090#1072#1074#1083#1103#1077#1090' '#1083#1102#1073#1086#1081' '#1086#1073#1098#1077#1082#1090#1085#1099#1081' '#1080#1085#1090#1077#1088#1092#1077#1081#1089', '#1084#1077#1078#1076 +
          #1091' dll '#1085#1072' C++ '#1080' delphi? '#1045#1089#1083#1080' '#1082#1088#1072#1090#1082#1086' '#1090#1086' '#1101#1090#1086' ?'#1089#1091#1097#1080#1081' '#1072#1076'?: '#1088#1072#1079#1085#1099#1077' '#1087#1088#1072 +
          #1074#1080#1083#1072' '#1087#1077#1088#1077#1076#1072#1095#1080' '#1090#1080#1087#1086#1074', '#1088#1072#1079#1085#1086#1077' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1087#1072#1084
        
          #1103#1090#1100#1102', '#1086#1090#1089#1091#1090#1089#1090#1074#1080#1077' '#1082#1086#1085#1090#1088#1086#1083#1103' '#1086#1087#1080#1089#1072#1085#1080#1103' '#1074' '#1101#1082#1089#1087#1086#1088#1090#1080#1088#1091#1077#1084#1086#1084' header-'#1077' '#1080' '#1074 +
          ' Delphi, '#1082#1086#1075#1076#1072' '#1072#1073#1089#1086#1083#1102#1090#1085#1086' '#1083#1102#1073#1086#1077' '#1085#1077#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077' '#1087#1088#1080#1074#1086#1076#1080#1090' '#1082' '#1089#1086#1074#1077#1088#1096#1077 +
          #1085#1085#1086' '#1085#1077#1087#1088#1077#1076#1089#1082#1072#1079#1091#1077#1084#1099#1084' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1072#1084' '#1080' '#1089#1074#1077#1088#1093'-'#1085#1077#1090#1088#1080#1074#1080#1072#1083#1100#1085#1086#1081' '#1086#1090#1083#1072#1076#1082#1077' '#1080' ' +
          #1090'.'#1076'.</p>'
        
          '<p>'#1057' '#1091#1095#1077#1090#1086#1084', '#1090#1086#1075#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072' '#1080#1085#1090#1077#1088#1092#1077#1081#1089#1086#1074', '#1082#1086#1090#1086#1088#1086#1077' '#1073#1099#1083#1080' '#1080' '#1077#1097#1077' '#1086#1073#1077 +
          #1097#1072#1083#1086' '#1073#1099#1090#1100', '#1072' '#1090#1072#1082' '#1078#1077' '#1089#1090#1077#1087#1077#1085#1080' '#1080#1093' '#1080#1079#1084#1077#1085#1095#1080#1074#1086#1089#1090#1080', '#1084#1099' '#1073#1099#1089#1090#1088#1086' '#1087#1086#1085#1103#1083#1080',  ' +
          #1095#1090#1086' '#1079#1072#1076#1072#1095#1072' '#1087#1086' '#1089#1091#1090#1080' '#1085#1077' '#1074#1099#1087#1086#1083#1085#1080#1084#1072'. '#1042#1086#1090' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1086' '#1074' '#1101#1090#1086#1090' '#1084#1086#1084#1077#1085#1090' '#1084#1099 +
          ' '#1074#1087#1077#1088#1074#1099#1077' '#1080' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1083#1080' UML ?'#1087#1086' '#1085#1072#1079#1085#1072#1095#1077#1085#1080#1102'?. '#1057#1074#1086#1081' '#1075#1077#1085#1077#1088#1072#1090#1086#1088' '#1076#1083#1103' ' +
          'CORBA IDL '#1091' '#1085#1072#1089' '#1091#1078#1077' '#1073#1099#1083', '#1080' '#1086#1085' '#1091#1078#1077' '#1073#1099#1083' '#1087#1086#1089#1090#1088#1086#1077#1085' '#1087#1086' '#1087#1088#1080#1085#1094#1080#1087#1091' '#1096#1072#1073#1083#1086 +
          #1085#1086#1074', '#1086#1087#1080#1089#1099#1074#1072#1102#1097#1080#1093' '#1084#1077#1090#1072#1084#1086#1076#1077#1083#1100' '#1080' '#1082#1086#1076#1086#1075#1077#1085#1077#1088#1072#1094#1080#1102' '#1085#1072' '#1077#1077' '#1086#1089#1085#1086#1074#1077'. '#1057#1086#1073#1089#1090#1074 +
          #1077#1085#1085#1086' '#1074#1089#1077', '#1095#1090#1086' '#1085#1091#1078#1085#1086' '#1073#1099#1083#1086' '#1101#1090#1086' - '#1086#1087#1088#1077#1076#1077#1083#1080#1090#1100' '#1085#1086#1074#1091#1102' '#1084#1077#1090#1072#1084#1086#1076#1077#1083#1100' '#1076#1083#1103' '#1080 +
          #1085#1090#1077#1088#1092#1077#1081#1089#1086#1074' '#1072#1076#1072#1087#1090#1077#1088#1072' '#1080' '#1086#1087#1080#1089#1072#1090#1100' '#1085#1072' '#1077#1077' '#1086#1089#1085#1086#1074#1077' '#1082#1086#1076#1086#1075#1077#1085#1077#1088#1072#1094#1080#1102', '#1085#1072' '#1074#1099#1093 +
          #1086#1076#1077' '#1082#1086#1090#1086#1088#1086#1081' '#1087#1086#1083#1091#1095#1072#1083#1080#1089#1100' '#1073#1099' '#1085#1072' 100% '#1089#1086#1075#1083#1072#1089#1086#1074#1072#1085#1085#1099#1077' '#1086#1087#1080#1089#1072#1085#1080#1080' '#1082#1072#1082' '#1076
        
          #1083#1103' C++, '#1090#1072#1082' '#1080' '#1076#1083#1103' Delphi, '#1089' '#1091#1095#1077#1090#1086#1084' '#1074#1089#1077#1093' '#1086#1089#1086#1073#1077#1085#1085#1086#1089#1090#1077#1081' '#1080' '#1090#1086#1085#1082#1086#1089#1090#1077#1081 +
          '.</p>'
        
          '<p>'#1042' '#1080#1090#1086#1075#1077', '#1074#1089#1077' '#1073#1099#1083#1086' '#1089#1076#1077#1083#1072#1085#1086' '#1076#1086#1089#1090#1072#1090#1086#1095#1085#1086' '#1073#1099#1089#1090#1088#1086', '#1080' '#1085#1072#1095#1083#1086' '#1087#1088#1080#1085#1086#1089#1080#1090 +
          #1100' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1099'. '#1055#1088#1086#1075#1088#1072#1084#1084#1080#1089#1090#1099' '#1085#1072' '#1057'++, '#1082#1086#1090#1086#1088#1099#1077' '#1087#1080#1089#1072#1083#1080' '#1072#1076#1072#1087#1090#1077#1088', '#1073#1086#1083#1100#1096 +
          #1077' '#1085#1077' '#1079#1072#1076#1091#1084#1099#1074#1072#1083#1080#1089#1100' '#1074#1086#1086#1073#1097#1077' '#1086' '#1090#1086#1084', '#1095#1090#1086' '#1095#1090#1086'-'#1090#1086', '#1082#1091#1076#1072'-'#1090#1086' '#1085#1091#1078#1085#1086' '#1101#1082#1089#1087#1086#1088 +
          #1090#1080#1088#1086#1074#1072#1090#1100'  '#1055#1088#1086#1075#1088#1072#1084#1084#1080#1089#1090#1099' '#1085#1072' Delphi, '#1088#1072#1073#1086#1090#1072#1083#1080' '#1089' '#1072#1076#1072#1087#1090#1077#1088#1086#1084' '#1090#1072#1082', '#1082#1072#1082' ' +
          #1073#1091#1076#1090#1086' '#1086#1085' '#1073#1099#1083' '#1085#1072#1087#1080#1089#1072#1085' '#1087#1086#1083#1085#1086#1089#1090#1100#1102' '#1085#1072' Delphi, '#1087#1086' '#1087#1088#1080#1074#1099#1095#1085#1099#1084' '#1080#1084' '#1087#1088#1080#1085#1094#1080 +
          #1087#1072#1084' '#1074#1087#1083#1086#1090#1100' '#1076#1086' '#1080#1084#1077#1085#1086#1074#1072#1085#1080#1103' '#1084#1077#1090#1086#1076#1086#1074' '#1080' '#1089#1074#1086#1081#1089#1090#1074'. '#1042#1089#1077' '#1087#1088#1086#1089#1090#1086' '#1088#1080#1089#1086#1074#1072#1083#1080' ' +
          #1085#1072' '#1084#1086#1076#1077#1083#1080' '#1085#1091#1078#1085#1099#1077' '#1080#1085#1090#1077#1088#1092#1077#1081#1089#1099', '#1075#1077#1085#1077#1088#1080#1088#1086#1074#1072#1083#1080' '#1082#1086#1076' '#1080' '#1088#1072#1073#1086#1090#1072#1083#1080' ?'#1085#1072#1090#1080#1074#1085 +
          #1099#1084'? '#1086#1073#1088#1072#1079#1086#1084' '#1076#1083#1103' '#1086#1073#1086#1080#1093' '#1103#1079#1099#1082#1086#1074'. '#1055#1086' '#1073#1086#1083#1100#1096#1086#1084#1091' '#1089#1095#1077#1090#1091', '#1101#1090#1086' '#1073#1099#1083#1086' '#1087#1077#1088#1074#1086#1081 +
          ' suc'#1089'ess story, '#1087#1086#1089#1083#1077' '#1082#1086#1090#1086#1088#1086#1081' '#1084#1099' '#1072#1082#1090#1080#1074#1085#1086' '#1085#1072#1095#1072#1083#1080' '#1088#1072#1079#1074#1080#1074#1072#1090#1100' '#1080#1076#1077#1102' '#1096 +
          #1072#1073
        
          #1083#1086#1085#1085#1086#1081' '#1075#1077#1085#1077#1088#1072#1094#1080#1080' '#1080' '#1084#1077#1090#1072#1084#1086#1076#1077#1083#1080#1088#1086#1074#1072#1085#1080#1103'. '#1048' '#1074#1086' '#1084#1085#1086#1075#1080#1093' '#1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1103#1093' (' +
          #1093#1086#1090#1100' '#1080' '#1085#1077' '#1074#1086' '#1074#1089#1077#1093') '#1076#1086#1073#1080#1083#1080#1089#1100' '#1074#1087#1077#1095#1072#1090#1083#1103#1102#1097#1080#1093' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1086#1074'.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1050#1072#1082' '#1087 +
          #1088#1086#1080#1089#1093#1086#1076#1080#1090' '#1074#1086#1074#1083#1077#1095#1077#1085#1080#1077' '#1085#1086#1074#1086#1075#1086' '#1095#1077#1083#1086#1074#1077#1082#1072' '#1074' '#1082#1086#1084#1072#1085#1076#1091' '#1088#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082#1086#1074'? '#1045#1084 +
          #1091' '#1076#1072#1102#1090' ?'#1087#1086#1076' '#1085#1086#1089'? '#1074#1086#1088#1086#1093' '#1076#1080#1072#1075#1088#1072#1084#1084'? '#1048#1083#1080' '#1085#1072#1095#1080#1085#1072#1077#1090' '#1086#1085' '#1089' '#1101#1083#1077#1084#1077#1085#1090#1072#1088#1085#1099#1093' ' +
          #1086#1087#1077#1088#1072#1094#1080#1081', '#1085#1077' '#1090#1088#1077#1073#1091#1102#1097#1080#1093' ?'#1074#1080#1076#1077#1090#1100' '#1089#1080#1089#1090#1077#1084#1091' '#1074' '#1094#1077#1083#1086#1084'??</span></p>'
        
          '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088'</strong>: '#1045#1089#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1085#1077#1082#1083#1102#1095#1077#1074#1099#1093' '#1080#1083#1080' '#1074#1090#1086#1088#1086#1089 +
          #1090#1077#1087#1077#1085#1085#1099#1093' '#1074#1086#1079#1084#1086#1078#1085#1086#1089#1090#1077#1081'. '#1044#1083#1103' '#1085#1072#1095#1072#1083#1072' - '#1076#1072#1105#1084' '#1080#1093'. '#1053#1086' '#1085#1077' '#1086#1095#1077#1085#1100' '#1084#1085#1086#1075#1086'. ' +
          #1063#1090#1086#1073#1099' '#1085#1077' ?'#1086#1090#1073#1080#1090#1100' '#1086#1093#1086#1090#1091'? '#1088#1091#1090#1080#1085#1086#1081'. '#1057#1084#1086#1090#1088#1080#1084', '#1082#1072#1082' '#1074#1090#1103#1075#1080#1074#1072#1077#1090#1089#1103'. '#1055#1086#1087#1091#1090 +
          #1085#1086' '#1088#1072#1089#1089#1082#1072#1079#1099#1074#1072#1077#1084' '#1087#1088#1086' ?'#1080#1085#1092#1088#1072#1089#1090#1088#1091#1082#1090#1091#1088#1091'? '#1080' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1099#1077' '#1082#1086#1084#1087#1086#1085#1077#1085#1090#1099'. '#1050 +
          #1086#1085#1089#1091#1083#1100#1090#1080#1088#1091#1077#1084' '#1091#1089#1090#1085#1086' '#1080' '#1087#1080#1089#1100#1084#1077#1085#1085#1086'. '#1045#1089#1090#1100' '#1077#1097#1105' '#1085#1072#1073#1086#1088' '#1076#1086#1082#1091#1084#1077#1085#1090#1072#1094#1080#1080', '#1082#1086#1090 +
          #1086#1088#1091#1102' '#1088#1077#1082#1086#1084#1077#1085#1076#1091#1077#1084' '#1095#1080#1090#1072#1090#1100'. '#1055#1086#1090#1086#1084', '#1087#1086#1089#1090#1077#1087#1077#1085#1085#1086', ?'#1085#1072#1089#1090#1086#1103#1097#1080#1077'? '#1079#1072#1076#1072#1095#1080', ' +
          #1084#1086#1076#1077#1083#1100' '#1080' '#1074#1089#1105' '#1086#1089#1090#1072#1083#1100#1085#1086#1077'. '#1050#1072#1082'-'#1090#1086' '#1090#1072#1082'. '#1045#1089#1083#1080' '#1073#1099#1074#1072#1102#1090' '#1085#1072' '#1087#1086#1074#1077#1089#1090#1082#1077' '#1076#1085#1103' ' +
          '?'#1086#1090#1076#1077#1083#1100#1085#1086' '#1089#1090#1086#1103#1097#1080#1077' '#1073#1086#1083#1100#1096#1080#1077' '#1079#1072#1076#1072#1095#1080'?, '#1090#1086' '#1080' '#1089' '#1085#1080#1093' '#1085#1072#1095#1080#1085#1072#1077#1084'.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1042#1089#1077#1084' ' +
          #1080#1079#1074#1077#1089#1090#1085#1086', '#1095#1090#1086' '#1085#1086#1074#1099#1077' '#1087#1086#1076#1093#1086#1076#1099' '#1080' '#1084#1077#1090#1086#1076#1099' '#1085#1077' '#1074#1089#1077#1075#1076#1072' '#1087#1086#1083#1086#1078#1080#1090#1077#1083#1100#1085#1086' '#1074#1086#1089#1087 +
          #1088#1080#1085#1080#1084#1072#1102#1090#1089#1103' '#1074#1089#1077#1084#1080' '#1091#1095#1072#1089#1090#1085#1080#1082#1072#1084#1080' '#1082#1086#1084#1072#1085#1076#1099'. '#1041#1099#1083#1080' '#1083#1080' '#1089#1083#1091#1095#1072#1080' '#1072#1082#1090#1080#1074#1085#1086#1075#1086' '#1080 +
          #1083#1080' '#1087#1072#1089#1089#1080#1074#1085#1086#1075#1086' '#1087#1088#1086#1090#1080#1074#1086#1076#1077#1081#1089#1090#1074#1080#1103'?</span></p>'
        
          '<p><strong>'#1052#1072#1082#1089#1080#1084'</strong>: '#1052#1085#1086#1075#1080#1077' '#1074#1086#1089#1087#1088#1080#1085#1103#1083#1080' ?'#1085#1072#1096' UML? '#1082#1072#1082' '#1074#1090#1086#1088 +
          #1078#1077#1085#1080#1077' '#1074' '#1080#1093' '#1083#1080#1095#1085#1091#1102' '#1078#1080#1079#1085#1100', '#1086#1075#1088#1072#1085#1080#1095#1077#1085#1080#1077' '#1089#1074#1086#1073#1086#1076#1099' '#1076#1077#1081#1089#1090#1074#1080#1103'. '#1042#1077#1076#1100' '#1076#1086' '#1101 +
          #1090#1086#1075#1086' '#1082#1072#1078#1076#1099#1081' '#1087#1088#1086#1075#1088#1072#1084#1084#1080#1088#1086#1074#1072#1083' '#1090#1072#1082', '#1082#1072#1082' '#1093#1086#1090#1077#1083'.  '#1058#1091#1090' '#1087#1086#1103#1074#1080#1083#1080#1089#1100' '#1082#1072#1082#1080#1077'-' +
          #1090#1086' '#1087#1088#1072#1074#1080#1083#1072' '#1080' '#1086#1075#1088#1072#1085#1080#1095#1077#1085#1080#1103' '#1076#1072#1078#1077' '#1085#1072' '#1091#1088#1086#1074#1085#1077' '#1087#1088#1086#1077#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103' '#1088#1077#1072#1083#1080#1079#1072#1094#1080 +
          #1080', '#1072' '#1085#1077' '#1090#1086#1083#1100#1082#1086' '#1080#1085#1090#1077#1088#1092#1077#1081#1089#1086#1074'. '#1042#1086#1079#1084#1086#1078#1085#1086', '#1084#1099' '#1085#1077#1084#1085#1086#1075#1086' '#1087#1077#1088#1077#1075#1080#1073#1072#1083#1080' '#1087#1072#1083#1082 +
          #1091' '#1080' '#1074#1074#1086#1076#1080#1083#1080' '#1080#1079#1083#1080#1096#1085#1077' '#1084#1085#1086#1075#1086' '#1086#1075#1088#1072#1085#1080#1095#1077#1085#1080#1081'. '#1040' '#1074#1077#1076#1100' '#1101#1090#1086' '#1086#1095#1077#1085#1100' '#1084#1086#1097#1085#1099#1081' '#1080 +
          #1085#1089#1090#1088#1091#1084#1077#1085#1090', '#1074#1099' '#1085#1077' '#1087#1088#1086#1089#1090#1086' '#1086#1087#1088#1077#1076#1077#1083#1103#1077#1090#1077' '#1084#1077#1090#1072#1084#1086#1076#1077#1083#1100' '#1080' '#1082#1086#1076#1086#1075#1077#1085#1077#1088#1072#1094#1080#1102', ' +
          #1074#1099' '#1084#1086#1078#1077#1090#1077' '#1077#1097#1077' '#1080' '#1086#1087#1080#1089#1099#1074#1072#1090#1100' '#1087#1088#1086#1080#1079#1074#1086#1083#1100#1085#1099#1077' ?'#1082#1086#1085#1089#1090#1088#1077#1081#1085#1090#1099'?, '#1089#1074#1103#1079#1072#1085#1085#1099#1077' ' +
          #1089' '#1085#1077#1081'. '#1053#1072#1087#1088#1080#1084#1077#1088', '#1086#1090' ?'#1085#1077#1083#1100#1079#1103' '#1087#1077#1088#1077#1076#1072#1074#1072#1090#1100' '#1082#1086#1083#1083#1077#1082#1094#1080#1080' '#1074' '#1082#1072#1095#1077#1089#1090#1074#1077' '
        
          #1088#1077#1079#1091#1083#1100#1090#1072#1090#1072' '#1087#1086' '#1089#1089#1099#1083#1082#1077'?, '#1080#1083#1080' ?'#1091' '#1084#1077#1090#1086#1076#1072' '#1085#1077' '#1076#1086#1083#1078#1085#1086' '#1073#1099#1090#1100' '#1073#1086#1083#1100#1096#1077' 5 '#1087#1072#1088 +
          #1072#1084#1077#1090#1088#1086#1074'?, '#1076#1086' '#1082#1086#1085#1090#1088#1086#1083#1103' '#1072#1088#1093#1080#1090#1077#1082#1090#1091#1088#1085#1099#1093' '#1089#1083#1086#1077#1074', '#1080' ?'#1090#1088#1072#1089#1089#1080#1088#1091#1077#1084#1086#1089#1090#1080'? '#1074' ' +
          #1090#1088#1077#1073#1086#1074#1072#1085#1080#1103'. '#1056#1072#1079#1091#1084#1077#1077#1090#1089#1103', '#1076#1072#1083#1077#1082#1086' '#1085#1077' '#1074#1089#1077' '#1073#1099#1083#1080' '#1089#1086#1075#1083#1072#1089#1085#1099' '#1089#1086' '#1074#1089#1077#1084#1080' '#1086#1075#1088 +
          #1072#1085#1080#1095#1077#1085#1080#1103#1084#1080', '#1084#1085#1086#1075#1080#1093' '#1080#1079' '#1085#1080#1093' '#1101#1090#1086' '#1080' '#1085#1072#1087#1091#1075#1072#1083#1086' '#1080' '#1086#1090#1090#1086#1083#1082#1085#1091#1083#1086'.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1050#1072#1082' '#1087 +
          #1088#1086#1093#1086#1076#1080#1083' '#1087#1088#1086#1094#1077#1089#1089' '#1074#1085#1077#1076#1088#1077#1085#1080#1103' - '#1074#1099#1087#1086#1083#1085#1103#1083#1086#1089#1100' '#1083#1080' '#1086#1073#1088#1072#1090#1085#1086#1077' '#1087#1088#1086#1077#1082#1090#1080#1088#1086#1074#1072#1085 +
          #1080#1077'?</span></p>'
        
          '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088'</strong>: '#1053#1077' '#1074#1099#1087#1086#1083#1085#1103#1083#1086#1089#1100'. '#1042' '#1090#1086#1090' '#1084#1086#1084#1077#1085#1090' '#1087#1088#1086#1089 +
          #1090#1086' '#1085#1077' '#1073#1099#1083#1086' '#1093#1086#1088#1086#1096#1080#1093' '#1080#1085#1089#1090#1088#1091#1084#1077#1085#1090#1086#1074'. '#1040' '#1089#1077#1081#1095#1072#1089' '#1103' '#1087#1088#1080#1096#1105#1083' '#1082' '#1075#1083#1091#1073#1086#1082#1086#1084#1091' '#1091 +
          #1073#1077#1078#1076#1077#1085#1080#1102', '#1095#1090#1086' '#1101#1090#1086' '#1080' '#1085#1077' '#1085#1072#1076#1086'. '#1058'.'#1082'. '#1074' '#1087#1088#1086#1094#1077#1089#1089#1077' ?'#1088#1080#1089#1086#1074#1072#1085#1080#1103' '#1091#1078#1077' '#1089#1091#1097#1077 +
          #1089#1090#1074#1091#1102#1097#1077#1075#1086' '#1082#1086#1076#1072'? '#1087#1088#1086#1080#1089#1093#1086#1076#1080#1090' '#1077#1075#1086' '#1087#1077#1088#1077#1086#1089#1084#1099#1089#1083#1077#1085#1080#1077', '#1087#1086#1103#1074#1083#1103#1102#1090#1089#1103' '#1080#1076#1077#1080' '#1080 +
          ' '#1087#1091#1090#1080' '#1077#1075#1086' '#1088#1077#1092#1072#1082#1090#1086#1088#1080#1085#1075#1072' ('#1085#1077' '#1089#1090#1086#1080#1090' '#1090#1086#1083#1100#1082#1086' '#1076#1077#1083#1072#1090#1100' '#1088#1077#1092#1072#1082#1086#1088#1080#1085#1075' '#1074' '#1087#1088#1086#1094 +
          #1077#1089#1089#1077' '#1088#1080#1089#1086#1074#1072#1085#1080#1103', '#1086#1085' '#1076#1086#1083#1078#1077#1085' '#1080#1076#1090#1080' '#1086#1090#1076#1077#1083#1100#1085#1099#1084' '#1101#1090#1072#1087#1086#1084'), '#1072' '#1090#1072#1082#1078#1077' '#1087#1088#1080#1084#1077#1085 +
          #1103#1102#1090#1089#1103' '#1096#1072#1073#1083#1086#1085#1099' '#1087#1088#1086#1077#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103'/'#1082#1086#1076#1080#1088#1086#1074#1072#1085#1080#1103'. '#1053#1080#1082#1072#1082#1086#1081' ?'#1072#1074#1090#1086#1084#1072#1090'? '#1101#1090#1086' ' +
          #1085#1077' '#1089#1076#1077#1083#1072#1077#1090'. '#1042#1089#1077' '#1087#1086#1087#1099#1090#1082#1080' '#1087#1077#1088#1077#1085#1077#1089#1090#1080' '#1095#1090#1086'-'#1090#1086' '#1085#1072' '#1084#1086#1076#1077#1083#1100' '#1074#1089#1103#1082#1086#1075#1086' '#1088#1086#1076#1072' ' +
          '?'#1072#1074#1090#1086#1084#1072#1090#1072#1084#1080'? '#1074#1099#1075#1083#1103#1076#1077#1083#1080' '#1091#1076#1088#1091#1095#1072#1102#1097#1077'.</p>'
        
          '<p><strong>'#1052#1072#1082#1089#1080#1084'</strong>: '#1059#1078#1077' '#1085#1072' '#1101#1090#1072#1087#1077' '#1089#1086#1079#1076#1072#1085#1080#1103' '#1096#1072#1073#1083#1086#1085#1085#1086#1075#1086' '#1075#1077#1085 +
          #1077#1088#1072#1090#1086#1088#1072' '#1085#1072#1084' '#1089#1090#1072#1083#1086' '#1103#1089#1085#1086': '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080#1081' '#1088#1077#1074#1077#1088#1089'-'#1080#1085#1078#1077#1085#1080#1088#1080#1085#1075' - ?'#1079#1083#1086'?' +
          '. '#1048' '#1085#1077' '#1087#1086#1090#1086#1084#1091', '#1095#1090#1086' '#1087#1088#1086#1074#1077#1089#1090#1080' '#1077#1075#1086' '#1085#1072' '#1076#1086#1089#1090#1072#1090#1086#1095#1085#1086' '#1082#1072#1095#1077#1089#1090#1074#1077#1085#1085#1086#1084' '#1091#1088#1086#1074#1085 +
          #1077' '#1087#1088#1072#1082#1090#1080#1095#1077#1089#1082#1080' '#1085#1077' '#1074#1086#1079#1084#1086#1078#1085#1086', '#1076#1072#1078#1077' '#1077#1089#1083#1080' '#1091' '#1074#1072#1089' '#1087#1088#1080#1084#1080#1090#1080#1074#1085#1072#1103' '#1073#1072#1079#1086#1074#1072#1103' '#1084 +
          #1077#1090#1072#1084#1086#1076#1077#1083#1100', '#1089#1086#1076#1077#1088#1078#1072#1097#1072#1103' '#1090#1086#1083#1100#1082#1086' '#1088#1086#1076#1085#1099#1077' '#1076#1083#1103' '#1103#1079#1099#1082#1072' '#1072#1073#1089#1090#1088#1072#1082#1094#1080#1080', '#1085#1077' '#1075#1086#1074 +
          #1086#1088#1103' '#1091#1078' '#1086' '#1073#1086#1083#1077#1077' '#1089#1083#1086#1078#1085#1099#1093' '#1089#1087#1077#1094#1080#1092#1080#1095#1077#1089#1082#1080#1093' '#1084#1077#1090#1072#1084#1086#1076#1077#1083#1103#1093' '#1076#1083#1103' '#1082#1086#1090#1086#1088#1099#1093', '#1076#1091 +
          #1084#1072#1102', '#1089#1076#1077#1083#1072#1090#1100' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080#1081' '#1088#1077#1074#1077#1088#1089' '#1085#1077#1074#1086#1079#1084#1086#1078#1085#1086' '#1076#1072#1078#1077' '#1090#1077#1086#1088#1077#1090#1080#1095#1077#1089#1082#1080'.' +
          ' '#1050#1083#1102#1095#1077#1074#1086#1081' '#1084#1086#1084#1077#1085#1090' '#1073#1099#1083' '#1074' '#1076#1088#1091#1075#1086#1084' -  '#1085#1072#1083#1080#1095#1080#1077' '#1088#1077#1074#1077#1088#1089#1072' '#1083#1086#1084#1072#1077#1090' '#1089#1072#1084#1091' '#1080#1076#1077 +
          #1102' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1103' UML '#1076#1083#1103' '#1082#1086#1076#1086#1075#1077#1085#1077#1088#1072#1094#1080#1080'. '#1053#1072#1096#1077#1081' '#1079#1072#1076#1072#1095#1077#1081' '#1073#1099#1083#1086' '
        
          #1085#1072#1091#1095#1080#1090#1100#1089#1103' '#1089#1072#1084#1080#1084' '#1080' '#1085#1072#1091#1095#1080#1090#1100' '#1076#1088#1091#1075#1080#1093' '#1076#1091#1084#1072#1090#1100' '#1085#1077' '#1074' '#1082#1086#1076#1072#1093', '#1072' '#1074' '#1072#1073#1089#1090#1088#1072#1082#1094 +
          #1080#1103#1093', '#1087#1086' '#1074#1086#1079#1084#1086#1078#1085#1086#1089#1090#1080' '#1082' '#1082#1086#1076#1091' '#1085#1077' '#1087#1088#1080#1074#1103#1079#1072#1085#1085#1099#1093'. '#1069#1090#1086' - '#1086#1090#1076#1077#1083#1100#1085#1072#1103' '#1089#1083#1086#1078#1085 +
          #1072#1103' '#1090#1077#1084#1072', '#1080' '#1101#1090#1086' '#1073#1099#1083#1086' '#1082#1088#1072#1081#1085#1077' '#1074#1072#1078#1085#1086' '#1076#1083#1103' '#1085#1072#1089'. '#1055#1086#1101#1090#1086#1084#1091', '#1085#1072#1096' '#1075#1077#1085#1077#1088#1072#1090#1086#1088 +
          ' '#1087#1086' '#1089#1074#1086#1077#1081' '#1072#1088#1093#1080#1090#1077#1082#1090#1091#1088#1077' '#1080' '#1087#1086' '#1090#1086#1084#1091', '#1082#1072#1082' '#1086#1085' '#1075#1077#1085#1077#1088#1080#1088#1086#1074#1072#1083' '#1082#1086#1076', '#1080#1089#1082#1083#1102#1095#1072 +
          #1083' '#1080' '#1086#1076#1085#1086#1074#1088#1077#1084#1077#1085#1085#1086' '#1076#1077#1083#1072#1083' '#1085#1077#1085#1091#1078#1085#1086#1081' '#1074#1086#1079#1084#1086#1078#1085#1086#1089#1090#1100' '#1088#1077#1074#1077#1088#1089#1072', '#1082#1072#1082' '#1090#1072#1082#1086#1074#1091#1102 +
          '.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1057#1076#1077#1083#1072 +
          #1077#1084' '#1096#1072#1075' ?'#1085#1072#1079#1072#1076'? '#1082' '#1054#1054#1055'. '#1052#1086#1078#1085#1086' '#1083#1080' '#1089#1082#1072#1079#1072#1090#1100', '#1095#1090#1086' UML '#1089#1087#1086#1089#1086#1073#1089#1090#1074#1091#1077#1090' '#1088#1077#1092 +
          #1072#1082#1090#1086#1088#1080#1085#1075#1091'?</span></p>'
        
          '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088'</strong>: '#1044#1072'. '#1057#1087#1086#1089#1086#1073#1089#1090#1074#1091#1077#1090'. '#1053#1086', '#1084#1086#1075#1091' '#1089#1082#1072#1079#1072#1090 +
          #1100', '#1095#1090#1086' '#1085#1077' '#1089#1090#1086#1080#1090' '#1089#1084#1077#1096#1080#1074#1072#1090#1100' '#1088#1077#1092#1072#1082#1090#1086#1088#1080#1085#1075' '#1089' ?'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1077#1081' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1081'?' +
          '. '#1048#1093' '#1085#1072#1076#1086' ?'#1088#1072#1079#1085#1086#1089#1080#1090#1100' '#1074#1086' '#1074#1088#1077#1084#1077#1085#1080'?. '#1048' '#1076#1091#1084#1072#1090#1100' '#1086' '#1090#1077#1089#1090#1072#1093'.</p>'
        
          '<p><strong>'#1052#1072#1082#1089#1080#1084'</strong>: '#1054#1087#1103#1090#1100' '#1078#1077' '#1089#1084#1086#1090#1088#1103' ?'#1082#1072#1082#1086#1081'? UML. '#1045#1089#1083#1080' '#1074#1099 +
          ' '#1087#1088#1086#1089#1090#1086' '#1088#1080#1089#1091#1077#1090#1077' ?'#1084#1077#1088#1090#1074#1099#1077'? '#1076#1080#1072#1075#1088#1072#1084#1084#1099', '#1090#1086' '#1101#1090#1086' '#1085#1077' '#1086#1095#1077#1085#1100' '#1087#1086#1084#1086#1078#1077#1090', '#1093#1086 +
          #1090#1103' '#1084#1086#1078#1077#1090' '#1080' '#1076#1072#1089#1090' '#1085#1077#1073#1086#1083#1100#1096#1086#1081' '#1087#1086#1083#1086#1078#1080#1090#1077#1083#1100#1085#1099#1081' '#1101#1092#1092#1077#1082#1090'. '#1045#1089#1083#1080' '#1091' '#1074#1072#1089' '#1077#1089#1090#1100' ' +
          #1084#1077#1090#1072#1084#1086#1076#1077#1083#1100' '#1080' '#1096#1072#1073#1083#1086#1085#1085#1072#1103' '#1082#1086#1076#1086#1075#1077#1085#1077#1088#1072#1094#1080#1103', '#1082#1072#1082' '#1074' '#1085#1072#1096#1077#1084' '#1089#1083#1091#1095#1072#1077', '#1090#1086' '#1074#1086#1079 +
          #1084#1086#1078#1085#1086#1089#1090#1080' '#1087#1086' '#1088#1077#1092#1072#1082#1090#1086#1088#1080#1085#1075#1091' '#1086#1082#1072#1079#1099#1074#1072#1102#1090#1089#1103' '#1085#1072' '#1089#1086#1074#1077#1088#1096#1077#1085#1085#1086' '#1085#1086#1074#1086#1084' '#1091#1088#1086#1074#1085#1077'.' +
          '</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1055#1086#1095#1077#1084 +
          #1091' '#1087#1088#1080#1093#1086#1076#1080#1090#1089#1103' '#1076#1077#1083#1072#1090#1100' '#1088#1077#1092#1072#1082#1090#1086#1088#1080#1085#1075' '#1086#1073#1098#1077#1082#1090#1085#1086#1075#1086' '#1082#1086#1076#1072'? '#1069#1090#1086' - '#1085#1077#1076#1086#1089#1090#1072#1090#1086 +
          #1082' '#1086#1087#1099#1090#1072'? '#1048#1083#1080' '#1086#1073#1098#1077#1082#1090#1080#1074#1085#1099#1077' '#1087#1088#1080#1095#1080#1085#1099', '#1086#1073#1091#1089#1083#1086#1074#1083#1077#1085#1085#1099#1077' '#1101#1074#1086#1083#1102#1094#1080#1077#1081' '#1089#1080#1089#1090#1077#1084 +
          #1099' '#1074' '#1094#1077#1083#1086#1084'? '#1048#1083#1080' '#1087#1088#1086#1089#1090#1086' '#1077#1089#1090#1077#1089#1090#1074#1077#1085#1085#1099#1081' ?'#1088#1086#1089#1090' '#1074' '#1096#1080#1088#1080#1085#1091'? '#1089#1080#1089#1090#1077#1084#1099'?</spa' +
          'n></p>'
        
          '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088'</strong>: '#1044#1091#1084#1072#1102', '#1090#1091#1090' '#1080#1084#1077#1102#1090' '#1084#1077#1089#1090#1086' '#1074#1089#1077' '#1087#1077#1088#1077#1095#1080 +
          #1089#1083#1077#1085#1085#1099#1077' '#1087#1088#1080#1095#1080#1085#1099'. '#1056#1077#1092#1072#1082#1090#1086#1088#1080#1085#1075' - '#1101#1090#1086' '#1086#1090#1076#1077#1083#1100#1085#1072#1103' '#1073#1086#1083#1100#1096#1072#1103' '#1090#1077#1084#1072'. '#1053#1086' '#1088#1077 +
          #1092#1072#1082#1090#1086#1088#1080#1085#1075#1091' '#1087#1086#1084#1086#1075#1072#1077#1090' '#1087#1072#1088#1072' - '#1084#1086#1076#1077#1083#1100' + '#1090#1077#1089#1090#1099'.</p>'
        
          '<p>'#1052#1086#1076#1077#1083#1100' '#1086#1075#1088#1072#1085#1080#1095#1080#1074#1072#1077#1090' '#1088#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082#1072' ?'#1089#1074#1077#1088#1093#1091'?, '#1087#1086#1079#1074#1086#1083#1103#1103' '#1086#1089#1090#1072#1074#1072#1090#1100#1089 +
          #1103' ?'#1074' '#1088#1072#1084#1082#1072#1093' '#1040#1088#1093#1080#1090#1077#1082#1090#1091#1088#1099'? ('#1090#1077' '#1084#1077#1090#1072#1084#1086#1076#1077#1083#1080') '#1080#1083#1080' '#1075#1088#1072#1084#1086#1090#1085#1086' '#1084#1086#1076#1080#1092#1080#1094#1080#1088#1086 +
          #1074#1072#1090#1100' '#1077#1105'. '#1040' '#1090#1077#1089#1090#1099' '#1086#1075#1088#1072#1085#1080#1095#1080#1074#1072#1102#1090' '#1088#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082#1072' ?'#1089#1085#1080#1079#1091'? '#1087#1086#1079#1074#1086#1083#1103#1103' '#1077#1084#1091' ' +
          #1086#1089#1090#1072#1090#1100#1089#1103' '#1074' '#1088#1072#1084#1082#1072#1093' '#1058#1047' '#1080' '#1088#1077#1075#1088#1077#1089#1089#1072' '#1091#1078#1077' '#1085#1072#1081#1076#1077#1085#1085#1099#1093' '#1086#1096#1080#1073#1086#1082'. '#1058'.'#1077'. '#1084#1086#1076#1077#1083 +
          #1100', '#1089#1082#1072#1078#1077#1084' '#1090#1072#1082', - ?'#1090#1100#1102#1090#1086#1088'?, '#1072' '#1090#1077#1089#1090#1099' - ?'#1074#1072#1083#1080#1076#1072#1090#1086#1088'?. '#1061#1086#1090#1103' '#1077#1089#1090#1100' '#1082#1086#1083#1083 +
          #1077#1075#1080', '#1082#1086#1090#1086#1088#1099#1084' '#1103' '#1089#1082#1072#1079#1072#1083' '#1080#1084#1077#1085#1085#1086' '#1101#1090#1091' '#1092#1088#1072#1079#1091', '#1080' '#1086#1085#1080' '#1074#1086#1089#1087#1088#1080#1085#1103#1083#1080' '#1101#1090#1086' '#1089#1086' ' +
          #1089#1082#1077#1087#1089#1080#1089#1086#1084'. '#1043#1086#1074#1086#1088#1103' '#1095#1090#1086'-'#1090#1086' '#1074#1088#1086#1076#1077' ?'#1085#1080#1082#1090#1086' '#1085#1077' '#1079#1072#1087#1088#1077#1090#1080#1090' '#1082#1088#1080#1074#1086#1088#1091#1082#1086#1084#1091' '#1087#1088 +
          #1086#1075#1088#1072#1084#1084#1080#1089#1090#1091' '#1089#1076#1077#1083#1072#1090#1100' '#1074#1086' View '#1073#1080#1079#1085#1077#1089'-'#1083#1086#1075#1080#1082#1091', '#1072' '#1074' '#1073#1080#1079#1085#1077#1089'-'#1083#1086#1075#1080#1082#1077' -  '#1089 +
          #1076#1077#1083#1072#1090#1100' '#1101#1083#1077#1084#1077#1085#1090#1099' View?. '#1048' '#1086#1085#1080' - '#1087#1088#1072#1074#1099'. '#1055#1088#1080#1095#1105#1084' '#1086#1073#1099#1095#1085#1086' '#1089#1082#1077#1087#1090#1080#1082#1072#1084#1080' '#1103 +
          #1074
        #1083#1103#1102#1090#1089#1103' '#1082#1072#1082' '#1088#1072#1079' ?'#1087#1088#1103#1084#1086#1088#1091#1082#1080#1077'? '#1087#1088#1086#1075#1088#1072#1084#1084#1080#1089#1090#1099'.</p>'
        
          '<p>'#1055#1086#1095#1077#1084#1091' '#1085#1091#1078#1077#1085' '#1088#1077#1092#1072#1082#1090#1086#1088#1080#1085#1075'? '#1053#1080' '#1076#1083#1103' '#1082#1086#1075#1086' '#1085#1077' '#1089#1077#1082#1088#1077#1090', '#1095#1090#1086' '#1074#1089#1103' IT-'#1080 +
          #1085#1076#1091#1089#1090#1088#1080#1103' '#1074#1086' '#1074#1089#1105#1084' '#1084#1080#1088#1077' '#1090#1072#1082' '#1080' '#1085#1077' '#1085#1072#1091#1095#1080#1083#1072#1089#1100' ?'#1074#1084#1077#1085#1103#1077#1084#1086'? '#1087#1083#1072#1085#1080#1088#1086#1074#1072#1090#1100' ' +
          #1089#1088#1086#1082#1080' '#1088#1072#1079#1088#1072#1073#1086#1090#1082#1080'. '#1040' '#1082#1086#1083#1080' '#1090#1072#1082', '#1089#1088#1086#1082#1080' '#1085#1072#1095#1080#1085#1072#1102#1090' '#1087#1086#1076#1078#1080#1084#1072#1090#1100'. '#1050#1072#1082#1086#1081' '#1073#1099 +
          ' '#1075#1088#1072#1084#1086#1090#1085#1099#1081' '#1072#1085#1072#1083#1080#1079' '#1085#1072' '#1085#1072#1095#1072#1083#1100#1085#1086#1084' '#1101#1090#1072#1087#1077' '#1085#1080' '#1073#1099#1083' '#1089#1076#1077#1083#1072#1085', '#1078#1080#1079#1085#1100' '#1086#1082#1072#1079#1099#1074 +
          #1072#1077#1090#1089#1103' '#1089#1083#1086#1078#1085#1077#1077'. '#1040' '#1076#1072#1083#1100#1096#1077' '#1088#1077#1096#1077#1085#1080#1103' '#1085#1072#1095#1080#1085#1072#1102#1090' '#1087#1088#1080#1085#1080#1084#1072#1090#1100#1089#1103' ?'#1074' '#1089#1090#1080#1083#1077' XP' +
          '?. '#1063#1090#1086' '#1085#1072' '#1084#1086#1081' '#1074#1079#1075#1083#1103#1076', '#1074' '#1086#1073#1097#1077#1084', '#1087#1088#1072#1074#1080#1083#1100#1085#1086'. ?'#1071' '#1087#1086#1076#1091#1084#1072#1102' '#1086#1073' '#1101#1090#1086#1084' '#1079#1072#1074 +
          #1090#1088#1072'?, -  '#1075#1086#1074#1086#1088#1080#1083#1072' '#1086#1076#1085#1072' '#1075#1077#1088#1086#1080#1085#1103'. '#1048' '#1076#1086' '#1087#1086#1088#1099' '#1076#1086' '#1074#1088#1077#1084#1077#1085#1080' '#1101#1090#1080' '#1088#1077#1096#1077#1085#1080#1103 +
          ' ?'#1080#1084#1077#1102#1090' '#1087#1088#1072#1074#1086' '#1085#1072' '#1078#1080#1079#1085#1100'?.</p>'
        
          '<p>'#1063#1072#1089#1090#1086' '#1073#1099#1074#1072#1077#1090' '#1090#1072#1082', '#1095#1090#1086' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103' '#1082' '#1091#1078#1077' '#1089#1091#1097#1077#1089#1090#1074#1091#1102#1097#1077#1081' '#1089#1080#1089#1090#1077#1084#1077', ' +
          #1080#1079#1084#1077#1085#1103#1102#1090#1089#1103' ?'#1074#1079#1088#1099#1074#1086#1087#1086#1076#1086#1073#1085#1086'? '#1080#1083#1080' ?'#1083#1072#1074#1080#1085#1086#1086#1073#1088#1072#1079#1085#1086'?. '#1048' '#1080#1084' '#1089#1090#1072#1085#1086#1074#1080#1090#1089#1103' ' +
          '?'#1090#1077#1089#1085#1086'? '#1074' '#1088#1072#1084#1082#1072#1093' '#1072#1088#1093#1080#1090#1077#1082#1090#1091#1088#1099', '#1082#1086#1090#1086#1088#1072#1103' '#1093#1086#1090#1103' '#1080' ?'#1075#1080#1073#1082#1072#1103'?, '#1085#1086' '#1085#1077' ?'#1088#1077 +
          #1079#1080#1085#1086#1074#1072#1103'?. '#1058#1091#1090' '#1090#1086#1078#1077' - '#1085#1072#1076#1086' '#1076#1077#1083#1072#1090#1100' '#1088#1077#1092#1072#1082#1090#1086#1088#1080#1085#1075'. '#1063#1090#1086#1073#1099' '#1072#1088#1093#1080#1090#1077#1082#1090#1091#1088#1072' ' +
          '?'#1085#1077' '#1088#1072#1079#1074#1072#1083#1080#1083#1072#1089#1100'?.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1048' '#1085#1072#1089 +
          #1082#1086#1083#1100#1082#1086' '#1074#1072#1084' '#1089#1090#1072#1083#1086' '#1087#1088#1086#1097#1077' ?'#1088#1077#1092#1072#1082#1090#1086#1088#1080#1090#1100'?, '#1089#1086' '#1074#1089#1077#1084' '#1101#1090#1080#1084' '#1085#1072#1073#1086#1088#1086#1084' UML, ' +
          'DSL, '#1082#1086#1076#1086#1075#1077#1085#1077#1088#1072#1094#1080#1103'?</span></p>'
        
          '<p><strong>'#1052#1072#1082#1089#1080#1084'</strong>: '#1042#1086#1090' '#1088#1077#1072#1083#1100#1085#1099#1081' '#1087#1088#1080#1084#1077#1088' '#1080#1079' '#1078#1080#1079#1085#1080'. '#1059' '#1085#1072#1089' ' +
          #1085#1072' '#1084#1077#1090#1072#1084#1086#1076#1077#1083#1080' '#1073#1099#1083#1080' '#1086#1087#1088#1077#1076#1077#1083#1077#1085#1099' '#1092#1072#1073#1088#1080#1082#1080' '#1080#1085#1090#1077#1088#1092#1077#1081#1089#1086#1074' - '#1084#1077#1090#1086#1076' '#1085#1072' '#1080#1085#1090 +
          #1077#1088#1092#1077#1081#1089#1077' '#1089#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1099#1084' '#1089#1090#1077#1088#1077#1086#1090#1080#1087#1086#1084', '#1082#1086#1090#1086#1088#1099#1081' '#1089' '#1087#1086#1084#1086#1097#1100#1102'  '#1096#1072#1073#1083#1086#1085#1072' '#1087 +
          #1088#1077#1074#1088#1072#1097#1072#1077#1090#1089#1103' '#1074' '#1082#1086#1076#1077' '#1074' '#1085#1072#1073#1086#1088' '#1076#1088#1091#1075#1080#1093' '#1080#1085#1090#1077#1088#1092#1077#1081#1089#1086#1074' '#1080' '#1082#1083#1072#1089#1089#1086#1074', '#1088#1077#1072#1083#1080#1079#1091 +
          #1102#1097#1080#1093' '#1085#1077#1089#1082#1086#1083#1100#1082#1086' '#1088#1072#1079#1085#1099#1093' '#1087#1072#1090#1090#1077#1088#1085#1086#1074', '#1095#1090#1086' '#1074' '#1080#1090#1086#1075#1077' '#1087#1086#1079#1074#1086#1083#1103#1077#1090' '#1076#1086#1074#1086#1083#1100#1085#1086' ' +
          #1075#1080#1073#1082#1086' '#1091#1087#1088#1072#1074#1083#1103#1090#1100' '#1074' '#1088#1072#1085#1090#1072#1081#1084' '#1089#1074#1103#1079#1099#1074#1072#1085#1080#1077#1084' '#1088#1077#1072#1083#1080#1079#1072#1094#1080#1080' '#1089' '#1080#1085#1090#1077#1088#1092#1077#1081#1089#1072#1084#1080',' +
          ' '#1082#1077#1096#1080#1088#1086#1074#1072#1090#1100' '#1080#1093', '#1074#1099#1090#1077#1089#1085#1103#1090#1100' '#1080' '#1090'.'#1076'. '#1055#1086#1074#1090#1086#1088#1102', '#1074#1089#1077' '#1101#1090#1086' - '#1086#1076#1080#1085' '#1084#1077#1090#1086#1076', ' +
          #1085#1072#1088#1080#1089#1086#1074#1072#1085#1085#1099#1081' '#1085#1072' '#1084#1086#1076#1077#1083#1080'. '#1042' '#1082#1072#1082#1086#1081'-'#1090#1086' '#1084#1086#1084#1077#1085#1090', '#1082#1086#1075#1076#1072' '#1101#1090#1086' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1083 +
          #1086#1089#1100' '#1091#1078#1077' '#1087#1072#1088#1091' '#1083#1077#1090', '#1080' '#1090#1072#1082#1080#1093' '#1092#1072#1073#1088#1080#1082' '#1073#1099#1083' '#1085#1077' '#1076#1077#1089#1103#1090#1086#1082' '#1080' '#1085#1077' '#1076#1074#1072', '#1084#1099' '
        
          #1085#1077#1086#1078#1080#1076#1072#1085#1085#1086' '#1087#1086#1085#1103#1083#1080', '#1095#1090#1086' '#1074' '#1082#1086#1076#1077' '#1077#1089#1090#1100' '#1085#1077#1086#1087#1090#1080#1084#1072#1083#1100#1085#1086#1089#1090#1100', '#1074#1083#1080#1103#1102#1097#1072#1103' '#1085#1072' ' +
          #1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100'. '#1053#1086' '#1095#1090#1086#1073#1099' '#1077#1077' '#1091#1089#1090#1088#1072#1085#1080#1090#1100', '#1085#1091#1078#1085#1086' '#1080#1079#1084#1077#1085#1080#1090#1100' '#1089#1090#1088#1091#1082#1090 +
          #1091#1088#1091' '#1101#1090#1080#1093' '#1075#1077#1085#1077#1088#1080#1088#1091#1077#1084#1099#1093' '#1082#1083#1072#1089#1089#1086#1074'. '#1053#1077' '#1087#1088#1086#1089#1090#1086' '#1079#1072#1084#1077#1085#1080#1090#1100' ?a? '#1085#1072' ?b? '#1087#1086#1080 +
          #1089#1082#1086#1084' '#1087#1086' '#1074#1089#1077#1084#1091' '#1087#1088#1086#1077#1082#1090#1091', '#1072' '#1080#1084#1077#1085#1085#1086' '#1087#1086#1084#1077#1085#1103#1090#1100' '#1089#1090#1088#1091#1082#1090#1091#1088#1091'. '#1042' '#1085#1072#1096#1077#1084' '#1089#1083#1091#1095 +
          #1072#1077' '#1101#1090#1086' '#1079#1072#1085#1103#1083#1086' '#1085#1077#1089#1082#1086#1083#1100#1082#1086' '#1095#1072#1089#1086#1074' '#1076#1083#1103' '#1090#1086#1075#1086', '#1095#1090#1086#1073#1099' '#1087#1077#1088#1077#1087#1080#1089#1072#1090#1100' '#1096#1072#1073#1083#1086#1085' ' +
          #1075#1077#1085#1077#1088#1072#1094#1080#1080' '#1080' '#1087#1077#1088#1077#1075#1077#1085#1080#1088#1086#1074#1072#1090#1100' '#1074#1089#1077' '#1087#1088#1086#1077#1082#1090#1099'. '#1040' '#1077#1089#1083#1080' '#1073#1099' '#1074#1089#1077' '#1101#1090#1086' '#1073#1099#1083#1086' '#1085 +
          #1072#1087#1080#1089#1072#1085#1086' '#1074#1088#1091#1095#1085#1091#1102', '#1090#1086' '#1074' '#1089#1086#1090#1085#1077' '#1088#1072#1079#1085#1099#1093' '#1084#1077#1089#1090' '#1073#1099#1083#1080' '#1073#1099' ?'#1088#1072#1089#1087#1080#1093#1072#1085#1099'? '#1088#1077#1072#1083 +
          #1080#1079#1072
        
          #1094#1080#1080' '#1101#1090#1080#1093' '#1085#1077#1089#1082#1086#1083#1100#1082#1080#1093' '#1087#1072#1090#1090#1077#1088#1085#1086#1074', '#1074#1077#1079#1076#1077'  '#1085#1077#1084#1085#1086#1075#1086' '#1086#1090#1083#1080#1095#1072#1102#1097#1080#1077#1089#1103', '#1080' '#1087#1086 +
          #1084#1077#1085#1103#1090#1100', '#1072' '#1087#1086#1090#1086#1084'  '#1086#1090#1083#1072#1076#1080#1090#1100' '#1074#1089#1077' '#1101#1090#1086' - '#1073#1099#1083#1086' '#1073#1099' '#1085#1077' '#1088#1077#1072#1083#1100#1085#1086' '#1085#1080' '#1079#1072' '#1076#1074#1072 +
          ' '#1095#1072#1089#1072', '#1085#1080' '#1079#1072' '#1076#1074#1072' '#1084#1077#1089#1103#1094#1072'.</p>'
        
          '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088'</strong>: '#1050#1088#1086#1084#1077' '#1090#1086#1075#1086', '#1084#1085#1077' '#1087#1088#1086#1097#1077' ?'#1088#1077#1092#1072#1082#1090#1086#1088#1080#1090 +
          #1100'? '#1076#1080#1072#1075#1088#1072#1084#1084#1091', '#1072' '#1085#1077' '#1082#1086#1076'. '#1055#1088#1086#1097#1077' '#1087#1077#1088#1077#1085#1086#1089#1080#1090#1100' '#1089' '#1084#1077#1089#1090#1072' '#1085#1072' '#1084#1077#1089#1090#1086' ?'#1082#1074#1072#1076#1088 +
          #1072#1090#1080#1082#1080'? '#1085#1072' '#1084#1086#1076#1077#1083#1080', '#1085#1077#1078#1077#1083#1080' '#1082#1091#1089#1082#1080' '#1082#1086#1076#1072' '#1080' '#1092#1072#1081#1083#1099' '#1084#1077#1078#1076#1091' '#1087#1072#1087#1082#1072#1084#1080'. '#1055#1088#1080' '#1101 +
          #1090#1086#1084' '#1077#1097#1105' ?'#1088#1091#1082#1072#1084#1080'? '#1085#1072#1076#1086' '#1087#1088#1072#1074#1080#1083#1100#1085#1086' ?'#1089#1086#1093#1088#1072#1085#1103#1090#1100' '#1072#1088#1093#1080#1090#1077#1082#1090#1091#1088#1085#1099#1077' '#1089#1083#1086#1080'?. ' +
          #1040' '#1084#1086#1076#1077#1083#1100' - ?'#1076#1091#1084#1072#1077#1090' '#1079#1072' '#1084#1077#1085#1103'?. '#1054#1085#1072' - ?'#1090#1100#1102#1090#1086#1088'?. '#1054#1085#1072' '#1085#1077' '#1076#1072#1089#1090' '#1084#1085#1077' '#1087#1088#1080 +
          #1085#1103#1090#1100' ?'#1079#1072#1074#1077#1076#1086#1084#1086' '#1085#1077#1087#1088#1072#1074#1080#1083#1100#1085#1086#1077' '#1088#1077#1096#1077#1085#1080#1077'?. '#1048#1083#1080' '#1101#1090#1086' '#1088#1077#1096#1077#1085#1080#1077' '#1073#1091#1076#1077#1090' '#1082#1072#1082' ' +
          #1084#1080#1085#1080#1084#1091#1084' '#1086#1089#1086#1079#1085#1072#1085#1085#1099#1084'.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1052#1086#1078#1085#1086 +
          ' '#1083#1080' '#1080#1079#1084#1077#1088#1080#1090#1100' '#1082#1072#1095#1077#1089#1090#1074#1086' '#1088#1077#1092#1072#1082#1090#1086#1088#1080#1085#1075#1072'? '#1054#1090#1089#1091#1090#1089#1090#1074#1080#1077' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086#1089#1090#1080' '#1087#1086#1074 +
          #1090#1086#1088#1085#1086#1075#1086' '#1088#1077#1092#1072#1082#1090#1086#1088#1080#1085#1075#1072'?</span></p>'
        
          '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088'</strong>: '#1041#1086#1102#1089#1100', '#1095#1090#1086' '#1101#1090#1086' '#1085#1077' '#1082#1088#1080#1090#1077#1088#1080#1081'. '#1061#1086#1090#1103' ' +
          #1077#1089#1083#1080' '#1082#1086#1085#1077#1095#1085#1086' '#1091#1076#1072#1083#1086#1089#1100' '#1076#1086#1073#1080#1090#1100#1089#1103' '#1086#1090#1089#1091#1090#1089#1090#1074#1080#1103' '#1087#1086#1076#1086#1073#1085#1086#1081' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086#1089#1090#1080',' +
          ' '#1090#1086' '#1088#1077#1092#1072#1082#1090#1086#1088#1080#1085#1075', '#1085#1072#1074#1077#1088#1085#1086#1077', '#1080#1076#1077#1072#1083#1100#1085#1099#1081'. '#1044#1088#1091#1075#1086#1077' '#1076#1077#1083#1086', '#1095#1090#1086' '#1103' '#1085#1077' '#1074#1080#1076#1077 +
          #1083' '#1082#1086#1076#1072'/'#1072#1088#1093#1080#1090#1077#1082#1090#1091#1088#1099', '#1082#1086#1090#1086#1088#1072#1103' '#1073#1099#1083#1072' '#1073#1099' '#1080#1076#1077#1072#1083#1100#1085#1072'. '#1045#1089#1083#1080' '#1095#1090#1086'-'#1090#1086' '#1080#1076#1077#1072#1083#1100 +
          #1085#1086' ?'#1089#1074#1077#1088#1093#1091'?, '#1090#1086' '#1086#1085#1086' '#1085#1077#1080#1076#1077#1072#1083#1100#1085#1086' ?'#1089#1085#1080#1079#1091'?. '#1048#1083#1080' '#1085#1072#1086#1073#1086#1088#1086#1090', ?'#1089#1085#1080#1079#1091'? '#1080#1076 +
          #1077#1072#1083#1100#1085#1099#1081' '#1082#1086#1076', '#1072' ?'#1089#1074#1077#1088#1093#1091'? - '#1085#1077#1080#1076#1077#1072#1083#1100#1085#1099#1077' '#1072#1088#1093#1080#1090#1077#1082#1090#1091#1088#1085#1099#1077' '#1088#1077#1096#1077#1085#1080#1103'.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1052#1099' '#1086#1095 +
          #1077#1085#1100' '#1095#1072#1089#1090#1086' '#1075#1086#1074#1086#1088#1080#1084' '#1086' '#1088#1077#1092#1072#1082#1090#1086#1088#1080#1085#1075#1077', '#1072' '#1084#1085#1086#1075#1080#1077' '#1101#1090#1086' '#1074#1086#1089#1087#1088#1080#1085#1080#1084#1072#1102#1090' '#1085#1077#1075#1072 +
          #1090#1080#1074#1085#1086'. '#1053#1072#1087#1088#1080#1084#1077#1088', ?'#1074#1089#1077' '#1088#1072#1073#1086#1090#1072#1083#1086', '#1085#1086' '#1087#1086#1090#1086#1084' '#1084#1099' '#1089#1076#1077#1083#1072#1083#1080' '#1088#1077#1092#1072#1082#1090#1086#1088#1080#1085#1075'?' +
          '. '#1052#1086#1078#1085#1086' '#1083#1080' '#1089#1082#1072#1079#1072#1090#1100', '#1095#1090#1086' '#1087#1088#1080' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1080' UML-'#1084#1086#1076#1077#1083#1080#1088#1086#1074#1072#1085#1080#1103' '#1082#1086#1076#1099 +
          ' '#1080#1079#1085#1072#1095#1072#1083#1100#1085#1086' '#1089#1090#1072#1083#1080' '#1083#1091#1095#1077', '#1072' '#1088#1077#1092#1072#1082#1090#1086#1088#1080#1085#1075' '#1089#1090#1072#1083' '#1088#1077#1078#1077'?</span></p>'
        
          '<p><strong>'#1052#1072#1082#1089#1080#1084'</strong>: '#1045#1089#1083#1080' '#1074#1089#1105' '#1088#1072#1073#1086#1090#1072#1077#1090', '#1080' '#1085#1080#1082#1072#1082#1080#1093' '#1074#1085#1077#1096#1085#1080#1093 +
          ' '#1080#1079#1084#1077#1085#1077#1085#1080#1081' '#1085#1077' '#1087#1088#1086#1080#1089#1093#1086#1076#1080#1090', '#1090#1086' '#1085#1077' '#1085#1091#1078#1085#1086' '#1076#1077#1083#1072#1090#1100' '#1088#1077#1092#1072#1082#1090#1086#1088#1080#1085#1075'. '#1056#1077#1092#1072#1082#1090 +
          #1086#1088#1080#1085#1075' '#1101#1090#1086' '#1085#1077' '#1089#1072#1084#1086#1086#1094#1077#1083#1100', '#1101#1090#1086' '#1089#1087#1086#1089#1086#1073' '#1076#1086#1089#1090#1080#1075#1072#1090#1100' '#1094#1077#1083#1080' '#1073#1086#1083#1077#1077' '#1073#1099#1089#1090#1088#1086' '#1080 +
          ' '#1090#1086#1095#1085#1086', '#1085#1077' '#1076#1072#1074#1072#1090#1100' '#1082#1086#1076#1091' '#1087#1088#1077#1074#1088#1072#1090#1080#1090#1100#1089#1103' '#1074' ?'#1089#1072#1083#1072#1090' '#1086#1083#1080#1074#1100#1077'?. '#1048#1089#1087#1086#1083#1100#1079#1086#1074#1072 +
          #1085#1080#1077' UML '#1089' '#1082#1086#1076#1086#1075#1077#1085#1077#1088#1072#1094#1080#1077#1081' '#1076#1072#1078#1077' '#1074' '#1089#1072#1084#1086#1084' '#1087#1088#1086#1089#1090#1086#1084' '#1074#1072#1088#1080#1072#1085#1090#1077' '#1089#1088#1072#1079#1091' '#1072#1074#1090 +
          #1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1089#1090#1088#1091#1082#1090#1091#1088#1080#1088#1091#1077#1090' '#1082#1086#1076'. '#1058#1072#1082' '#1095#1090#1086', '#1082#1086#1085#1077#1095#1085#1086', ?'#1076#1072'?.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1041#1086#1083#1077#1079 +
          #1085#1077#1085#1085#1099#1081' '#1074#1086#1087#1088#1086#1089' - '#1089#1080#1085#1093#1088#1086#1085#1080#1079#1072#1094#1080#1103' UML-'#1076#1080#1072#1075#1088#1072#1084#1084' '#1080' '#1087#1088#1086#1075#1088#1072#1084#1084#1085#1086#1075#1086' '#1082#1086#1076#1072'. ' +
          #1044#1086#1089#1090#1080#1075#1072#1077#1090#1089#1103' '#1083#1080' 100% '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077'?</span></p>'
        
          '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088'</strong>: '#1044#1086#1089#1090#1080#1075#1072#1077#1090#1089#1103'. '#1047#1072' '#1089#1095#1105#1090' '#1090#1086#1075#1086', '#1095#1090#1086' '#1077#1089 +
          #1090#1100' 100% '#1082#1086#1076#1086#1075#1077#1085#1077#1088#1072#1094#1080#1103' '#1080#1079' '#1084#1086#1076#1077#1083#1080' '#1074' '#1082#1086#1076'. '#1055#1086#1082#1072' '#1077#1105' '#1085#1077' '#1073#1099#1083#1086', '#1103' '#1089#1072#1084' '#1073#1099 +
          #1083' '#1073#1086#1083#1100#1096#1080#1084' '#1087#1088#1086#1090#1080#1074#1085#1080#1082#1086#1084' '#1084#1086#1076#1077#1083#1080#1088#1086#1074#1072#1085#1080#1103'. '#1071' '#1089#1095#1080#1090#1072#1083' '#1088#1080#1089#1086#1074#1072#1085#1080#1077' '#1076#1080#1072#1075#1088#1072#1084#1084 +
          ' ?'#1084#1072#1088#1090#1099#1096#1082#1080#1085#1099#1084' '#1090#1088#1091#1076#1086#1084'?.</p>'
        
          '<p><strong>'#1052#1072#1082#1089#1080#1084'</strong>: '#1044#1072', '#1079#1072' '#1089#1095#1077#1090' '#1090#1086#1075#1086', '#1095#1090#1086' '#1085#1077#1090' '#1088#1077#1074#1077#1088#1089#1072', '#1089 +
          #1080#1085#1093#1088#1086#1085#1080#1079#1072#1094#1080#1103' '#1074#1089#1077#1075#1076#1072' '#1074' '#1086#1076#1085#1091' '#1089#1090#1086#1088#1086#1085#1091'. '#1048' '#1084#1080#1084#1086' '#1085#1077#1077' '#1074#1099' '#1085#1080' '#1082#1072#1082' '#1085#1077' '#1087#1088#1086#1081 +
          #1076#1077#1090#1077'.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1058'.'#1077'. ' +
          #1082#1086#1076#1086#1075#1077#1085#1077#1088#1072#1094#1080#1103' - '#1085#1077#1086#1090#1098#1077#1084#1083#1077#1084#1086#1077' '#1091#1089#1083#1086#1074#1080#1077' '#1101#1092#1092#1077#1082#1090#1080#1074#1085#1086#1075#1086' '#1074#1085#1077#1076#1088#1077#1085#1080#1103' UML ' +
          #1074' '#1087#1088#1086#1094#1077#1089#1089' '#1088#1072#1079#1088#1072#1073#1086#1090#1082#1080'?</span></p>'
        
          '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088'</strong>: '#1041#1077#1079#1091#1089#1083#1086#1074#1085#1086'. '#1041#1086#1083#1077#1077' '#1090#1086#1075#1086', '#1077#1089#1083#1080' '#1085#1077#1090' ' +
          #1082#1086#1076#1086#1075#1077#1085#1077#1088#1072#1094#1080#1080', '#1087#1088#1080#1095#1105#1084' '#1087#1086#1089#1090#1086#1103#1085#1085#1086#1081', '#1090#1086' '#1074' '#1082#1072#1082#1086#1081'-'#1090#1086' '#1084#1086#1084#1077#1085#1090' '#1076#1080#1072#1075#1088#1072#1084#1084#1072 +
          ' '#1085#1072#1095#1080#1085#1072#1077#1090' '#1073#1099#1090#1100' ?'#1087#1088#1086#1089#1090#1086' '#1082#1072#1088#1090#1080#1085#1082#1086#1081'?. '#1054#1085#1072'  ?'#1087#1088#1086#1090#1091#1093#1072#1077#1090'?. '#1054#1085#1072' ?'#1085#1080' '#1086' '#1095 +
          #1105#1084'?.</p>'
        
          '<p>'#1053#1091' '#1080' '#1082#1086#1085#1077#1095#1085#1086', '#1082#1072#1082' '#1084#1099' '#1091#1078#1077' '#1075#1086#1074#1086#1088#1080#1083#1080', '#1082#1086#1076#1086#1075#1077#1085#1077#1088#1072#1094#1080#1103' '#1087#1086#1079#1074#1086#1083#1103#1077#1090' ?'#1082 +
          #1086#1076#1080#1088#1086#1074#1072#1090#1100'? '#1082#1086#1076', '#1080#1079#1074#1080#1085#1103#1102#1089#1100' '#1079#1072' '#1090#1072#1074#1090#1086#1083#1086#1075#1080#1102', -  '#1089#1080#1083#1100#1085#1086' '#1073#1099#1089#1090#1088#1077#1077'. '#1055#1086#1074#1077 +
          #1088#1100#1090#1077' '#1084#1085#1077', '#1074#1099#1096#1077' '#1087#1088#1080#1084#1077#1088#1099' '#1091#1078#1077' '#1087#1088#1080#1074#1086#1076#1080#1083#1080#1089#1100', '#1080' '#1080#1093' '#1077#1097#1077' '#1084#1080#1083#1083#1080#1086#1085' '#1091' '#1084#1077#1085#1103'.' +
          '</p>'
        
          '<p><strong>'#1052#1072#1082#1089#1080#1084'</strong>: '#1071' '#1073#1099' '#1089#1082#1072#1079#1072#1083' '#1082#1072#1090#1077#1075#1086#1088#1080#1095#1085#1077#1077', '#1082#1086#1076#1086#1075#1077#1085#1077#1088#1072 +
          #1094#1080#1103' - '#1101#1090#1086' '#1082#1083#1102#1095#1077#1074#1086#1081' '#1089#1084#1099#1089#1083' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1103' UML. '#1055#1086' '#1082#1088#1072#1081#1085#1077#1081' '#1084#1077#1088#1077', '#1076#1083#1103 +
          ' '#1085#1072#1089'. '#1055#1086#1085#1080#1084#1072#1077#1090#1077', '#1074' '#1095#1077#1084' '#1096#1090#1091#1082#1072', '#1103' '#1089#1077#1081#1095#1072#1089' '#1089#1082#1072#1078#1091' '#1089#1090#1088#1072#1085#1085#1091#1102' '#1074#1077#1097#1100', '#1080#1076#1091#1097 +
          #1091#1102' '#1074' '#1088#1072#1079#1088#1077#1079' '#1089' '#1090#1077#1084#1086#1081' '#1085#1072#1096#1077#1081' '#1076#1080#1089#1082#1091#1089#1089#1080#1080': '#1084#1099' '#1074#1086#1086#1073#1097#1077' '#1085#1077' '#1080#1089#1087#1086#1083#1100#1079#1091#1077#1084' UML' +
          ' '#1074' '#1082#1083#1072#1089#1089#1080#1095#1077#1089#1082#1086#1084' '#1089#1084#1099#1089#1083#1077'.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1085#1091' '#1074#1086 +
          #1090', ?'#1087#1088#1080#1077#1093#1072#1083#1080'?, '#1087#1086#1103#1089#1085#1080#1090#1077', '#1095#1090#1086' '#1042#1099' '#1080#1084#1077#1077#1090#1077' '#1074' '#1074#1080#1076#1091'?</span></p>'
        
          '<p><strong>'#1052#1072#1082#1089#1080#1084'</strong>: '#1053#1077' '#1087#1091#1075#1072#1081#1090#1077#1089#1100', '#1103' '#1082#1086#1085#1077#1095#1085#1086' '#1085#1077#1084#1085#1086#1075#1086' '#1091#1090#1088#1080 +
          #1088#1091#1102'. '#1050#1072#1082' '#1103' '#1091#1078#1077' '#1085#1072#1084#1077#1082#1072#1083' '#1074#1099#1096#1077', UML '#1076#1083#1103' '#1085#1072#1089' '#1101#1090#1086' '#1083#1080#1096#1100' '#1092#1086#1088#1084#1072' ?'#1082#1074#1072#1076#1088#1072#1090 +
          #1080#1082#1086#1074'?, '#1082#1086#1085#1082#1088#1077#1090#1085#1072#1103' '#1075#1088#1072#1092#1080#1095#1077#1089#1082#1072#1103' '#1085#1086#1090#1072#1094#1080#1103' '#1080' '#1085#1077' '#1073#1086#1083#1077#1077' '#1090#1086#1075#1086'. '#1052#1099' '#1074#1079#1103#1083#1080' ' +
          #1077#1077' '#1082#1072#1082' '#1085#1072#1073#1086#1088' '#1087#1088#1080#1084#1080#1090#1080#1074#1086#1074' '#1074' '#1075#1088#1072#1092#1080#1095#1077#1089#1082#1086#1084' '#1088#1077#1076#1072#1082#1090#1086#1088#1077', '#1080' '#1087#1086#1089#1090#1088#1086#1080#1083#1080' '#1080#1079' ' +
          #1085#1080#1093' '#1095#1090#1086'-'#1090#1086' '#1089#1091#1097#1077#1089#1090#1074#1077#1085#1085#1086' '#1073#1086#1083#1100#1096#1077#1077'. '#1064#1072#1073#1083#1086#1085#1099', '#1086' '#1082#1086#1090#1086#1088#1099#1093' '#1084#1099' '#1075#1086#1074#1086#1088#1080#1083#1080' '#1074 +
          #1099#1096#1077', '#1087#1086#1079#1074#1086#1083#1103#1102#1090' '#1085#1072#1084' '#1086#1087#1080#1089#1072#1090#1100' '#1083#1102#1073#1091#1102' '#1084#1077#1090#1072#1084#1086#1076#1077#1083#1100' '#1074' '#1090#1077#1088#1084#1080#1085#1072#1093' '#1101#1090#1080#1093' UML-' +
          #1087#1088#1080#1084#1080#1090#1080#1074#1086#1074', '#1040#1083#1077#1082#1089#1072#1085#1076#1088' '#1074#1099#1096#1077' '#1080#1093' '#1091#1078#1077' '#1087#1077#1088#1077#1095#1080#1089#1083#1103#1083', ?'#1050#1083#1072#1089#1089'?, ?'#1050#1072#1090#1077#1075#1086#1088#1080 +
          #1103'?, ?'#1057#1074#1103#1079#1100'? '#1080' '#1090'.'#1076'. '#1048' '#1074' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1077' '#1087#1086#1083#1091#1095#1080#1090#1100' '#1085#1086#1074#1099#1077' '#1090#1077#1088#1084#1080#1085#1099', '#1085#1086#1074#1099#1077' ' +
          #1087#1088#1080#1084#1080#1090#1080#1074#1099', '#1091#1078#1077' '#1091#1088#1086#1074#1085#1077#1084' '#1074#1099#1096#1077' '#1080' '#1087#1088#1080#1090#1086#1084' '#1088#1077#1082#1091#1088#1089#1080#1074#1085#1086', '#1077#1089#1083#1080' '#1085#1072#1076#1086', '#1080#1089#1087#1086 +
          #1083#1100#1079#1091#1103' '
        
          #1082#1086#1090#1086#1088#1099#1077', '#1082#1086#1085#1082#1088#1077#1090#1085#1099#1081' '#1087#1088#1086#1077#1082#1090#1080#1088#1086#1074#1097#1080#1082' '#1080#1083#1080' '#1087#1088#1086#1075#1088#1072#1084#1084#1080#1089#1090' '#1080' '#1073#1091#1076#1077#1090' '#1089#1086#1079#1076#1072#1074 +
          #1072#1090#1100' '#1082#1086#1085#1082#1088#1077#1090#1085#1091#1102' '#1084#1086#1076#1077#1083#1100' '#1080' '#1087#1086#1083#1091#1095#1072#1090#1100' '#1080#1079' '#1085#1077#1077' '#1082#1086#1076'. '#1058'.'#1077'. '#1092#1072#1082#1090#1080#1095#1077#1089#1082#1080', '#1096#1072 +
          #1073#1083#1086#1085#1099' - '#1101#1090#1086' '#1090#1086', '#1095#1090#1086' '#1092#1086#1088#1084#1080#1088#1091#1077#1090' '#1082#1086#1085#1082#1088#1077#1090#1085#1099#1081' DSL '#1080' '#1082#1086#1084#1087#1080#1083#1080#1088#1091#1077#1090' '#1084#1086#1076#1077#1083 +
          #1100', '#1085#1072' '#1085#1077#1084' '#1085#1072#1088#1080#1089#1086#1074#1072#1085#1085#1091#1102', '#1074' '#1082#1086#1076', '#1072' UML '#1101#1090#1086' '#1087#1088#1086#1089#1090#1086' '#1089#1087#1086#1089#1086#1073' '#1088#1080#1089#1086#1074#1072#1085#1080#1103 +
          ' '#1101#1090#1086#1081' '#1084#1086#1076#1077#1083#1080'. '#1058'.'#1077'. '#1095#1077#1083#1086#1074#1077#1082', '#1076#1072#1078#1077' '#1093#1086#1088#1086#1096#1086' '#1079#1085#1072#1082#1086#1084#1099#1081' '#1089' '#1082#1083#1072#1089#1089#1080#1095#1077#1089#1082#1080#1084' ' +
          'UML, '#1084#1086#1078#1077#1090' '#1076#1072#1083#1077#1082#1086' '#1085#1077' '#1089#1088#1072#1079#1091' ?'#1074#1098#1077#1093#1072#1090#1100'? '#1074' '#1090#1086', '#1095#1090#1086' '#1091#1074#1080#1076#1080#1090' '#1085#1072#1088#1080#1089#1086#1074#1072#1085#1085 +
          #1099#1084' '#1091' '#1085#1072#1089'.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1054#1087#1088#1072#1074 +
          #1076#1099#1074#1072#1102#1090#1089#1103' '#1083#1080' ?'#1087#1086#1090#1077#1088#1080' '#1074#1088#1077#1084#1077#1085#1080'? '#1085#1072' '#1089#1086#1079#1076#1072#1085#1080#1077' '#1082#1086#1076#1072' '#1074' '#1075#1088#1072#1092#1080#1095#1077#1089#1082#1086#1081' '#1085#1086#1090#1072 +
          #1094#1080#1080' '#1087#1086#1074#1099#1096#1077#1085#1080#1077#1084' '#1077#1075#1086' '#1082#1072#1095#1077#1089#1090#1074#1072'?</span></p>'
        
          '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088'</strong>: '#1057' '#1084#1086#1077#1081' '#1090#1086#1095#1082#1080' '#1079#1088#1077#1085#1080#1103' - '#1086#1087#1088#1072#1074#1076#1099#1074#1072#1102#1090 +
          #1089#1103'. '#1047#1072' '#1089#1095#1105#1090' '#1074#1086#1079#1084#1086#1078#1085#1086#1089#1090#1080' '#1089#1090#1077#1088#1077#1086#1090#1080#1087#1086#1074' '#1073#1086#1083#1077#1077' '#1074#1099#1089#1086#1082#1086#1075#1086' '#1091#1088#1086#1074#1085#1103'. '#1050#1072#1082' '#1090 +
          #1086#1083#1100#1082#1086' '#1074#1080#1076#1080#1084', '#1095#1090#1086' '#1087#1088#1086#1077#1082#1090#1085#1099#1077' '#1088#1077#1096#1077#1085#1080#1103' '#1085#1072#1095#1080#1085#1072#1102#1090' '#1087#1086#1074#1090#1086#1088#1103#1090#1100#1089#1103'. '#1041#1086#1083#1077#1077' '#1090 +
          #1086#1075#1086' '#1084#1086#1076#1077#1083#1100' '#1074#1083#1080#1103#1077#1090' '#1085#1072' '#1092#1088#1077#1081#1084#1074#1086#1088#1082' '#1088#1072#1079#1088#1072#1073#1086#1090#1082#1080', '#1072' '#1092#1088#1077#1081#1084#1074#1086#1088#1082' - '#1074#1083#1080#1103#1077#1090' ' +
          #1085#1072' '#1084#1086#1076#1077#1083#1100'. '#1053#1091' '#1080' '#1088#1077#1092#1072#1082#1090#1086#1088#1080#1085#1075' '#1087#1088#1080' '#1085#1072#1083#1080#1095#1080#1080' '#1084#1086#1076#1077#1083#1080' ('#1080' '#1090#1077#1089#1090#1086#1074') '#1087#1077#1088#1077#1093#1086 +
          #1076#1080#1090' '#1085#1072' '#1089#1086#1074#1077#1088#1096#1077#1085#1085#1086' '#1080#1085#1086#1081' '#1087#1086' '#1082#1072#1095#1077#1089#1090#1074#1091' '#1091#1088#1086#1074#1077#1085#1100', '#1082#1072#1082' '#1074#1099#1096#1077' '#1091#1078#1077' '#1075#1086#1074#1086#1088#1080#1083 +
          #1086#1089#1100'.</p>'
        
          '<p><strong>'#1052#1072#1082#1089#1080#1084'</strong>: '#1040#1083#1077#1082#1089#1072#1085#1076#1088' '#1089#1082#1072#1079#1072#1083' '#1086' '#1089#1090#1077#1088#1077#1086#1090#1080#1087#1072#1093' '#1074#1099#1089#1086#1082 +
          #1086#1075#1086' '#1091#1088#1086#1074#1085#1103', '#1101#1090#1086' '#1086#1090#1076#1077#1083#1100#1085#1072#1103' '#1086#1095#1077#1085#1100' '#1074#1072#1078#1085#1072#1103' '#1090#1077#1084#1072', '#1080' '#1101#1090#1086' '#1089#1072#1084#1099#1081' '#1084#1086#1097#1085#1099#1081' ' +
          #1084#1077#1093#1072#1085#1080#1079#1084' '#1082#1086#1090#1086#1088#1099#1081' '#1089#1077#1081#1095#1072#1089' '#1085#1072#1084' '#1080#1079#1074#1077#1089#1090#1077#1085'. '#1069#1090#1086' '#1082#1072#1082' '#1088#1072#1079' '#1090#1086', '#1095#1090#1086' '#1087#1086#1079#1074#1086#1083 +
          #1103#1077#1090' '#1087#1088#1077#1074#1088#1072#1097#1072#1090#1100' '#1072#1090#1086#1084#1099' '#1074' '#1084#1086#1083#1083#1077#1082#1091#1083#1099', '#1084#1086#1083#1083#1077#1082#1091#1083#1099' '#1074' '#1089#1087#1083#1072#1074#1099', '#1076#1077#1090#1072#1083#1080', '#1072#1075 +
          #1088#1077#1075#1072#1090#1099' '#1080', '#1085#1072#1082#1086#1085#1077#1094', '#1074' '#1075#1086#1090#1086#1074#1099#1081' '#1087#1088#1086#1076#1091#1082#1090'.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1042#1099' '#1091#1087 +
          #1086#1084#1103#1085#1091#1083#1080' '#1090#1077#1089#1090#1099' '#1074' '#1082#1086#1085#1090#1077#1082#1089#1090#1077' '#1088#1077#1092#1072#1082#1090#1086#1088#1080#1085#1075#1072'. '#1047#1085#1072#1095#1080#1090' '#1083#1080' '#1101#1090#1086', '#1095#1090#1086' '#1074' '#1094#1077#1083 +
          #1086#1084' '#1073#1077#1079' '#1090#1077#1089#1090#1086#1074' '#1085#1077#1095#1077#1075#1086' '#1076#1091#1084#1072#1090#1100' '#1086' '#1088#1077#1092#1072#1082#1090#1086#1088#1080#1085#1075#1077', '#1072' '#1073#1077#1079' '#1088#1077#1092#1072#1082#1090#1086#1088#1080#1085#1075#1072' '#1080 +
          ' '#1084#1086#1076#1077#1083#1080#1088#1086#1074#1072#1085#1080#1077' '#1085#1077' '#1086#1089#1086#1073#1086' '#1085#1091#1078#1085#1086'?</span></p>'
        
          '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088'</strong>: '#1053#1072' '#1084#1086#1081' '#1074#1079#1075#1083#1103#1076', '#1083#1091#1095#1096#1077', '#1082#1086#1085#1077#1095#1085#1086', '#1089#1085 +
          #1072#1095#1072#1083#1072' '#1090#1077#1089#1090#1099', '#1072' '#1087#1086#1090#1086#1084' UML, '#1084#1086#1076#1077#1083#1080#1088#1086#1074#1072#1085#1080#1077', '#1082#1086#1076#1086#1075#1077#1085#1077#1088#1072#1094#1080#1103'. '#1053#1086' '#1091' '#1085#1072#1089 +
          ' '#1101#1090#1086' '#1080#1089#1090#1086#1088#1080#1095#1077#1089#1082#1080' '#1087#1088#1086#1080#1089#1093#1086#1076#1080#1083#1086' '#1085#1072#1086#1073#1086#1088#1086#1090'. '#1053#1086' '#1103' '#1073#1099' '#1090#1077#1087#1077#1088#1100' '#1082#1086#1085#1077#1095#1085#1086' '#1087#1088 +
          #1077#1076#1087#1086#1095#1105#1083' '#1073#1099' '#1089#1085#1072#1095#1072#1083#1072' '#1090#1077#1089#1090#1099'. '#1052#1099' '#1085#1077' ?'#1087#1088#1086#1089#1090#1086' '#1076#1091#1084#1072#1077#1084' '#1086' '#1090#1077#1089#1090#1072#1093'?. '#1052#1099' '#1079#1085#1072 +
          #1077#1084', '#1095#1090#1086' '#1086#1085#1080' '#1077#1089#1090#1100'. '#1063#1090#1086' '#1086#1085#1080' ?'#1079#1072#1074#1090#1088#1072' '#1087#1086#1082#1072#1078#1091#1090' '#1086#1096#1080#1073#1082#1080'?. '#1048' '#1087#1086#1082#1072#1079#1099#1074#1072#1102#1090'.' +
          ' '#1053#1086' '#1080' '#1082#1086#1085#1077#1095#1085#1086' - ?'#1084#1099' '#1076#1091#1084#1072#1077#1084' '#1086' '#1090#1077#1089#1090#1072#1093'?. '#1052#1099' '#1087#1080#1096#1077#1084' ?'#1091#1087#1088#1077#1078#1076#1072#1102#1097#1080#1077'? '#1090#1077#1089 +
          #1090#1099'. '#1059' '#1085#1072#1089' '#1077#1089#1090#1100' ?'#1088#1077#1075#1088#1077#1089#1089#1080#1086#1085#1099#1077' '#1090#1077#1089#1090#1099'?. '#1045#1089#1090#1100' '#1090#1077#1089#1090#1099', '#1082#1086#1090#1086#1088#1099#1077' '#1090#1077#1089#1090#1080#1088#1091 +
          #1102#1090' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103'. '#1048' '#1086#1085#1080' '#1087#1086#1079#1074#1086#1083#1103#1102#1090' '#1088#1077#1092#1072#1082#1090#1086#1088#1080#1090#1100' '#1073#1077#1079' '#1089#1080#1083#1100#1085#1086#1075#1086' '#1091#1097#1077#1088#1073#1072' '#1082 +
          #1072#1095#1077#1089#1090#1074#1091'.</p>'
        
          '<p><strong>'#1052#1072#1082#1089#1080#1084'</strong>: '#1085#1077' '#1089#1086#1075#1083#1072#1096#1091#1089#1100' '#1089' '#1040#1083#1077#1082#1089#1072#1085#1076#1088#1086#1084', '#1084#1085#1077' '#1082#1072#1078#1077 +
          #1090#1089#1103', '#1095#1090#1086' '#1101#1090#1086' '#1074#1079#1072#1080#1084#1086#1076#1086#1087#1086#1083#1085#1103#1102#1097#1080#1077' '#1074#1077#1097#1080', '#1080' '#1089' '#1095#1077#1075#1086' '#1085#1072#1095#1072#1090#1100', '#1085#1077' '#1090#1072#1082' '#1074#1072#1078 +
          #1085#1086'. '#1057#1082#1086#1088#1077#1077', '#1101#1090#1086' '#1076#1086#1083#1078#1085#1086' '#1086#1087#1088#1077#1076#1077#1083#1103#1090#1100#1089#1103' '#1074#1085#1091#1090#1088#1077#1085#1085#1077#1081' '#1082#1091#1083#1100#1090#1091#1088#1086#1081' '#1080' '#1087#1088#1077#1076#1087 +
          #1086#1095#1090#1077#1085#1080#1103#1084#1080' '#1082#1086#1083#1083#1077#1082#1090#1080#1074#1072'. '#1071' '#1073#1099' '#1074#1086#1090' '#1074#1089#1077' '#1088#1072#1074#1085#1086' '#1089' '#1084#1086#1076#1077#1083#1080#1088#1086#1074#1072#1085#1080#1103' '#1085#1072#1095#1072#1083', ' +
          #1074' '#1082#1086#1085#1094#1077' '#1082#1086#1085#1094#1086#1074', '#1090#1077#1089#1090#1099' '#1090#1086#1078#1077' '#1084#1086#1078#1085#1086' '#1080' '#1085#1091#1078#1085#1086' '#1075#1077#1085#1077#1088#1080#1088#1086#1074#1072#1090#1100', '#1072' '#1085#1077' '#1087#1080#1089#1072 +
          #1090#1100' '#1074#1088#1091#1095#1085#1091#1102'.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083'</strong><strong>'#1086 +
          #1076'</strong>: '#1040#1083#1077#1082#1089#1072#1085#1076#1088', '#1082#1072#1082' '#1103' '#1087#1086#1085#1103#1083', '#1080#1079#1085#1072#1095#1072#1083#1100#1085#1086' '#1042#1099' '#1073#1099#1083#1080' '#1087#1088#1086#1090#1080#1074#1085#1080#1082 +
          #1086#1084' UML? '#1054#1075#1083#1103#1076#1099#1074#1072#1103#1089#1100' '#1085#1072#1079#1072#1076' ('#1074#1086#1079#1084#1086#1078#1085#1086', '#1089' '#1091#1083#1099#1073#1082#1086#1081'), '#1084#1086#1078#1085#1086' '#1083#1080' '#1089#1082#1072#1079#1072#1090 +
          #1100', '#1095#1090#1086' '#1042#1099' '#1076#1091#1084#1072#1083#1080' '#1090#1072#1082': ?'#1079#1072#1095#1077#1084' '#1084#1085#1077' UML, '#1103' '#1080' '#1090#1072#1082' '#1082#1086#1085#1090#1088#1086#1083#1080#1088#1091#1102' '#1089#1074#1086#1081' '#1082 +
          #1086#1076'??</span></p>'
        
          '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088'</strong>: '#1050#1072#1082' '#1088#1072#1079' '#1091' '#1084#1077#1085#1103' '#1083#1080#1095#1085#1086' '#1076#1072#1074#1085#1099#1084'-'#1076#1072#1074#1085#1086 +
          ' '#1073#1099#1083#1086' '#1086#1089#1086#1079#1085#1072#1085#1080#1077' '#1090#1086#1075#1086', '#1095#1090#1086' ?'#1087#1088#1086#1073#1083#1077#1084#1099' '#1077#1089#1090#1100'?. '#1053#1086' '#1073#1077#1079' '#1082#1086#1076#1086#1075#1077#1085#1077#1088#1072#1094#1080#1080' ' +
          #1080' '#1087#1086#1089#1090#1086#1103#1085#1085#1086#1081' '#1089#1080#1085#1093#1088#1086#1085#1080#1079#1072#1094#1080#1080' '#1089' '#1084#1086#1076#1077#1083#1100#1102' '#1103' '#1085#1077' '#1087#1086#1085#1080#1084#1072#1083', '#1082#1072#1082' UML '#1084#1086#1078#1077#1090 +
          ' '#1084#1085#1077' '#1083#1080#1095#1085#1086' '#1087#1086#1084#1086#1095#1100'. '#1058#1077#1087#1077#1088#1100' - '#1087#1086#1085#1080#1084#1072#1102' '#1080' '#1087#1086#1083#1100#1079#1091#1102#1089#1100' '#1082#1072#1078#1076#1099#1081' '#1076#1077#1085#1100', '#1093#1086#1090 +
          #1103' '#1101#1090#1086' '#1082#1086#1085#1077#1095#1085#1086' '#1091#1078#1077' '#1085#1077#1087#1088#1086#1089#1090#1086' UML, '#1082#1072#1082' '#1084#1099' '#1074#1099#1096#1077' '#1088#1072#1089#1089#1082#1072#1079#1072#1083#1080'.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1057#1090#1072#1083' ' +
          #1083#1080' ?'#1074#1072#1096' UML? '#1077#1097#1077' '#1086#1076#1085#1080#1084' '#1089#1087#1086#1089#1086#1073#1086#1084' '#1076#1086#1082#1091#1084#1077#1085#1090#1080#1088#1086#1074#1072#1090#1100' '#1087#1088#1086#1075#1088#1072#1084#1084#1085#1099#1081' '#1082#1086#1076'?' +
          '</span></p>'
        
          '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088'</strong>: '#1044#1072' '#1082#1086#1085#1077#1095#1085#1086'. '#1041#1086#1083#1077#1077' '#1090#1086#1075#1086' '#1091' '#1085#1072#1089' '#1074#1089#1077' ' +
          #1084#1086#1076#1077#1083#1080' '#1080#1085#1090#1077#1075#1088#1080#1088#1091#1102#1090#1089#1103' '#1074' '#1086#1073#1097#1091#1102' '#1075#1080#1087#1077#1088#1090#1077#1082#1089#1090#1086#1074#1091#1102' '#1073#1072#1079#1091' '#1079#1085#1072#1085#1080#1081'. '#1042' '#1085#1077#1081' '#1089 +
          #1086#1076#1077#1088#1078#1080#1090#1089#1103' '#1090#1072#1082#1078#1077' bug-tracking '#1080' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103'.</p>'
        
          '<p><strong>'#1052#1072#1082#1089#1080#1084'</strong>: &#8230;'#1080' '#1077#1097#1077' '#1084#1085#1086#1075#1086' '#1095#1077#1075#1086', '#1095#1090#1086' '#1077#1089#1090#1100' '#1085#1072 +
          #1096#1077' know-how. '#1050#1089#1090#1072#1090#1080', '#1080#1085#1090#1077#1075#1088#1072#1094#1080#1103' '#1090#1086#1078#1077' '#1087#1086#1089#1090#1088#1086#1077#1085#1072' '#1085#1072' '#1090#1077#1093' '#1078#1077' '#1089#1072#1084#1099#1093' '#1096 +
          #1072#1073#1083#1086#1085#1072#1093': html '#1076#1083#1103' '#1073#1072#1079#1099' '#1075#1077#1085#1077#1088#1080#1088#1091#1077#1090#1089#1103' '#1080#1079' '#1084#1086#1076#1077#1083#1080', '#1082#1072#1082' '#1080' '#1080#1089#1093#1086#1076#1085#1099#1081' '#1082#1086 +
          #1076', '#1080' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1087#1086#1084#1077#1097#1072#1077#1090#1089#1103' '#1085#1072' '#1089#1077#1088#1074#1077#1088'.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1042' '#1082#1072#1082 +
          #1086#1084' '#1074#1080#1076#1077' UML-'#1084#1086#1076#1077#1083#1080' '#1080#1085#1090#1077#1075#1088#1080#1088#1091#1102#1090#1089#1103'? '#1053#1077' '#1074' '#1074#1080#1076#1077' '#1078#1077' '#1082#1072#1088#1090#1080#1085#1086#1082'!</span><' +
          '/p>'
        
          '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088'</strong>: '#1042' '#1074#1080#1076#1077' '#1082#1072#1088#1090#1080#1085#1086#1082' '#1089' '#1075#1080#1087#1077#1088#1089#1089#1099#1083#1082#1072#1084#1080' '#1080 +
          ' '#1087#1086#1103#1089#1085#1103#1102#1097#1077#1081' '#1076#1086#1082#1091#1084#1077#1085#1090#1072#1094#1080#1077#1081'. '#1053#1086' '#1086#1090' '#1082#1072#1088#1090#1080#1085#1082#1080' '#1074#1089#1077#1075#1076#1072' '#1084#1086#1078#1085#1086' '#1087#1077#1088#1077#1081#1090#1080' '#1082 +
          ' '#1088#1077#1072#1083#1100#1085#1086#1081' '#1076#1080#1072#1075#1088#1072#1084#1084#1077' '#1074' '#1080#1085#1089#1090#1088#1091#1084#1077#1085#1090#1077' '#1088#1072#1073#1086#1090#1099' '#1089' UML.</p>'
        
          '<p><strong>'#1052#1072#1082#1089#1080#1084'</strong>: '#1080' '#1085#1072#1086#1073#1086#1088#1086#1090', '#1072' '#1077#1097#1077' '#1082' '#1085#1080#1084' '#1078#1077' '#1072#1074#1090#1086#1084#1072#1090#1086#1084 +
          ' '#1087#1088#1080#1074#1103#1079#1099#1074#1072#1102#1090#1089#1103' '#1080#1079#1084#1077#1085#1103#1102#1097#1080#1077' '#1079#1072#1076#1072#1095#1080' '#1080' '#1082#1086#1084#1084#1080#1090#1099' '#1074' '#1088#1077#1087#1086#1079#1080#1090#1072#1088#1080#1081'.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1048#1089#1087#1086#1083 +
          #1100#1079#1091#1102#1090#1089#1103' '#1083#1080' UML-'#1076#1080#1072#1075#1088#1072#1084#1084#1099' '#1076#1083#1103' '#1074#1079#1072#1080#1084#1086#1076#1077#1081#1089#1090#1074#1080#1103' '#1089' ?'#1085#1077'-'#1087#1088#1086#1075#1088#1072#1084#1084#1080#1089#1090#1072#1084#1080 +
          '??</span></p>'
        
          '<p><strong>'#1052#1072#1082#1089#1080#1084'</strong>: '#1042' '#1085#1072#1095#1072#1083#1077' '#1074#1085#1077#1076#1088#1077#1085#1080#1103' '#1084#1099' '#1087#1099#1090#1072#1083#1080#1089#1100' '#1080#1089#1087#1086#1083 +
          #1100#1079#1086#1074#1072#1090#1100' UML '#1076#1083#1103' '#1074#1079#1072#1080#1084#1086#1076#1077#1081#1089#1090#1074#1080#1103'. '#1042#1089#1077' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103' '#1073#1099#1083#1080' '#1089#1087#1088#1086#1077#1082#1090#1080#1088#1086#1074#1072 +
          #1085#1099' '#1074' '#1074#1080#1076#1077' '#1076#1080#1072#1075#1088#1072#1084#1084' UseCase '#1080' Sequence. '#1042' '#1084#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086' '#1087#1086#1085#1103#1090#1085#1086#1084', '#1082 +
          #1072#1082' '#1085#1072#1084' '#1082#1072#1079#1072#1083#1086#1089#1100', '#1076#1083#1103' '#1085#1077' '#1089#1087#1077#1094#1080#1072#1083#1080#1089#1090#1072' '#1074#1080#1076#1077'. '#1055#1077#1088#1074#1091#1102' '#1074#1077#1088#1089#1080#1102' '#1089#1080#1089#1090#1077#1084#1099' ' +
          #1060'1, '#1085#1072#1096#1080' '#1082#1086#1083#1083#1077#1075#1080' '#1102#1088#1080#1089#1090#1099' '#1080' '#1084#1072#1088#1082#1077#1090#1086#1083#1086#1075#1080', '#1089#1090#1072#1074#1103#1097#1080#1077' '#1079#1072#1076#1072#1095#1091', '#1095#1077#1089#1090#1085#1086' '#1087 +
          #1086#1087#1099#1090#1072#1083#1080#1089#1100' '#1087#1088#1086#1095#1080#1090#1072#1090#1100' '#1089' '#1076#1080#1072#1075#1088#1072#1084#1084', '#1080' '#1091' '#1085#1080#1093' '#1101#1090#1086' '#1076#1072#1078#1077' '#1087#1086#1083#1091#1095#1080#1083#1086#1089#1100'. '#1053#1086'&' +
          '#8230;, '#1089#1082#1072#1078#1077#1084' '#1090#1072#1082', '#1087#1088#1072#1082#1090#1080#1082#1072' '#1085#1077' '#1087#1088#1080#1078#1080#1083#1072#1089#1100'.</p>'
        
          '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088'</strong>: '#1042#1089#1077'-'#1090#1072#1082#1080', '#1085#1077' '#1090#1077#1093#1085#1072#1088#1080' ('#1085#1077' '#1087#1086' '#1086#1073#1088#1072#1079 +
          #1086#1074#1072#1085#1080#1102', '#1072' '#1087#1086' '#1087#1088#1080#1079#1074#1072#1085#1080#1102'), '#1085#1077' '#1086#1095#1077#1085#1100' '#1083#1102#1073#1103#1090' '#1074#1089#1103#1082#1080#1077' '#1092#1086#1088#1084#1072#1083#1100#1085#1099#1077' '#1103#1079#1099#1082#1080'.' +
          ' '#1048#1084' '#1087#1086#1076#1089#1086#1079#1085#1072#1090#1077#1083#1100#1085#1086' '#1087#1088#1086#1097#1077' '#1085#1072' '#1088#1091#1089#1089#1082#1086#1084' '#1083#1080#1090#1077#1088#1072#1090#1091#1088#1085#1086#1084', '#1072' '#1085#1077' '#1085#1072' UML. '#1069 +
          #1090#1086' '#1091#1078#1077' '#1080#1079' '#1088#1072#1079#1088#1103#1076#1072' '#1087#1089#1080#1093#1086#1083#1086#1075#1080#1080'.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1050#1072#1082#1080#1077 +
          ' UML-'#1076#1080#1072#1075#1088#1072#1084#1084#1099' '#1080' '#1074' '#1082#1072#1082#1086#1084' '#1086#1073#1098#1077#1084#1077' '#1080#1089#1087#1086#1083#1100#1079#1091#1102#1090#1089#1103'?</span></p>'
        
          '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088'</strong>: '#1055#1088#1077#1078#1076#1077' '#1074#1089#1077#1075#1086', '#1076#1080#1072#1075#1088#1072#1084#1084#1099' '#1082#1083#1072#1089#1089#1086#1074' '#1080 +
          '  UseCase&#8217;'#1086#1074'.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1042#1099' '#1085#1072 +
          #1093#1086#1076#1080#1090#1077' '#1076#1088#1091#1075#1080#1077' '#1076#1080#1072#1075#1088#1072#1084#1084#1099' '#1084#1077#1085#1077#1077' '#1087#1086#1083#1077#1079#1085#1099#1084#1080'? '#1053#1072#1087#1088#1080#1084#1077#1088', ?'#1084#1086#1079#1075#1086#1074'? '#1087#1088#1086#1075 +
          #1088#1072#1084#1084#1080#1089#1090#1086#1074' '#1093#1074#1072#1090#1072#1077#1090', '#1095#1090#1086#1073#1099' '#1086#1073#1086#1081#1090#1080#1089#1100' '#1073#1077#1079' '#1076#1080#1072#1075#1088#1072#1084#1084#1099' ?'#1086#1073#1098#1077#1082#1090#1086#1074'??</spa' +
          'n></p>'
        
          '<p><strong>'#1052#1072#1082#1089#1080#1084'</strong>: '#1053#1077#1090'. '#1048#1085#1086#1075#1076#1072' '#1080#1089#1087#1086#1083#1100#1079#1091#1077#1084' '#1076#1080#1072#1075#1088#1072#1084#1084#1099' '#1089#1086#1089 +
          #1090#1086#1103#1085#1080#1081', '#1086#1087#1080#1089#1099#1074#1072#1077#1084' '#1085#1072' '#1085#1080#1093' '#1080' '#1075#1077#1085#1077#1088#1080#1088#1091#1077#1084' '#1082#1086#1076' state machines. '#1053#1086' '#1101#1090#1086 +
          ' '#1086#1095#1077#1085#1100' '#1088#1077#1076#1082#1086'. '#1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1077' '#1082#1086#1085#1077#1095#1085#1099#1093' '#1072#1074#1090#1086#1084#1072#1090#1086#1074', '#1085#1072' '#1092#1086#1088#1084#1072#1083#1100#1085#1086#1084' '#1091#1088 +
          #1086#1074#1085#1077', '#1090#1086#1078#1077' '#1090#1088#1077#1073#1091#1077#1090' '#1086#1087#1088#1077#1076#1077#1083#1077#1085#1085#1086#1081' '#1079#1072#1090#1086#1095#1082#1080' '#1084#1086#1079#1075#1072'. '#1045#1097#1077' '#1082#1086#1077'-'#1075#1076#1077' '#1080#1089#1087#1086#1083 +
          #1100#1079#1091#1102#1090#1089#1103' sequence, '#1085#1086' '#1080#1089#1082#1083#1102#1095#1080#1090#1077#1083#1100#1085#1086' '#1082#1072#1082' '#1080#1083#1083#1102#1089#1090#1088#1072#1094#1080#1103', '#1090'.'#1077'. '#1082#1072#1082' ?'#1084#1077 +
          #1088#1090#1074#1072#1103' '#1076#1080#1072#1075#1088#1072#1084#1084#1072'?, '#1089#1077#1081#1095#1072#1089' '#1080#1079' '#1085#1080#1093' '#1085#1080' '#1095#1077#1075#1086' '#1085#1077' '#1075#1077#1085#1077#1088#1080#1088#1091#1077#1090#1089#1103', '#1072' '#1079#1085#1072#1095#1080 +
          #1090', '#1082#1072#1082' '#1074#1099#1096#1077' '#1075#1086#1074#1086#1088#1080#1083' '#1040#1083#1077#1082#1089#1072#1085#1076#1088', '#1074#1088#1077#1084#1103' '#1078#1080#1079#1085#1080' '#1091' '#1085#1077#1077' '#1086#1095#1077#1085#1100' '#1082#1086#1088#1086#1090#1082#1086#1077'.' +
          '</p>'
        
          '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088'</strong>: '#1042#1086#1079#1084#1086#1078#1085#1086', Sequence '#1076#1072#1078#1077' '#1073#1086#1083#1077#1077' '#1087#1086#1083 +
          #1077#1079#1085#1099', '#1087#1088#1086#1089#1090#1086' '#1087#1086#1082#1072' '#1085#1077' '#1076#1086#1096#1083#1080' '#1088#1091#1082#1080' '#1089#1076#1077#1083#1072#1090#1100' '#1076#1083#1103' '#1085#1080#1093' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1102#1097#1091#1102' ' +
          #1082#1086#1076#1086#1075#1077#1085#1077#1088#1072#1094#1080#1102'. '#1040' '#1076#1080#1072#1075#1088#1072#1084#1084#1072' ?'#1086#1073#1098#1077#1082#1090#1086#1074'? '#1101#1090#1086' '#1082#1072#1082' '#1088#1072#1079' '#1090#1077' '#1089#1072#1084#1099#1077' '#1094#1077#1087#1086#1095 +
          #1082#1080' SAX-'#1092#1080#1083#1100#1090#1088#1086#1074'. '#1050#1086#1075#1076#1072' '#1086#1087#1077#1088#1080#1088#1091#1077#1084' '#1091#1078#1077' '#1085#1077' '#1082#1083#1072#1089#1089#1072#1084#1080', '#1072' '#1080#1093' '#1101#1082#1079#1077#1084#1087#1083#1103#1088 +
          #1072#1084#1080'.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1050#1083#1072#1089#1089 +
          #1080#1095#1077#1089#1082#1080#1081' RAD-'#1087#1086#1076#1093#1086#1076' '#1079#1072#1078#1080#1084#1072#1077#1090' '#1087#1088#1086#1075#1088#1072#1084#1084#1080#1089#1090#1072' '#1074' '#1076#1086#1089#1090#1072#1090#1086#1095#1085#1086' '#1091#1079#1082#1080#1077' '#1088#1072#1084#1082 +
          #1080'. '#1041#1072#1079#1072' '#1076#1072#1085#1085#1099#1093', '#1080#1085#1090#1077#1088#1092#1077#1081#1089', '#1092#1086#1088#1084#1072', '#1082#1086#1084#1087#1086#1085#1077#1085#1090#1099', '#1089#1086#1073#1099#1090#1080#1103', '#1087#1088#1086#1094#1077#1076#1091#1088#1099 +
          ' '#1086#1090#1082#1083#1080#1082#1072'. '#1053#1072#1089#1082#1086#1083#1100#1082#1086' '#1091#1076#1072#1083#1086#1089#1100' '#1088#1072#1089#1096#1080#1088#1080#1090#1100' '#1101#1090#1080' '#1088#1072#1084#1082#1080' '#1079#1072' '#1089#1095#1105#1090' UML?</sp' +
          'an></p>'
        
          '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088'</strong>: UML ?'#1079#1072#1078#1080#1084#1072#1077#1090'? '#1074' '#1088#1072#1084#1082#1072#1093' '#1090#1086#1081' ?'#1084#1077#1090#1072 +
          '-'#1084#1086#1076#1077#1083#1080'?, '#1082#1086#1090#1086#1088#1072#1103' '#1088#1072#1079#1088#1072#1073#1086#1090#1072#1085#1072'. '#1053#1086' '#1082' '#1101#1090#1086#1084#1091' '#1086#1090#1095#1072#1089#1090#1080' '#1080' '#1089#1090#1088#1077#1084#1080#1083#1080#1089#1100'. ' +
          #1055#1086' '#1089#1088#1072#1074#1085#1077#1085#1080#1102' '#1089' RAD - '#1075#1086#1088#1072#1079#1076#1086' '#1072#1082#1090#1080#1074#1085#1077#1077' '#1080#1089#1087#1086#1083#1100#1079#1091#1102#1090#1089#1103' '#1087#1088#1080#1084#1077#1089#1080' '#1080' '#1101#1083#1077 +
          #1084#1077#1085#1090#1099' '#1040#1054#1055'. '#1040' '#1090#1072#1082#1078#1077' '#1076#1077#1082#1083#1072#1088#1072#1090#1080#1074#1085#1099#1081', '#1072' '#1085#1077' '#1080#1084#1087#1077#1088#1072#1090#1080#1074#1085#1099#1081' '#1087#1086#1076#1093#1086#1076' '#1082' '#1085#1077#1082 +
          #1086#1090#1086#1088#1099#1084' '#1095#1072#1089#1090#1103#1084' '#1087#1088#1086#1077#1082#1090#1086#1074'. '#1058'.'#1077'. '#1085#1072' '#1084#1086#1076#1077#1083#1080' '#1088#1080#1089#1091#1077#1090#1089#1103' ?'#1084#1086#1076#1077#1083#1100' '#1076#1072#1085#1085#1099#1093'? ' +
          #1087#1086' '#1084#1072#1082#1089#1080#1084#1091#1084#1091' '#1086#1090#1086#1088#1074#1072#1085#1085#1072#1103' '#1086#1090' '#1090#1086#1075#1086' '#1074#1086' '#1095#1090#1086' '#1086#1085#1072' '#1092#1080#1079#1080#1095#1077#1089#1082#1080' '#1076#1086#1083#1078#1085#1072' '#1087#1088#1077#1074 +
          #1088#1072#1090#1080#1090#1100#1089#1103', '#1072' '#1074' ?'#1072#1082#1090#1080#1074#1085#1099#1081' '#1082#1086#1076'? '#1086#1085#1072' '#1090#1088#1072#1085#1089#1092#1086#1088#1084#1080#1088#1091#1077#1090#1089#1103' '#1091#1078#1077' '#1087#1088#1080' '#1087#1086#1084#1086#1097#1080 +
          ' '#1082#1086#1076#1086#1075#1077#1085#1077#1088#1072#1090#1086#1088#1072'. '#1053#1072#1087#1088#1080#1084#1077#1088' ?'#1089#1093#1077#1084#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072'? '#1080#1083#1080' '#1085#1072#1073#1086#1088' ?'#1085#1072#1089#1090#1088#1086#1077#1082'?' +
          ' '#1087#1088#1086#1077#1082#1090#1072'. '#1056#1072#1079#1085#1086#1075#1086' '#1088#1086#1076#1072' '#1094#1077#1087#1086#1095#1082#1080' SAX-'#1092#1080#1083#1100#1090#1088#1086#1074', '#1080' '#1090'.'#1076'.</p>'
        
          '<p><strong>'#1052#1072#1082#1089#1080#1084'</strong>: '#1042#1072#1078#1085#1086', '#1095#1090#1086' '#1086#1085' '#1079#1072#1078#1080#1084#1072#1077#1090' '#1090#1072#1084', '#1075#1076#1077' '#1074#1099' '#1089 +
          #1072#1084#1080' '#1088#1077#1096#1080#1090#1077'. '#1052#1077#1090#1072#1084#1072#1076#1077#1083#1100' '#1085#1077' '#1085#1072#1074#1103#1079#1099#1074#1072#1077#1090' '#1085#1080#1082#1072#1082#1080#1093' '#1087#1088#1072#1074#1080#1083' '#1089#1074#1086#1077#1084#1091' '#1072#1074#1090#1086#1088 +
          #1091', '#1086#1085#1072' '#1085#1072#1074#1103#1079#1099#1074#1072#1077#1090' '#1080#1093' '#1090#1086#1083#1100#1082#1086' '#1084#1086#1076#1077#1083#1080' '#1080' '#1090#1086#1084#1091', '#1082#1090#1086' '#1077#1077' '#1073#1091#1076#1077#1090' '#1089#1086#1079#1076#1072#1074#1072#1090 +
          #1100'. '#1042' '#1086#1076#1085#1086#1084' '#1084#1077#1089#1090#1077' '#1074#1099' '#1079#1072#1078#1080#1084#1072#1077#1090#1077', '#1072' '#1074' '#1076#1088#1091#1075#1086#1084' -  '#1076#1072#1077#1090#1077' '#1091#1085#1080#1082#1072#1083#1100#1085#1091#1102' '#1075#1080 +
          #1073#1082#1086#1089#1090#1100' '#1080' '#1089#1082#1086#1088#1086#1089#1090#1100' lego-'#1082#1086#1085#1089#1090#1088#1091#1082#1090#1086#1088#1072'.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1050#1072#1082' '#1080 +
          #1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1077' '#1084#1086#1076#1077#1083#1077#1081' '#1087#1086#1074#1083#1080#1103#1083#1086' '#1085#1072' '#1072#1088#1093#1080#1090#1077#1082#1090#1091#1088#1091' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1103' '#1080' '#1089#1090#1088#1091#1082#1090 +
          #1091#1088#1091' '#1087#1088#1086#1075#1088#1072#1084#1084#1085#1086#1075#1086' '#1082#1086#1076#1072'?</span></p>'
        
          '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088'</strong>: '#1044#1077#1083#1086' '#1082#1086#1085#1077#1095#1085#1086' '#1085#1077' '#1090#1086#1083#1100#1082#1086' '#1074' '#1084#1086#1076#1077#1083#1103#1093'.' +
          ' '#1044#1077#1083#1086' '#1074' ?'#1075#1080#1075#1080#1077#1085#1077' '#1084#1086#1079#1075#1072'? <img src='#39'http://blogs.embarcadero.com/f' +
          'eeds/wp-includes/images/smilies/icon_smile.gif'#39' alt='#39':-)'#39' class=' +
          #39'wp-smiley'#39' /> '#1053#1086' '#1087#1088#1072#1074#1080#1083#1100#1085#1086#1077' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1077' '#1084#1086#1076#1077#1083#1080#1088#1086#1074#1072#1085#1080#1103' '#1087#1086#1074#1099#1096#1072#1077 +
          #1090' '#1077#1105'. '#1048', '#1076#1072', '#1084#1086#1076#1077#1083#1100' - '#1087#1086#1084#1086#1097#1085#1080#1082'. '#1054#1075#1086#1074#1086#1088#1102#1089#1100', '#1077#1089#1083#1080' '#1085#1077#1090' '#1078#1077#1083#1072#1085#1080#1103' '#1091#1083#1091#1095 +
          #1096#1072#1090#1100', '#1090#1086' '#1085#1080#1082#1072#1082#1080#1077' '#1084#1086#1076#1077#1083#1080' '#1085#1077' '#1087#1086#1084#1086#1075#1091#1090'. '#1050#1072#1082', '#1074#1087#1088#1086#1095#1077#1084', '#1080' '#1083#1102#1073#1099#1077' '#1076#1088#1091#1075#1080#1077 +
          ' '#1087#1088#1072#1082#1090#1080#1082#1080'.</p>'
        
          '<p>'#1040' '#1085#1072' '#1072#1088#1093#1080#1090#1077#1082#1090#1091#1088#1091' UML '#1080' '#1084#1086#1076#1077#1083#1080#1088#1086#1074#1072#1085#1080#1077' '#1074#1083#1080#1103#1077#1090' '#1087#1086#1083#1086#1078#1080#1090#1077#1083#1100#1085#1086' <img' +
          ' src='#39'http://blogs.embarcadero.com/feeds/wp-includes/images/smil' +
          'ies/icon_smile.gif'#39' alt='#39':-)'#39' class='#39'wp-smiley'#39' /> '#1055#1086#1103#1074#1083#1103#1102#1090#1089#1103' '#1083#1086 +
          #1075#1080#1095#1077#1089#1082#1080#1077' '#1089#1083#1086#1080'. '#1048#1089#1095#1077#1079#1072#1102#1090' '#1087#1072#1088#1072#1079#1080#1090#1085#1099#1077' '#1094#1080#1082#1083#1080#1095#1077#1089#1082#1080#1077' '#1079#1072#1074#1080#1089#1080#1084#1086#1089#1090#1080', '#1080' '#1090#1076 +
          '.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1055#1086#1088#1072#1073 +
          #1086#1090#1072#1077#1084' '#1074' '#1088#1077#1078#1080#1084#1077' ?'#1073#1083#1080#1094#1072'?. '#1050#1086#1075#1076#1072', '#1087#1086'-'#1074#1072#1096#1077#1084#1091', '#1085#1077' '#1085#1091#1078#1085#1086' '#1087#1088#1080#1084#1077#1085#1103#1090#1100' UML' +
          ' '#1080' '#1084#1086#1076#1077#1083#1080#1088#1086#1074#1072#1085#1080#1077'?</span></p>'
        
          '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088'</strong>: '#1044#1083#1103' '#1053#1048#1056' '#1080' '#1087#1088#1086#1095#1080#1093' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1081'. '#1044#1083 +
          #1103' '#1087#1088#1086#1077#1082#1090#1072' ?'#1085#1072' '#1076#1074#1072'-'#1090#1088#1080' '#1084#1077#1089#1103#1094#1072'?, '#1082#1086#1090#1086#1088#1099#1081' '#1087#1086#1090#1086#1084', '#1089#1082#1086#1088#1077#1077' '#1074#1089#1077#1075#1086', '#1085#1077' '#1087 +
          #1088#1080#1076#1105#1090#1089#1103' '#1087#1086#1076#1076#1077#1088#1078#1080#1074#1072#1090#1100'.</p>'
        
          '<p><strong>'#1052#1072#1082#1089#1080#1084'</strong>: '#1045#1089#1083#1080' UML '#1080#1089#1087#1086#1083#1100#1079#1091#1077#1090#1089#1103' '#1090#1086#1083#1100#1082#1086' '#1076#1083#1103' '#1088#1080#1089 +
          #1086#1074#1072#1085#1080#1103', '#1090#1086' '#1089#1086#1075#1083#1072#1089#1077#1085' '#1089' '#1040#1083#1077#1082#1089#1072#1085#1076#1088#1086#1084', '#1085#1086' '#1077#1089#1083#1080' '#1076#1083#1103' '#1084#1077#1090#1072#1084#1086#1076#1077#1083#1080#1088#1086#1074#1072#1085#1080#1103 +
          ' '#1080' '#1082#1086#1076#1086#1075#1077#1085#1077#1088#1072#1094#1080#1080', '#1090#1086' '#1103' '#1089#1095#1080#1090#1072#1102' '#1095#1090#1086' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' '#1101#1090#1086' '#1084#1086#1078#1085#1086' '#1080' '#1085#1091#1078#1085#1086 +
          ' '#1074#1089#1077#1075#1076#1072', '#1086#1089#1086#1073#1077#1085#1086' '#1077#1089#1083#1080' '#1074#1099' '#1087#1088#1080#1074#1099#1082#1083#1080' '#1101#1090#1086' '#1076#1077#1083#1072#1090#1100'. '#1056#1072#1079#1091#1084#1077#1077#1090#1089#1103' '#1077#1089#1083#1080' '#1101#1090 +
          #1086' '#1085#1077' ?hello world?. '#1061#1086#1090#1103' '#1084#1085#1077', '#1085#1072#1074#1077#1088#1085#1086#1077', '#1080' ?hello world? '#1073#1091#1076#1077#1090' '#1087#1088 +
          #1086#1097#1077' '#1089#1075#1077#1085#1077#1088#1080#1088#1086#1074#1072#1090#1100', '#1087#1086' '#1082#1088#1072#1081#1085#1077' '#1084#1077#1088#1077' '#1085#1077' '#1085#1091#1078#1085#1086' '#1074#1089#1087#1086#1084#1080#1085#1072#1090#1100' '#1082#1072#1082' '#1076#1077#1083#1072#1090#1100 +
          ' '#1085#1086#1074#1099#1081' '#1087#1088#1086#1077#1082#1090' '#1074' IDE :), '#1074#1077#1076#1100' '#1087#1088#1086#1077#1082#1090#1099' '#1091' '#1085#1072#1089' '#1090#1086#1078#1077' '#1075#1077#1085#1077#1088#1080#1088#1091#1102#1090#1089#1103'.</p' +
          '>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1042' '#1082#1072#1082 +
          #1086#1081' '#1084#1086#1084#1077#1085#1090' '#1088#1072#1079#1074#1080#1090#1080#1103' '#1080' '#1087#1086' '#1082#1072#1082#1080#1084' '#1087#1088#1080#1079#1085#1072#1082#1072#1084' '#1084#1086#1078#1085#1086' '#1089#1082#1072#1079#1072#1090#1100', '#1095#1090#1086' '#1090#1086#1090' '#1089 +
          #1087#1086#1089#1086#1073' '#1082#1086#1090#1086#1088#1099#1084' '#1074#1099' '#1080#1089#1087#1086#1083#1100#1079#1091#1077#1090#1077' UML '#1101#1092#1092#1077#1082#1090#1080#1074#1077#1085'?</span></p>'
        
          '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088'</strong>: '#1044#1086#1089#1090#1072#1090#1086#1095#1085#1086' '#1089#1088#1072#1074#1085#1080#1090#1100' '#1074#1088#1077#1084#1103' '#1085#1072#1087#1080#1089#1072#1085 +
          #1080#1103' '#1082#1072#1082#1086#1081'-'#1085#1080#1073#1091#1076#1100' '#1092#1091#1085#1082#1094#1080#1086#1085#1072#1083#1100#1085#1086#1089#1090#1080' ?'#1074#1088#1091#1095#1085#1091#1102'? '#1080#1083#1080' '#1074#1072#1096#1080#1084' '#1089#1087#1086#1089#1086#1073#1086#1084'.</' +
          'p>'
        
          '<p><strong>'#1052#1072#1082#1089#1080#1084'</strong>: '#1045#1076#1080#1085#1089#1090#1074#1077#1085#1085#1086#1077', '#1089#1091#1097#1077#1089#1090#1074#1091#1102#1090' '#1077#1097#1077' '#1090#1077#1093#1085#1080#1095#1077 +
          #1089#1082#1080#1077' '#1086#1075#1088#1072#1085#1080#1095#1077#1085#1080#1103' '#1082#1086#1085#1082#1088#1077#1090#1085#1086#1075#1086' '#1080#1085#1089#1090#1088#1091#1084#1077#1085#1090#1072', '#1080#1085#1086#1075#1076#1072' '#1086#1085#1080' '#1084#1086#1075#1091#1090' '#1086#1082#1072#1079#1099 +
          #1074#1072#1090#1100' '#1082#1088#1072#1081#1085#1077' '#1085#1077#1075#1072#1090#1080#1074#1085#1086#1077' '#1074#1083#1080#1103#1085#1080#1077'.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1050#1072#1082' '#1087 +
          #1086#1101#1090#1072#1087#1085#1086' '#1087#1088#1080#1089#1090#1091#1087#1080#1090#1100' '#1082' '#1074#1085#1077#1076#1088#1077#1085#1080#1102' '#1084#1086#1076#1077#1083#1080#1088#1086#1074#1072#1085#1080#1103' '#1074' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1077#1085#1085#1099#1081' ' +
          #1087#1088#1086#1094#1077#1089#1089'?</span></p>'
        
          '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088'</strong>: '#1052#1086#1078#1085#1086' '#1085#1072#1095#1072#1090#1100' '#1074' '#1083#1102#1073#1086#1081' '#1084#1086#1084#1077#1085#1090'. '#1043#1083#1072#1074 +
          #1085#1086#1077', '#1089#1088#1072#1079#1091' '#1085#1077' '#1087#1099#1090#1072#1090#1100#1089#1103' ?'#1086#1073#1098#1103#1090#1100' '#1085#1077#1086#1073#1098#1103#1090#1085#1086#1077'?.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1050#1072#1082#1091#1102 +
          ' '#1095#1072#1089#1090#1100' '#1079#1072#1076#1072#1095' '#1084#1086#1078#1085#1086' '#1090#1077#1089#1085#1086' '#1080#1085#1090#1077#1075#1088#1080#1088#1086#1074#1072#1090#1100' '#1089' UML '#1080' '#1075#1077#1085#1077#1088#1072#1094#1080#1077#1081' '#1082#1086#1076#1072', ' +
          #1072' '#1095#1090#1086' '#1084#1086#1078#1085#1086' '#1086#1089#1090#1072#1074#1080#1090#1100' ?'#1082#1072#1082' '#1077#1089#1090#1100'??</span></p>'
        
          '<p><strong>'#1052#1072#1082#1089#1080#1084'</strong>: '#1086#1089#1090#1072#1074#1083#1103#1090#1100' '#1084#1086#1078#1085#1086' '#1082#1072#1082#1080#1077'-'#1090#1086' '#1085#1077' '#1089#1080#1083#1100#1085#1086' '#1089 +
          #1090#1088#1091#1082#1090#1091#1088#1080#1088#1086#1074#1072#1085#1085#1099#1077', '#1091#1085#1080#1082#1072#1083#1100#1085#1099#1077' '#1072#1083#1075#1086#1088#1080#1090#1084#1099', '#1095#1090#1086'-'#1090#1086', '#1074' '#1095#1077#1084' '#1085#1077#1090' '#1096#1072#1073#1083#1086#1085 +
          #1072', '#1087#1086#1074#1090#1086#1088#1085#1086#1075#1086' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1103', '#1082#1072#1082#1086#1081'-'#1090#1086' '#1089#1080#1089#1090#1077#1084#1099', '#1082#1086#1090#1086#1088#1091#1102' '#1084#1086#1078#1085#1086' '#1092#1086#1088 +
          #1084#1072#1083#1080#1079#1086#1074#1072#1090#1100' '#1080' '#1088#1077#1087#1088#1086#1076#1091#1094#1080#1088#1086#1074#1072#1090#1100'.</p>'
        
          '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088'</strong>: '#1059' '#1084#1077#1085#1103' '#1089#1072#1084#1086#1075#1086' '#1076#1072#1083#1077#1082#1086' '#1085#1077' '#1074#1089#1105' '#1087#1077#1088#1077#1074 +
          #1077#1076#1077#1085#1086' '#1085#1072' '#1084#1086#1076#1077#1083#1100'. '#1071' '#1074' '#1087#1077#1088#1074#1091#1102' '#1086#1095#1077#1088#1077#1076#1100' '#1087#1077#1088#1077#1074#1086#1078#1091' '#1083#1080#1073#1086' '#1085#1086#1074#1099#1077' '#1082#1083#1072#1089#1089#1099'/'#1089 +
          #1091#1097#1085#1086#1089#1090#1080'. '#1048#1083#1080' '#1090#1077', '#1082#1086#1090#1086#1088#1099#1077' '#1079#1072#1090#1088#1072#1075#1080#1074#1072#1102' '#1074' '#1087#1088#1086#1094#1077#1089#1089#1077' '#1087#1077#1088#1077#1076#1077#1083#1086#1082'. '#1051#1080#1073#1086' '#1090 +
          #1077', '#1082#1086#1090#1086#1088#1099#1077' ?'#1088#1077#1092#1072#1082#1090#1086#1088#1102'?.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1053#1072#1074#1077#1088 +
          #1085#1086#1077', '#1073#1099#1083#1080' '#1080#1089#1087#1088#1086#1073#1086#1074#1072#1085#1099' '#1080' '#1076#1088#1091#1075#1080#1077' '#1087#1086#1076#1093#1086#1076#1099'. '#1045#1089#1090#1100' '#1083#1080' '#1072#1083#1100#1090#1077#1088#1085#1072#1090#1080#1074#1072' UML' +
          ' '#1074' '#1089#1086#1074#1088#1077#1084#1077#1085#1085#1086#1084' '#1084#1080#1088#1077' '#1088#1072#1079#1088#1072#1073#1086#1090#1082#1080' '#1055#1054'?</span></p>'
        
          '<p><strong>'#1052#1072#1082#1089#1080#1084'</strong>: '#1044#1083#1103' '#1085#1072#1089', '#1074' '#1090#1086#1084' '#1074#1080#1076#1077', '#1074' '#1082#1086#1090#1086#1088#1086#1084' '#1084#1099' '#1077#1075 +
          #1086' '#1080#1089#1087#1086#1083#1100#1079#1091#1077#1084', - '#1085#1077#1090'. '#1053#1086' '#1103' '#1074#1099#1096#1077' '#1091#1078#1077' '#1075#1086#1074#1086#1088#1080#1083', '#1095#1090#1086' '#1101#1090#1086' '#1074#1086#1086#1073#1097#1077' '#1085#1077' '#1086#1095 +
          #1077#1085#1100' '#1087#1088#1080#1085#1094#1080#1087#1080#1072#1083#1100#1085#1086', '#1082#1072#1082#1080#1084' '#1082#1086#1085#1082#1088#1077#1090#1085#1099#1084' '#1086#1073#1088#1072#1079#1086#1084' '#1088#1080#1089#1086#1074#1072#1090#1100' '#1089#1090#1088#1077#1083#1086#1095#1082#1080' '#1089 +
          ' '#1082#1074#1072#1076#1088#1072#1090#1080#1082#1072#1084#1080'. '#1043#1083#1072#1074#1085#1086#1077', '#1095#1090#1086' '#1084#1099' '#1089' '#1085#1080#1084' '#1076#1077#1083#1072#1077#1084', '#1072' '#1085#1077' '#1082#1072#1082' '#1101#1090#1086' '#1074#1099#1075#1083#1103#1076 +
          #1080#1090'.</p>'
        
          '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088'</strong>: '#1059#1090#1086#1095#1085#1102', '#1085#1072' '#1089#1072#1084#1086#1084' '#1076#1077#1083#1077' '#1072#1083#1100#1090#1077#1088#1085#1072#1090#1080#1074 +
          ' '#1080#1084#1077#1085#1085#1086' UML '#1084#1085#1086#1075#1086', '#1080' '#1080#1084#1077#1085#1085#1086' '#1087#1086#1090#1086#1084#1091', '#1095#1090#1086' '#1076#1083#1103' '#1085#1072#1089' '#1101#1090#1086' '#1087#1088#1086#1089#1090#1086' '#1089#1087#1086#1089#1086 +
          #1073' '#1086#1087#1080#1089#1072#1085#1080#1103' '#1084#1086#1076#1077#1083#1080'. '#1052#1086#1078#1085#1086' '#1074#1079#1103#1090#1100' '#1083#1102#1073#1091#1102' '#1076#1088#1091#1075#1091#1102' '#1075#1088#1072#1092#1080#1095#1077#1089#1082#1091#1102' '#1085#1086#1090#1072#1094#1080#1102',' +
          ' '#1082#1086#1090#1086#1088#1072#1103' '#1080#1084#1077#1077#1090' '#1074' '#1073#1072#1079#1080#1089#1077' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1099#1077' '#1085#1072#1084' '#1087#1086#1085#1103#1090#1080#1103', '#1080' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' ' +
          #1077#1077'. '#1052#1086#1078#1085#1086' '#1086#1087#1080#1089#1072#1090#1100' '#1089#1074#1086#1102'. '#1052#1086#1078#1085#1086' '#1074#1086#1086#1073#1097#1077', '#1080' '#1103' '#1086#1073' '#1101#1090#1086#1084' '#1072#1082#1090#1080#1074#1085#1086' '#1076#1091#1084#1072#1102',' +
          ' '#1087#1077#1088#1077#1081#1090#1080' '#1085#1072' '#1090#1077#1082#1089#1090#1086#1074#1086#1077' '#1086#1087#1080#1089#1072#1085#1080#1077' '#1084#1086#1076#1077#1083#1080', '#1090'.'#1077'. '#1089#1086#1079#1076#1072#1090#1100' '#1077#1097#1077' '#1086#1076#1080#1085' DSL' +
          '. '#1042#1072#1088#1080#1072#1085#1090#1086#1074' '#1084#1085#1086#1075#1086' '#1080' '#1080#1093' '#1084#1086#1078#1085#1086' '#1082#1086#1084#1073#1080#1085#1080#1088#1086#1074#1072#1090#1100'.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1045#1089#1090#1100' ' +
          #1083#1080' '#1085#1077#1082#1080#1077' '#1087#1088#1077#1076#1077#1083#1099' '#1074#1086#1079#1084#1086#1078#1085#1086#1089#1090#1077#1081' '#1074#1072#1096#1077#1075#1086' '#1087#1086#1076#1093#1086#1076#1072'?</span></p>'
        
          '<p><strong>'#1052#1072#1082#1089#1080#1084'</strong>: '#1082#1072#1082' '#1090#1086#1083#1100#1082#1086' '#1074#1099' '#1085#1072#1095#1072#1083#1080' '#1089#1086#1079#1076#1072#1074#1072#1090#1100' '#1089#1086#1073#1089#1090 +
          #1074#1077#1085#1085#1099#1077' '#1084#1077#1090#1072'-'#1084#1086#1076#1077#1083#1080', '#1083#1102#1073#1099#1077' '#1086#1075#1088#1072#1085#1080#1095#1077#1085#1080#1103' '#1080#1089#1095#1077#1079#1072#1102#1090', '#1084#1086#1078#1077#1090' '#1085#1077' '#1093#1074#1072#1090#1072#1090#1100 +
          ' '#1083#1080#1096#1100' '#1092#1072#1085#1090#1072#1079#1080#1080' '#1080' '#1091#1084#1077#1085#1080#1103' '#1074#1080#1076#1077#1090#1100' '#1074' '#1095#1072#1089#1090#1085#1086#1084' '#1086#1073#1097#1077#1077'.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1053#1077#1091#1078#1077 +
          #1083#1080' '#1074#1089#1077' '#1090#1072#1082'  '#1079#1072#1084#1077#1095#1072#1090#1077#1083#1100#1085#1086', '#1080' '#1085#1077#1090' '#1087#1088#1103#1084#1086' '#1085#1080' '#1082#1072#1082#1080#1093' '#1087#1088#1086#1073#1083#1077#1084'? '#1061#1086#1095#1077#1090#1089#1103' ' +
          #1074' '#1083#1091#1095#1096#1080#1093' '#1090#1077#1072#1090#1088#1072#1083#1100#1085#1099#1093' '#1090#1088#1072#1076#1080#1094#1080#1103#1093' '#1079#1072#1082#1088#1080#1095#1072#1090#1100': ?'#1053#1077' '#1074#1077#1088#1102'?!</span></p>'
        
          '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088'</strong>: '#1050#1086#1085#1077#1095#1085#1086', '#1077#1089#1090#1100'. '#1055#1088#1077#1078#1076#1077' '#1074#1089#1077#1075#1086', '#1086#1075#1088#1072 +
          #1085#1080#1095#1077#1085#1080#1103' '#1080#1085#1089#1090#1088#1091#1084#1077#1085#1090#1072'. '#1053#1077#1076#1086#1089#1090#1072#1090#1086#1095#1085#1072#1103' '#1089#1082#1086#1088#1086#1089#1090#1100' '#1075#1077#1085#1077#1088#1072#1094#1080#1080' '#1085#1072' '#1073#1086#1083#1100#1096#1080#1093 +
          ' '#1084#1086#1076#1077#1083#1103#1093'. '#1053#1077#1086#1087#1090#1080#1084#1072#1083#1100#1085#1086#1089#1090#1100' '#1080#1085#1090#1077#1088#1092#1077#1081#1089#1072' UML '#1088#1077#1076#1072#1082#1090#1086#1088#1072' '#1080' '#1090'.'#1076'.</p>'
        
          '<p><strong>'#1052#1072#1082#1089#1080#1084'</strong>: '#1087#1088#1086#1073#1083#1077#1084#1072' '#1085#1077' '#1080#1076#1077#1086#1083#1086#1075#1080#1095#1077#1089#1082#1072#1103', '#1072' '#1090#1077#1093#1085#1086#1083 +
          #1086#1075#1080#1095#1077#1089#1082#1072#1103'. '#1052#1099' '#1087#1086#1089#1090#1077#1087#1077#1085#1085#1086' '#1074#1099#1088#1072#1089#1090#1072#1077#1084' '#1080#1079' '#1080#1085#1089#1090#1088#1091#1084#1077#1085#1090#1072#1088#1080#1103', '#1082#1086#1090#1086#1088#1099#1081' '#1073#1099 +
          #1083' '#1089#1076#1077#1083#1072#1085' '#1076#1086#1089#1090#1072#1090#1086#1095#1085#1086' '#1076#1072#1074#1085#1086' '#1080' '#1076#1086#1083#1075#1080#1077' '#1075#1086#1076#1099' '#1089#1086#1093#1088#1072#1085#1103#1083' '#1089#1074#1086#1102' '#1072#1082#1090#1091#1072#1083#1100#1085#1086#1089 +
          #1090#1100'. '#1043#1077#1085#1077#1088#1072#1090#1086#1088' '#1090#1088#1077#1073#1091#1077#1090' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1103', '#1074#1085#1077#1089#1077#1085#1080#1103' '#1084#1086#1076#1080#1092#1080#1082#1072#1094#1080#1081'. '#1053#1086' '#1101#1090#1086' '#1089 +
          #1082#1086#1088#1077#1077' '#1085#1077' "'#1087#1088#1086#1073#1083#1077#1084#1072'", '#1072' "'#1079#1072#1076#1072#1095#1072'".</p>'
        
          '<p>'#1052#1099' '#1080#1089#1087#1086#1083#1100#1079#1091#1077#1084' '#1074' '#1082#1072#1095#1077#1089#1090#1074#1077' UML-'#1095#1077#1088#1090#1080#1083#1082#1080' '#1090#1086#1078#1077' '#1086#1090#1076#1077#1083#1100#1085#1099#1081' '#1087#1072#1082#1077#1090'. '#1044 +
          #1072', '#1086#1085' '#1091#1078#1077' '#1095#1072#1089#1090#1100' '#1085#1072#1096#1077#1075#1086' "'#1082#1086#1085#1074#1077#1081#1077#1088#1072'", '#1085#1086' '#1080' '#1077#1075#1086' '#1085#1077' '#1084#1077#1096#1072#1083#1086' '#1073#1099' '#1091#1083#1091#1095#1096#1080 +
          #1090#1100', '#1086#1073#1085#1086#1074#1080#1090#1100'.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1042#1072#1096#1080' ' +
          #1087#1083#1072#1085#1099'?</span></p>'
        
          '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088'</strong>: '#1053#1072#1087#1080#1089#1072#1090#1100' '#1087#1086#1083#1085#1086#1089#1090#1100#1102' '#1089#1074#1086#1081' '#1080#1085#1089#1090#1088#1091#1084#1077#1085 +
          #1090' - '#1088#1077#1076#1072#1082#1090#1086#1088' '#1084#1086#1076#1077#1083#1080'. '#1058#1072#1082' '#1089#1082#1072#1079#1072#1090#1100', '#1089#1076#1077#1083#1072#1090#1100' ?'#1088#1072#1073#1086#1090#1091' '#1085#1072#1076' '#1086#1096#1080#1073#1082#1072#1084#1080'? ' +
          #1074' '#1091#1078#1077' '#1089#1091#1097#1077#1089#1090#1074#1091#1102#1097#1080#1093'.</p>'
        
          '<p><strong>'#1052#1072#1082#1089#1080#1084'</strong>: '#1048' '#1087#1088#1080' '#1090#1086#1084' - '#1082#1088#1086#1089#1089#1087#1083#1072#1090#1092#1086#1088#1084#1077#1085#1085#1085#1099#1081'. '#1042' '#1086 +
          #1073#1097#1077#1084', '#1074' '#1101#1090#1086#1084' '#1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1080' '#1090#1086#1078#1077' '#1077#1089#1090#1100' '#1082#1091#1095#1072' '#1080#1076#1077#1081', '#1082#1072#1082' '#1089#1076#1077#1083#1072#1090#1100' '#1087#1088#1086#1094#1077#1089 +
          #1089' '#1084#1086#1076#1077#1083#1080#1088#1086#1074#1072#1085#1080#1103' '#1077#1097#1077' '#1073#1086#1083#1077#1077' '#1101#1092#1092#1077#1082#1090#1080#1074#1085#1099#1084'.</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1042' '#1089#1083#1077 +
          #1076#1091#1102#1097#1077#1081' '#1089#1090#1072#1090#1100#1077' '#1086#1073#1089#1091#1076#1080#1084' DSL?</span></p>'
        '<p><strong>'#1052#1072#1082#1089#1080#1084'</strong>: '#1044#1072', '#1082#1086#1085#1077#1095#1085#1086'.</p>'
        '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088'</strong>: '#1057' '#1091#1076#1086#1074#1086#1083#1100#1089#1090#1074#1080#1077#1084'!</p>'
        
          '<p><span style="color: #0000ff"><strong>'#1042#1089#1077#1074#1086#1083#1086#1076'</strong>: '#1050#1072#1082' '#1089 +
          #1086#1090#1088#1091#1076#1085#1080#1082' <a href="http://www.embarcadero.com/ru">Embarcadero</a>' +
          ', '#1087#1086#1083#1100#1079#1091#1103#1089#1100' '#1089#1083#1091#1078#1077#1073#1085#1099#1084' '#1087#1086#1083#1086#1078#1077#1085#1080#1077#1084', '#1089#1087#1088#1072#1096#1080#1074#1072#1102'&#8230; '#1042#1099' '#1080#1089#1087#1086#1083#1100#1079#1091#1077#1090 +
          #1077' <a href="https://www.embarcadero.com/ru/products/delphi">Delph' +
          'i</a>?</span></p>'
        
          '<p><strong>'#1040#1083#1077#1082#1089#1072#1085#1076#1088'</strong>: '#1044#1072', '#1103' '#1087#1088#1080#1084#1077#1085#1103#1102' <a href="https://w' +
          'ww.embarcadero.com/ru/products/delphi">Delphi</a> '#1074' '#1088#1072#1079#1088#1072#1073#1086#1090#1082#1077'. ' +
          #1071' '#1079#1085#1072#1102' '#1086' '#1087#1088#1086#1090#1080#1074#1086#1088#1077#1095#1080#1103#1093' '#1084#1077#1078#1076#1091' RAD '#1080' UML, '#1080' '#1103' '#1089#1090#1072#1088#1072#1102#1089#1100' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090 +
          #1100' '#1089#1080#1083#1100#1085#1099#1077' '#1089#1090#1086#1088#1086#1085#1099' '#1082#1072#1078#1076#1086#1081' '#1080#1079' '#1090#1077#1093#1085#1086#1083#1086#1075#1080#1081' '#1080' '#1076#1086#1089#1090#1080#1075#1072#1102' '#1079#1085#1072#1095#1080#1090#1077#1083#1100#1085#1086#1081' '#1089 +
          #1080#1085#1077#1088#1075#1080#1080'. '#1071' '#1085#1077' '#1080#1089#1087#1086#1083#1100#1079#1091#1102' Delphi '#1082#1072#1082' '#1095#1080#1089#1090#1099#1081' RAD-'#1080#1085#1089#1090#1088#1091#1084#1077#1085#1090' '#1076#1083#1103' '#1088#1072#1079 +
          #1084#1077#1097#1077#1085#1080#1103' '#1082#1085#1086#1087#1086#1082' '#1085#1072' '#1092#1086#1088#1084#1072#1093'. '#1069#1090#1086' - '#1086#1076#1085#1072' '#1080#1079' '#1082#1086#1084#1087#1086#1085#1077#1085#1090' '#1076#1086#1089#1090#1072#1090#1086#1095#1085#1086' '#1089#1083#1086 +
          #1078#1085#1086#1081' '#1090#1077#1093#1085#1086#1083#1086#1075#1080#1095#1077#1089#1082#1086#1081' '#1094#1077#1087#1086#1095#1082#1080'. '#1057#1077#1081#1095#1072#1089' '#1084#1099' '#1074' '#1087#1088#1086#1094#1077#1089#1089#1077' '#1087#1077#1088#1077#1093#1086#1076#1072' '#1085#1072' D' +
          'elphi XE4. '#1045#1089#1090#1100' '#1087#1086#1090#1088#1077#1073#1085#1086#1089#1090#1100' '#1074' 64-'#1073#1080#1090#1072#1093'.</p>'
        
          '<p><strong>'#1052#1072#1082#1089#1080#1084'</strong>: '#1071' '#1074#1099#1088#1086#1089' '#1085#1072' '#1057'++, '#1085#1086' '#1074' '#1089#1080#1083#1100#1085#1086' '#1075#1077#1090#1077#1088#1086#1075#1077 +
          #1085#1085#1086#1081' '#1089#1088#1077#1076#1077', '#1074' '#1087#1088#1086#1077#1082#1090#1072#1093', '#1074' '#1082#1086#1090#1086#1088#1099#1093' '#1103' '#1091#1095#1072#1089#1090#1074#1086#1074#1072#1083', '#1074' '#1086#1076#1085#1086' '#1080' '#1090#1086#1078#1077' '#1074#1088 +
          #1077#1084#1103' '#1087#1088#1080#1084#1077#1085#1103#1083#1080#1089#1100' Delphi, '#1057'++, python, java '#1080' '#1090'.'#1076'., '#1087#1086#1101#1090#1086#1084#1091' '#1103' '#1085#1080' '#1082 +
          #1086#1075#1076#1072' '#1085#1077' '#1073#1099#1083' '#1089#1090#1086#1088#1086#1085#1085#1080#1082#1086#1084' ?'#1093#1086#1083#1080#1074#1072#1088#1086#1074'? '#1095#1090#1086' ?'#1083#1091#1095#1096#1077'? - '#1082#1072#1078#1076#1086#1081' '#1086#1076#1077#1078#1082#1077' ' +
          #1087#1086' '#1079#1072#1089#1090#1077#1078#1082#1077'. '#1050#1072#1082' '#1088#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1102' '#1087#1088#1086#1077#1082#1090#1072' '#1076#1083#1103' '#1084#1077#1085#1103' '#1075#1083#1072#1074#1085#1086#1077' - '#1101#1092#1092#1077#1082#1090#1080 +
          #1074#1085#1086#1089#1090#1100' '#1088#1077#1096#1077#1085#1080#1103' '#1074' '#1094#1077#1083#1086#1084'. '#1042' '#1085#1072#1096#1077#1081' '#1082#1086#1084#1087#1072#1085#1080#1080' '#1080#1089#1087#1086#1083#1100#1079#1091#1102#1090' Delphi '#1086#1095#1077#1085#1100 +
          ' '#1076#1072#1074#1085#1086' '#1080' '#1080#1085#1090#1077#1085#1089#1080#1074#1085#1086', '#1075#1083#1072#1074#1085#1086#1077' '#1079#1085#1072#1090#1100' '#1089#1080#1083#1100#1085#1099#1077' '#1080' '#1089#1083#1072#1073#1099#1077' '#1089#1090#1086#1088#1086#1085#1099' '#1082#1072#1078#1076 +
          #1086#1075#1086' '#1080#1085#1089#1090#1088#1091#1084#1077#1085#1090#1072', '#1077#1075#1086' '#1087#1086#1090#1077#1085#1094#1080#1072#1083', '#1087#1088#1072#1074#1080#1083#1100#1085#1086' '#1087#1088#1080#1085#1080#1084#1072#1090#1100' '#1085#1072' '#1086#1089#1085#1086#1074#1077' '#1101#1090 +
          #1086#1075#1086' '#1088#1077#1096#1077#1085#1080#1103', '#1074#1099#1089#1090#1088#1072#1080#1074#1072#1090#1100' '#1090#1077#1093#1085#1086#1083#1086#1075#1080#1095#1077#1089#1082#1080#1081' '#1094#1080#1082#1083', '#1087#1086#1076#1073#1080#1088#1072#1090#1100' '#1087#1088#1086#1092#1077#1089#1089 +
          #1080#1086#1085#1072#1083#1086#1074' '#1090#1072#1082', '#1095
        
          #1090#1086' '#1073#1099' '#1086#1085#1080' '#1084#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1086#1074#1072#1083#1080' '#1080#1085#1089#1090#1088#1091#1084#1077#1085#1090#1091'. '#1042' '#1101#1090#1086#1084' '#1089#1084#1099#1089#1083#1077 +
          ', '#1084#1099' '#1080#1089#1087#1086#1083#1100#1079#1091#1077#1084' Delphi '#1084#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086' '#1101#1092#1092#1077#1082#1090#1080#1074#1085#1086'.</p>'
        
          '<p class="akst_link"><a href="http://blogs.embarcadero.com/vsevo' +
          'lodleonov/?p=1339&amp;akst_action=share-this" onclick="akst_shar' +
          'e('#39'1339'#39', '#39'http%3A%2F%2Fblogs.embarcadero.com%2Fvsevolodleonov%2' +
          'F2013%2F08%2F02%2Fwhyumlru%2F'#39', '#39'%D0%97%D0%B0%D1%87%D0%B5%D0%BC+' +
          'UML'#39'); return false;" title="Post to del.icio.us, etc." id="akst' +
          '_link_1339" class="akst_share_link" rel="nofollow">Share This</a' +
          '> | <a href="mailto:?subject=%D0%97%D0%B0%D1%87%D0%B5%D0%BC%20UM' +
          'L&body=Have you seen this? http%3A%2F%2Fblogs.embarcadero.com%2F' +
          'vsevolodleonov%2F2013%2F08%2F02%2Fwhyumlru%2F" id="akst_email_13' +
          '39" class="akst_share_email" rel="nofollow">Email this page to a' +
          ' friend</a></p><br><p class="postfoot">posted @ Fri, 02 Aug 2013' +
          ' 07:40:32 +0000 by Vsevolod Leonov</p></div><hr>'#9#9#9#9'    '#9#9#9#9'    ' +
          '                </div>'
        '                        </td>'
        '                '
        '                                    </tr>'
        '                </table>'
        '                '
        
          '                <div class="clearblock"><img src="http://static.' +
          'embarcadero.com/images/leftnav/spacer.gif" /></div>'
        
          '            '#9'                                <p><small>Server Re' +
          'sponse from: BLOGS2</small></p>'
        '                                            </div>'
        ''
        '            '
        '        </div>'
        #9#9
        '        </div>'
        #9'  </div>'
        '    </div>'
        '  </div>'
        '</div>'
        ''
        '<div class="footer">'
        '  <div class="footer2">'
        '    <div class="footer_center">'
        '        <div style="float:left;">'
        
          '    '#9'Copyright? 1994 - 2013 Embarcadero Technologies, Inc. All r' +
          'ights reserved.        '#9'</div>'
        #9'</div>'
        '  </div>'
        '</div>'
        '</td></tr></table>'
        ''
        ''
        ''
        '<!-- START SUB NAV -->'
        '        <div class="subnav_wrapper" id="subnav_wrapper">'
        '            <div id="Communities_subnav" class="subnav">'
        '                <div class="col">'
        #9#9#9#9#9'<h1>Developer Tools</h1>'
        #9#9#9#9#9'<div class="col">'
        
          #9#9#9#9#9#9'<a href="http://dn.embarcadero.com/blackfish_sql" style="b' +
          'order-top-style:solid;">Blackfish SQL</a>'
        
          #9#9#9#9#9#9'<a href="http://dn.embarcadero.com/c_builder">C++Builder</' +
          'a>'
        #9#9#9#9#9#9'<a href="http://dn.embarcadero.com/delphi">Delphi</a>'
        
          #9#9#9#9#9#9'<a href="http://dn.embarcadero.com/firemonkey">FireMonkey<' +
          '/a>'
        #9#9#9#9#9#9'<a href="http://dn.embarcadero.com/prism">Prism</a>'
        
          #9#9#9#9#9#9'<a href="http://dn.embarcadero.com/interbase">InterBase</a' +
          '>'
        #9#9#9#9#9#9'<a href="http://dn.embarcadero.com/jbuilder">JBuilder</a>'
        
          #9#9#9#9#9#9'<a href="http://dn.embarcadero.com/j_optimizer">J Optimize' +
          'r</a>'
        
          #9#9#9#9#9#9'<a href="http://dn.embarcadero.com/html5builder">HTML5 Bui' +
          'lder</a>'
        
          #9#9#9#9#9#9'<a href="http://dn.embarcadero.com/3rdrail">3rdRail &amp; ' +
          'TurboRuby</a>'
        #9#9#9#9#9'</div>'
        
          #9#9#9#9#9'<div class="clearblock"><img src="http://static.embarcadero' +
          '.com/images/leftnav/spacer.gif" /></div>'
        #9#9#9#9'</div>'
        #9#9#9#9'<div class="col">'
        #9#9#9#9'<h1>Database Tools</h1>'
        
          #9#9#9#9#9'<a href="http://dn.embarcadero.com/change_manager" style="b' +
          'order-top-style:solid;">Change Manager</a>'
        #9#9#9#9#9'<a href="http://dn.embarcadero.com/dbartisan">DBArtisan</a>'
        
          #9#9#9#9#9'<a href="http://dn.embarcadero.com/db_optimizer">DB Optimiz' +
          'er</a>'
        #9#9#9#9#9'<a href="http://dn.embarcadero.com/er_studio">ER/Studio</a>'
        
          #9#9#9#9#9'<a href="http://dn.embarcadero.com/performance_center">Perf' +
          'ormance Center</a>'
        #9#9#9#9#9'<a href="http://dn.embarcadero.com/rapid_sql">Rapid SQL</a>'
        #9#9#9#9'</div>'
        '            </div>'
        '            <div id="Articles_subnav" class="subnav">'
        '               <div class="col">'
        
          #9#9#9#9#9'<a href="http://dn.embarcadero.com/articles" style="border-' +
          'top-style:solid;">Technical Articles</a>'
        #9#9#9#9#9'<a href="http://dn.embarcadero.com/tutorials">Tutorials</a>'
        
          #9#9#9#9#9'<a href="http://dn.embarcadero.com/whitepapers">White Paper' +
          's</a>'
        
          #9#9#9#9#9'<a href="http://dn.embarcadero.com/press">Press Releases</a' +
          '>'
        #9#9#9#9#9'<a href="http://dn.embarcadero.com/newsletters"></a>'
        #9#9#9#9'</div>'
        '            </div>'
        '            <!--'
        '            <div id="Blogs_subnav" class="subnav">'
        '            </div>'
        '            -->'
        '            <div id="Resources_subnav" class="subnav">'
        '               <div class="col">'
        
          '                    <a href="http://gp.embarcadero.com" title="S' +
          'ubmit your own articles for publication and (optionally) get pai' +
          'd." >Add Content (GetPublished)</a>'
        
          #9#9#9#9#9'<a href="http://dn.embarcadero.com/audio" title="Listen to ' +
          'Embarcadero'#39's developers and management." style="border-top-styl' +
          'e:solid;">Audio</a>'
        
          '                    <a href="http://dn.embarcadero.com/tv" title' +
          '="View product demonstrations & listen to Embarcadero'#39's develope' +
          'rs and management." >Audio & Video</a>'
        
          '                    <a href="http://dn.embarcadero.com/video" ti' +
          'tle="Watch presentations and product demonstrations." >Video</a>'
        
          '                    <a href="http://qc.embarcadero.com" title="S' +
          'ubmit bugs and feature requests. Also known as QualityCentral." ' +
          '>Bugs & Suggestions (QualityCentral)</a>'
        
          '                    <a href="https://forums.embarcadero.com" tit' +
          'le="Discussion Forums">Discussion Forums</a>'
        
          '                    <a href="http://cc.embarcadero.com" title="E' +
          'xamples, code, etc.. Also known as CodeCentral." >Examples (Code' +
          'Central)</a>'
        
          '                    <a href="http://dn.embarcadero.com/tag" titl' +
          'e="Tags" >Tags</a>'
        
          '                    <a href="http://tp.embarcadero.com" title="B' +
          'rowse the Embarcadero Technology Partners database." >Technology' +
          ' Partners</a>'
        '                    <!--'
        
          '                    <a href="http://chat.embarcadero.com" >Chats' +
          '</a>'
        
          '                    <a href="http://edn.embarcadero.com/article/' +
          '37476" title="Embarcadero powered-by logos">Logos</a>'
        
          '                    <a href="http://conferences.embarcadero.com"' +
          ' title="Browse the rich resources of Embarcadero'#39's Developer Con' +
          'ference Proceedings." >Conference Proceedings</a>'
        
          '                    <a href="http://dn.embarcadero.com/museum" t' +
          'itle="Download antique versions of Embarcadero software." >Museu' +
          'm</a>'
        
          '                    <a href="http://support.embarcadero.com/foru' +
          'ms/directory" >Discussion Forums</a>'
        '                    -->'
        #9#9#9#9'</div>'
        #9#9#9#9
        '            </div>'
        '            <div id="Downloads_subnav" class="subnav">'
        '               <div class="col">'
        
          '                    <a href="http://www.embarcadero.com/download' +
          's" style="border-top-style:solid;">Downloads</a>'
        
          #9#9#9#9#9'<a href="https://downloads.embarcadero.com/free">Free Trial' +
          's</a>'
        
          #9#9#9#9#9'<a href="http://cc.embarcadero.com/myreg">Registered User D' +
          'ownloads</a>'
        
          #9#9#9#9#9'<a href="http://www.embarcadero.com/products/beta-programs"' +
          '>Beta Programs</a>'
        #9#9#9#9'</div>'
        '            </div>'
        '            <div id="Help_subnav" class="subnav">'
        '               <div class="col">'
        
          '                    <a href="http://dn.embarcadero.com/help/gp">' +
          'Add Content (GetPublished)</a>'
        
          '                    <a href="http://dn.embarcadero.com/help/arti' +
          'cles" style="border-top-style:solid;">Articles</a>'
        
          '                    <a href="http://dn.embarcadero.com/help/blog' +
          's">Blogs</a>'
        
          '                    <a href="http://dn.embarcadero.com/help/qc">' +
          'Bugs & Suggestions (QualityCentral)</a>'
        
          '                    <a href="http://dn.embarcadero.com/help/foru' +
          'ms">Discussion Forums</a>'
        
          '                    <a href="http://dn.embarcadero.com/help/cc">' +
          'Examples (CodeCentral)</a>'
        
          '                    <a href="http://dn.embarcadero.com/help/memb' +
          'ers">Member Services</a>'
        
          '                    <a href="http://dn.embarcadero.com/help/abou' +
          't">About</a>'
        #9#9#9#9'</div>'
        '            </div>'
        '        </div>'
        '        <!-- END SUB NAV -->'
        ''
        ''
        
          '<script language="JavaScript" src="http://static.embarcadero.com' +
          '/javascript/ga.js" type="text/javascript"></script>'
        ''
        ''
        '<script language="JavaScript" type="text/javascript"><!--'
        'showExpandCollapseAll();'
        '// -->'
        '    </script>'
        '  </body>'
        '</html>')
      ScrollBars = ssBoth
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 8
      Top = 8
      Width = 249
      Height = 21
      TabOrder = 1
      Text = 'http://www.raysoftware.cn'
    end
    object Button2: TButton
      Left = 264
      Top = 0
      Width = 75
      Height = 41
      Caption = 'Go!'
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 2
      Top = 35
      Width = 337
      Height = 33
      Caption = 'Load Html from file'
      TabOrder = 3
      OnClick = Button3Click
    end
  end
  object Panel2: TPanel
    Left = 464
    Top = 0
    Width = 343
    Height = 309
    Align = alRight
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 3
    ExplicitWidth = 331
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 341
      Height = 144
      Align = alTop
      Caption = 'parser html tree'
      TabOrder = 0
      object TreeView1: TTreeView
        Left = 2
        Top = 15
        Width = 337
        Height = 127
        Align = alClient
        HideSelection = False
        Indent = 19
        TabOrder = 0
        OnChange = TreeView1Change
        ExplicitHeight = 90
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 145
      Width = 341
      Height = 163
      Align = alClient
      Caption = 'CSS selector search'
      TabOrder = 1
      ExplicitLeft = 96
      ExplicitTop = 216
      ExplicitWidth = 185
      ExplicitHeight = 105
      object ListBox1: TListBox
        Left = 2
        Top = 39
        Width = 337
        Height = 122
        Align = alClient
        ItemHeight = 13
        TabOrder = 0
        ExplicitLeft = 4
        ExplicitTop = 17
        ExplicitWidth = 181
        ExplicitHeight = 88
      end
      object Panel3: TPanel
        Left = 2
        Top = 15
        Width = 337
        Height = 24
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitLeft = 4
        ExplicitTop = 23
        object Label1: TLabel
          Left = 0
          Top = 0
          Width = 94
          Height = 24
          Align = alLeft
          Caption = 'CSS Selector script:'
          ExplicitHeight = 13
        end
        object Edit2: TEdit
          Left = 94
          Top = 0
          Width = 168
          Height = 24
          Align = alClient
          TabOrder = 0
          Text = 'div#header ~ div#main div#container [role]'
          ExplicitLeft = 96
          ExplicitWidth = 166
          ExplicitHeight = 21
        end
        object Button4: TButton
          Left = 262
          Top = 0
          Width = 75
          Height = 24
          Align = alRight
          Caption = 'search'
          TabOrder = 1
          OnClick = Button4Click
        end
      end
    end
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 72
    Top = 96
  end
  object OpenDialog1: TOpenDialog
    Left = 392
    Top = 248
  end
end
