class Curency {
  String base;
  Rates rates;
  String date;

  Curency({this.base, this.rates, this.date});

  Curency.fromJson(Map<String, dynamic> json) {
    base = json['base'];
    rates = json['rates'] != null ? new Rates.fromJson(json['rates']) : null;
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['base'] = this.base;
    if (this.rates != null) {
      data['rates'] = this.rates.toJson();
    }
    data['date'] = this.date;
    return data;
  }
}

class Rates {
  double gBP;
  double hKD;
  double iDR;
  double iLS;
  double dKK;
  double iNR;
  double cHF;
  double mXN;
  double cZK;
  double sGD;
  double tHB;
  double hRK;
  double mYR;
  double nOK;
  double cNY;
  double bGN;
  double pHP;
  double sEK;
  double pLN;
  double zAR;
  double cAD;
  double iSK;
  double bRL;
  double rON;
  double nZD;
  double tRY;
  double jPY;
  double rUB;
  double kRW;
  double uSD;
  double hUF;
  double aUD;

  Rates(
      {this.gBP,
        this.hKD,
        this.iDR,
        this.iLS,
        this.dKK,
        this.iNR,
        this.cHF,
        this.mXN,
        this.cZK,
        this.sGD,
        this.tHB,
        this.hRK,
        this.mYR,
        this.nOK,
        this.cNY,
        this.bGN,
        this.pHP,
        this.sEK,
        this.pLN,
        this.zAR,
        this.cAD,
        this.iSK,
        this.bRL,
        this.rON,
        this.nZD,
        this.tRY,
        this.jPY,
        this.rUB,
        this.kRW,
        this.uSD,
        this.hUF,
        this.aUD});

  Rates.fromJson(Map<String, dynamic> json) {
    gBP = json['GBP'];
    hKD = json['HKD'];
    iDR = json['IDR'];
    iLS = json['ILS'];
    dKK = json['DKK'];
    iNR = json['INR'];
    cHF = json['CHF'];
    mXN = json['MXN'];
    cZK = json['CZK'];
    sGD = json['SGD'];
    tHB = json['THB'];
    hRK = json['HRK'];
    mYR = json['MYR'];
    nOK = json['NOK'];
    cNY = json['CNY'];
    bGN = json['BGN'];
    pHP = json['PHP'];
    sEK = json['SEK'];
    pLN = json['PLN'];
    zAR = json['ZAR'];
    cAD = json['CAD'];
    iSK = json['ISK'];
    bRL = json['BRL'];
    rON = json['RON'];
    nZD = json['NZD'];
    tRY = json['TRY'];
    jPY = json['JPY'];
    rUB = json['RUB'];
    kRW = json['KRW'];
    uSD = json['USD'];
    hUF = json['HUF'];
    aUD = json['AUD'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['GBP'] = this.gBP;
    data['HKD'] = this.hKD;
    data['IDR'] = this.iDR;
    data['ILS'] = this.iLS;
    data['DKK'] = this.dKK;
    data['INR'] = this.iNR;
    data['CHF'] = this.cHF;
    data['MXN'] = this.mXN;
    data['CZK'] = this.cZK;
    data['SGD'] = this.sGD;
    data['THB'] = this.tHB;
    data['HRK'] = this.hRK;
    data['MYR'] = this.mYR;
    data['NOK'] = this.nOK;
    data['CNY'] = this.cNY;
    data['BGN'] = this.bGN;
    data['PHP'] = this.pHP;
    data['SEK'] = this.sEK;
    data['PLN'] = this.pLN;
    data['ZAR'] = this.zAR;
    data['CAD'] = this.cAD;
    data['ISK'] = this.iSK;
    data['BRL'] = this.bRL;
    data['RON'] = this.rON;
    data['NZD'] = this.nZD;
    data['TRY'] = this.tRY;
    data['JPY'] = this.jPY;
    data['RUB'] = this.rUB;
    data['KRW'] = this.kRW;
    data['USD'] = this.uSD;
    data['HUF'] = this.hUF;
    data['AUD'] = this.aUD;
    return data;
  }
}