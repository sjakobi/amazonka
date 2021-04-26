{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.PhoneNumberCountryCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.PhoneNumberCountryCode
  ( PhoneNumberCountryCode
      ( ..,
        PhoneNumberCountryCodeAD,
        PhoneNumberCountryCodeAE,
        PhoneNumberCountryCodeAF,
        PhoneNumberCountryCodeAG,
        PhoneNumberCountryCodeAI,
        PhoneNumberCountryCodeAL,
        PhoneNumberCountryCodeAM,
        PhoneNumberCountryCodeAN,
        PhoneNumberCountryCodeAO,
        PhoneNumberCountryCodeAQ,
        PhoneNumberCountryCodeAR,
        PhoneNumberCountryCodeAS,
        PhoneNumberCountryCodeAT,
        PhoneNumberCountryCodeAU,
        PhoneNumberCountryCodeAW,
        PhoneNumberCountryCodeAZ,
        PhoneNumberCountryCodeBA,
        PhoneNumberCountryCodeBB,
        PhoneNumberCountryCodeBD,
        PhoneNumberCountryCodeBE,
        PhoneNumberCountryCodeBF,
        PhoneNumberCountryCodeBG,
        PhoneNumberCountryCodeBH,
        PhoneNumberCountryCodeBI,
        PhoneNumberCountryCodeBJ,
        PhoneNumberCountryCodeBL,
        PhoneNumberCountryCodeBM,
        PhoneNumberCountryCodeBN,
        PhoneNumberCountryCodeBO,
        PhoneNumberCountryCodeBR,
        PhoneNumberCountryCodeBS,
        PhoneNumberCountryCodeBT,
        PhoneNumberCountryCodeBW,
        PhoneNumberCountryCodeBY,
        PhoneNumberCountryCodeBZ,
        PhoneNumberCountryCodeCA,
        PhoneNumberCountryCodeCC,
        PhoneNumberCountryCodeCD,
        PhoneNumberCountryCodeCF,
        PhoneNumberCountryCodeCG,
        PhoneNumberCountryCodeCH,
        PhoneNumberCountryCodeCI,
        PhoneNumberCountryCodeCK,
        PhoneNumberCountryCodeCL,
        PhoneNumberCountryCodeCM,
        PhoneNumberCountryCodeCN,
        PhoneNumberCountryCodeCO,
        PhoneNumberCountryCodeCR,
        PhoneNumberCountryCodeCU,
        PhoneNumberCountryCodeCV,
        PhoneNumberCountryCodeCW,
        PhoneNumberCountryCodeCX,
        PhoneNumberCountryCodeCY,
        PhoneNumberCountryCodeCZ,
        PhoneNumberCountryCodeDE,
        PhoneNumberCountryCodeDJ,
        PhoneNumberCountryCodeDK,
        PhoneNumberCountryCodeDM,
        PhoneNumberCountryCodeDO,
        PhoneNumberCountryCodeDZ,
        PhoneNumberCountryCodeEC,
        PhoneNumberCountryCodeEE,
        PhoneNumberCountryCodeEG,
        PhoneNumberCountryCodeEH,
        PhoneNumberCountryCodeER,
        PhoneNumberCountryCodeES,
        PhoneNumberCountryCodeET,
        PhoneNumberCountryCodeFI,
        PhoneNumberCountryCodeFJ,
        PhoneNumberCountryCodeFK,
        PhoneNumberCountryCodeFM,
        PhoneNumberCountryCodeFO,
        PhoneNumberCountryCodeFR,
        PhoneNumberCountryCodeGA,
        PhoneNumberCountryCodeGB,
        PhoneNumberCountryCodeGD,
        PhoneNumberCountryCodeGE,
        PhoneNumberCountryCodeGG,
        PhoneNumberCountryCodeGH,
        PhoneNumberCountryCodeGI,
        PhoneNumberCountryCodeGL,
        PhoneNumberCountryCodeGM,
        PhoneNumberCountryCodeGN,
        PhoneNumberCountryCodeGQ,
        PhoneNumberCountryCodeGR,
        PhoneNumberCountryCodeGT,
        PhoneNumberCountryCodeGU,
        PhoneNumberCountryCodeGW,
        PhoneNumberCountryCodeGY,
        PhoneNumberCountryCodeHK,
        PhoneNumberCountryCodeHN,
        PhoneNumberCountryCodeHR,
        PhoneNumberCountryCodeHT,
        PhoneNumberCountryCodeHU,
        PhoneNumberCountryCodeID,
        PhoneNumberCountryCodeIE,
        PhoneNumberCountryCodeIL,
        PhoneNumberCountryCodeIM,
        PhoneNumberCountryCodeIN,
        PhoneNumberCountryCodeIO,
        PhoneNumberCountryCodeIQ,
        PhoneNumberCountryCodeIR,
        PhoneNumberCountryCodeIS,
        PhoneNumberCountryCodeIT,
        PhoneNumberCountryCodeJE,
        PhoneNumberCountryCodeJM,
        PhoneNumberCountryCodeJO,
        PhoneNumberCountryCodeJP,
        PhoneNumberCountryCodeKE,
        PhoneNumberCountryCodeKG,
        PhoneNumberCountryCodeKH,
        PhoneNumberCountryCodeKI,
        PhoneNumberCountryCodeKM,
        PhoneNumberCountryCodeKN,
        PhoneNumberCountryCodeKP,
        PhoneNumberCountryCodeKR,
        PhoneNumberCountryCodeKW,
        PhoneNumberCountryCodeKY,
        PhoneNumberCountryCodeKZ,
        PhoneNumberCountryCodeLA,
        PhoneNumberCountryCodeLB,
        PhoneNumberCountryCodeLC,
        PhoneNumberCountryCodeLI,
        PhoneNumberCountryCodeLK,
        PhoneNumberCountryCodeLR,
        PhoneNumberCountryCodeLS,
        PhoneNumberCountryCodeLT,
        PhoneNumberCountryCodeLU,
        PhoneNumberCountryCodeLV,
        PhoneNumberCountryCodeLY,
        PhoneNumberCountryCodeMA,
        PhoneNumberCountryCodeMC,
        PhoneNumberCountryCodeMD,
        PhoneNumberCountryCodeME,
        PhoneNumberCountryCodeMF,
        PhoneNumberCountryCodeMG,
        PhoneNumberCountryCodeMH,
        PhoneNumberCountryCodeMK,
        PhoneNumberCountryCodeML,
        PhoneNumberCountryCodeMM,
        PhoneNumberCountryCodeMN,
        PhoneNumberCountryCodeMO,
        PhoneNumberCountryCodeMP,
        PhoneNumberCountryCodeMR,
        PhoneNumberCountryCodeMS,
        PhoneNumberCountryCodeMT,
        PhoneNumberCountryCodeMU,
        PhoneNumberCountryCodeMV,
        PhoneNumberCountryCodeMW,
        PhoneNumberCountryCodeMX,
        PhoneNumberCountryCodeMY,
        PhoneNumberCountryCodeMZ,
        PhoneNumberCountryCodeNA,
        PhoneNumberCountryCodeNC,
        PhoneNumberCountryCodeNE,
        PhoneNumberCountryCodeNG,
        PhoneNumberCountryCodeNI,
        PhoneNumberCountryCodeNL,
        PhoneNumberCountryCodeNO,
        PhoneNumberCountryCodeNP,
        PhoneNumberCountryCodeNR,
        PhoneNumberCountryCodeNU,
        PhoneNumberCountryCodeNZ,
        PhoneNumberCountryCodeOM,
        PhoneNumberCountryCodePA,
        PhoneNumberCountryCodePE,
        PhoneNumberCountryCodePF,
        PhoneNumberCountryCodePG,
        PhoneNumberCountryCodePH,
        PhoneNumberCountryCodePK,
        PhoneNumberCountryCodePL,
        PhoneNumberCountryCodePM,
        PhoneNumberCountryCodePN,
        PhoneNumberCountryCodePR,
        PhoneNumberCountryCodePT,
        PhoneNumberCountryCodePW,
        PhoneNumberCountryCodePY,
        PhoneNumberCountryCodeQA,
        PhoneNumberCountryCodeRE,
        PhoneNumberCountryCodeRO,
        PhoneNumberCountryCodeRS,
        PhoneNumberCountryCodeRU,
        PhoneNumberCountryCodeRW,
        PhoneNumberCountryCodeSA,
        PhoneNumberCountryCodeSB,
        PhoneNumberCountryCodeSC,
        PhoneNumberCountryCodeSD,
        PhoneNumberCountryCodeSE,
        PhoneNumberCountryCodeSG,
        PhoneNumberCountryCodeSH,
        PhoneNumberCountryCodeSI,
        PhoneNumberCountryCodeSJ,
        PhoneNumberCountryCodeSK,
        PhoneNumberCountryCodeSL,
        PhoneNumberCountryCodeSM,
        PhoneNumberCountryCodeSN,
        PhoneNumberCountryCodeSO,
        PhoneNumberCountryCodeSR,
        PhoneNumberCountryCodeST,
        PhoneNumberCountryCodeSV,
        PhoneNumberCountryCodeSX,
        PhoneNumberCountryCodeSY,
        PhoneNumberCountryCodeSZ,
        PhoneNumberCountryCodeTC,
        PhoneNumberCountryCodeTD,
        PhoneNumberCountryCodeTG,
        PhoneNumberCountryCodeTH,
        PhoneNumberCountryCodeTJ,
        PhoneNumberCountryCodeTK,
        PhoneNumberCountryCodeTL,
        PhoneNumberCountryCodeTM,
        PhoneNumberCountryCodeTN,
        PhoneNumberCountryCodeTO,
        PhoneNumberCountryCodeTR,
        PhoneNumberCountryCodeTT,
        PhoneNumberCountryCodeTV,
        PhoneNumberCountryCodeTW,
        PhoneNumberCountryCodeTZ,
        PhoneNumberCountryCodeUA,
        PhoneNumberCountryCodeUG,
        PhoneNumberCountryCodeUS,
        PhoneNumberCountryCodeUY,
        PhoneNumberCountryCodeUZ,
        PhoneNumberCountryCodeVA,
        PhoneNumberCountryCodeVC,
        PhoneNumberCountryCodeVE,
        PhoneNumberCountryCodeVG,
        PhoneNumberCountryCodeVI,
        PhoneNumberCountryCodeVN,
        PhoneNumberCountryCodeVU,
        PhoneNumberCountryCodeWF,
        PhoneNumberCountryCodeWS,
        PhoneNumberCountryCodeYE,
        PhoneNumberCountryCodeYT,
        PhoneNumberCountryCodeZA,
        PhoneNumberCountryCodeZM,
        PhoneNumberCountryCodeZW
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PhoneNumberCountryCode = PhoneNumberCountryCode'
  { fromPhoneNumberCountryCode ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern PhoneNumberCountryCodeAD :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeAD = PhoneNumberCountryCode' "AD"

pattern PhoneNumberCountryCodeAE :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeAE = PhoneNumberCountryCode' "AE"

pattern PhoneNumberCountryCodeAF :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeAF = PhoneNumberCountryCode' "AF"

pattern PhoneNumberCountryCodeAG :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeAG = PhoneNumberCountryCode' "AG"

pattern PhoneNumberCountryCodeAI :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeAI = PhoneNumberCountryCode' "AI"

pattern PhoneNumberCountryCodeAL :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeAL = PhoneNumberCountryCode' "AL"

pattern PhoneNumberCountryCodeAM :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeAM = PhoneNumberCountryCode' "AM"

pattern PhoneNumberCountryCodeAN :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeAN = PhoneNumberCountryCode' "AN"

pattern PhoneNumberCountryCodeAO :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeAO = PhoneNumberCountryCode' "AO"

pattern PhoneNumberCountryCodeAQ :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeAQ = PhoneNumberCountryCode' "AQ"

pattern PhoneNumberCountryCodeAR :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeAR = PhoneNumberCountryCode' "AR"

pattern PhoneNumberCountryCodeAS :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeAS = PhoneNumberCountryCode' "AS"

pattern PhoneNumberCountryCodeAT :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeAT = PhoneNumberCountryCode' "AT"

pattern PhoneNumberCountryCodeAU :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeAU = PhoneNumberCountryCode' "AU"

pattern PhoneNumberCountryCodeAW :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeAW = PhoneNumberCountryCode' "AW"

pattern PhoneNumberCountryCodeAZ :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeAZ = PhoneNumberCountryCode' "AZ"

pattern PhoneNumberCountryCodeBA :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeBA = PhoneNumberCountryCode' "BA"

pattern PhoneNumberCountryCodeBB :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeBB = PhoneNumberCountryCode' "BB"

pattern PhoneNumberCountryCodeBD :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeBD = PhoneNumberCountryCode' "BD"

pattern PhoneNumberCountryCodeBE :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeBE = PhoneNumberCountryCode' "BE"

pattern PhoneNumberCountryCodeBF :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeBF = PhoneNumberCountryCode' "BF"

pattern PhoneNumberCountryCodeBG :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeBG = PhoneNumberCountryCode' "BG"

pattern PhoneNumberCountryCodeBH :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeBH = PhoneNumberCountryCode' "BH"

pattern PhoneNumberCountryCodeBI :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeBI = PhoneNumberCountryCode' "BI"

pattern PhoneNumberCountryCodeBJ :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeBJ = PhoneNumberCountryCode' "BJ"

pattern PhoneNumberCountryCodeBL :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeBL = PhoneNumberCountryCode' "BL"

pattern PhoneNumberCountryCodeBM :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeBM = PhoneNumberCountryCode' "BM"

pattern PhoneNumberCountryCodeBN :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeBN = PhoneNumberCountryCode' "BN"

pattern PhoneNumberCountryCodeBO :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeBO = PhoneNumberCountryCode' "BO"

pattern PhoneNumberCountryCodeBR :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeBR = PhoneNumberCountryCode' "BR"

pattern PhoneNumberCountryCodeBS :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeBS = PhoneNumberCountryCode' "BS"

pattern PhoneNumberCountryCodeBT :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeBT = PhoneNumberCountryCode' "BT"

pattern PhoneNumberCountryCodeBW :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeBW = PhoneNumberCountryCode' "BW"

pattern PhoneNumberCountryCodeBY :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeBY = PhoneNumberCountryCode' "BY"

pattern PhoneNumberCountryCodeBZ :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeBZ = PhoneNumberCountryCode' "BZ"

pattern PhoneNumberCountryCodeCA :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeCA = PhoneNumberCountryCode' "CA"

pattern PhoneNumberCountryCodeCC :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeCC = PhoneNumberCountryCode' "CC"

pattern PhoneNumberCountryCodeCD :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeCD = PhoneNumberCountryCode' "CD"

pattern PhoneNumberCountryCodeCF :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeCF = PhoneNumberCountryCode' "CF"

pattern PhoneNumberCountryCodeCG :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeCG = PhoneNumberCountryCode' "CG"

pattern PhoneNumberCountryCodeCH :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeCH = PhoneNumberCountryCode' "CH"

pattern PhoneNumberCountryCodeCI :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeCI = PhoneNumberCountryCode' "CI"

pattern PhoneNumberCountryCodeCK :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeCK = PhoneNumberCountryCode' "CK"

pattern PhoneNumberCountryCodeCL :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeCL = PhoneNumberCountryCode' "CL"

pattern PhoneNumberCountryCodeCM :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeCM = PhoneNumberCountryCode' "CM"

pattern PhoneNumberCountryCodeCN :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeCN = PhoneNumberCountryCode' "CN"

pattern PhoneNumberCountryCodeCO :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeCO = PhoneNumberCountryCode' "CO"

pattern PhoneNumberCountryCodeCR :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeCR = PhoneNumberCountryCode' "CR"

pattern PhoneNumberCountryCodeCU :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeCU = PhoneNumberCountryCode' "CU"

pattern PhoneNumberCountryCodeCV :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeCV = PhoneNumberCountryCode' "CV"

pattern PhoneNumberCountryCodeCW :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeCW = PhoneNumberCountryCode' "CW"

pattern PhoneNumberCountryCodeCX :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeCX = PhoneNumberCountryCode' "CX"

pattern PhoneNumberCountryCodeCY :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeCY = PhoneNumberCountryCode' "CY"

pattern PhoneNumberCountryCodeCZ :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeCZ = PhoneNumberCountryCode' "CZ"

pattern PhoneNumberCountryCodeDE :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeDE = PhoneNumberCountryCode' "DE"

pattern PhoneNumberCountryCodeDJ :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeDJ = PhoneNumberCountryCode' "DJ"

pattern PhoneNumberCountryCodeDK :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeDK = PhoneNumberCountryCode' "DK"

pattern PhoneNumberCountryCodeDM :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeDM = PhoneNumberCountryCode' "DM"

pattern PhoneNumberCountryCodeDO :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeDO = PhoneNumberCountryCode' "DO"

pattern PhoneNumberCountryCodeDZ :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeDZ = PhoneNumberCountryCode' "DZ"

pattern PhoneNumberCountryCodeEC :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeEC = PhoneNumberCountryCode' "EC"

pattern PhoneNumberCountryCodeEE :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeEE = PhoneNumberCountryCode' "EE"

pattern PhoneNumberCountryCodeEG :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeEG = PhoneNumberCountryCode' "EG"

pattern PhoneNumberCountryCodeEH :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeEH = PhoneNumberCountryCode' "EH"

pattern PhoneNumberCountryCodeER :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeER = PhoneNumberCountryCode' "ER"

pattern PhoneNumberCountryCodeES :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeES = PhoneNumberCountryCode' "ES"

pattern PhoneNumberCountryCodeET :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeET = PhoneNumberCountryCode' "ET"

pattern PhoneNumberCountryCodeFI :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeFI = PhoneNumberCountryCode' "FI"

pattern PhoneNumberCountryCodeFJ :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeFJ = PhoneNumberCountryCode' "FJ"

pattern PhoneNumberCountryCodeFK :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeFK = PhoneNumberCountryCode' "FK"

pattern PhoneNumberCountryCodeFM :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeFM = PhoneNumberCountryCode' "FM"

pattern PhoneNumberCountryCodeFO :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeFO = PhoneNumberCountryCode' "FO"

pattern PhoneNumberCountryCodeFR :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeFR = PhoneNumberCountryCode' "FR"

pattern PhoneNumberCountryCodeGA :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeGA = PhoneNumberCountryCode' "GA"

pattern PhoneNumberCountryCodeGB :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeGB = PhoneNumberCountryCode' "GB"

pattern PhoneNumberCountryCodeGD :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeGD = PhoneNumberCountryCode' "GD"

pattern PhoneNumberCountryCodeGE :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeGE = PhoneNumberCountryCode' "GE"

pattern PhoneNumberCountryCodeGG :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeGG = PhoneNumberCountryCode' "GG"

pattern PhoneNumberCountryCodeGH :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeGH = PhoneNumberCountryCode' "GH"

pattern PhoneNumberCountryCodeGI :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeGI = PhoneNumberCountryCode' "GI"

pattern PhoneNumberCountryCodeGL :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeGL = PhoneNumberCountryCode' "GL"

pattern PhoneNumberCountryCodeGM :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeGM = PhoneNumberCountryCode' "GM"

pattern PhoneNumberCountryCodeGN :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeGN = PhoneNumberCountryCode' "GN"

pattern PhoneNumberCountryCodeGQ :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeGQ = PhoneNumberCountryCode' "GQ"

pattern PhoneNumberCountryCodeGR :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeGR = PhoneNumberCountryCode' "GR"

pattern PhoneNumberCountryCodeGT :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeGT = PhoneNumberCountryCode' "GT"

pattern PhoneNumberCountryCodeGU :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeGU = PhoneNumberCountryCode' "GU"

pattern PhoneNumberCountryCodeGW :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeGW = PhoneNumberCountryCode' "GW"

pattern PhoneNumberCountryCodeGY :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeGY = PhoneNumberCountryCode' "GY"

pattern PhoneNumberCountryCodeHK :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeHK = PhoneNumberCountryCode' "HK"

pattern PhoneNumberCountryCodeHN :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeHN = PhoneNumberCountryCode' "HN"

pattern PhoneNumberCountryCodeHR :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeHR = PhoneNumberCountryCode' "HR"

pattern PhoneNumberCountryCodeHT :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeHT = PhoneNumberCountryCode' "HT"

pattern PhoneNumberCountryCodeHU :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeHU = PhoneNumberCountryCode' "HU"

pattern PhoneNumberCountryCodeID :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeID = PhoneNumberCountryCode' "ID"

pattern PhoneNumberCountryCodeIE :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeIE = PhoneNumberCountryCode' "IE"

pattern PhoneNumberCountryCodeIL :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeIL = PhoneNumberCountryCode' "IL"

pattern PhoneNumberCountryCodeIM :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeIM = PhoneNumberCountryCode' "IM"

pattern PhoneNumberCountryCodeIN :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeIN = PhoneNumberCountryCode' "IN"

pattern PhoneNumberCountryCodeIO :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeIO = PhoneNumberCountryCode' "IO"

pattern PhoneNumberCountryCodeIQ :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeIQ = PhoneNumberCountryCode' "IQ"

pattern PhoneNumberCountryCodeIR :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeIR = PhoneNumberCountryCode' "IR"

pattern PhoneNumberCountryCodeIS :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeIS = PhoneNumberCountryCode' "IS"

pattern PhoneNumberCountryCodeIT :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeIT = PhoneNumberCountryCode' "IT"

pattern PhoneNumberCountryCodeJE :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeJE = PhoneNumberCountryCode' "JE"

pattern PhoneNumberCountryCodeJM :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeJM = PhoneNumberCountryCode' "JM"

pattern PhoneNumberCountryCodeJO :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeJO = PhoneNumberCountryCode' "JO"

pattern PhoneNumberCountryCodeJP :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeJP = PhoneNumberCountryCode' "JP"

pattern PhoneNumberCountryCodeKE :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeKE = PhoneNumberCountryCode' "KE"

pattern PhoneNumberCountryCodeKG :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeKG = PhoneNumberCountryCode' "KG"

pattern PhoneNumberCountryCodeKH :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeKH = PhoneNumberCountryCode' "KH"

pattern PhoneNumberCountryCodeKI :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeKI = PhoneNumberCountryCode' "KI"

pattern PhoneNumberCountryCodeKM :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeKM = PhoneNumberCountryCode' "KM"

pattern PhoneNumberCountryCodeKN :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeKN = PhoneNumberCountryCode' "KN"

pattern PhoneNumberCountryCodeKP :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeKP = PhoneNumberCountryCode' "KP"

pattern PhoneNumberCountryCodeKR :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeKR = PhoneNumberCountryCode' "KR"

pattern PhoneNumberCountryCodeKW :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeKW = PhoneNumberCountryCode' "KW"

pattern PhoneNumberCountryCodeKY :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeKY = PhoneNumberCountryCode' "KY"

pattern PhoneNumberCountryCodeKZ :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeKZ = PhoneNumberCountryCode' "KZ"

pattern PhoneNumberCountryCodeLA :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeLA = PhoneNumberCountryCode' "LA"

pattern PhoneNumberCountryCodeLB :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeLB = PhoneNumberCountryCode' "LB"

pattern PhoneNumberCountryCodeLC :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeLC = PhoneNumberCountryCode' "LC"

pattern PhoneNumberCountryCodeLI :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeLI = PhoneNumberCountryCode' "LI"

pattern PhoneNumberCountryCodeLK :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeLK = PhoneNumberCountryCode' "LK"

pattern PhoneNumberCountryCodeLR :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeLR = PhoneNumberCountryCode' "LR"

pattern PhoneNumberCountryCodeLS :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeLS = PhoneNumberCountryCode' "LS"

pattern PhoneNumberCountryCodeLT :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeLT = PhoneNumberCountryCode' "LT"

pattern PhoneNumberCountryCodeLU :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeLU = PhoneNumberCountryCode' "LU"

pattern PhoneNumberCountryCodeLV :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeLV = PhoneNumberCountryCode' "LV"

pattern PhoneNumberCountryCodeLY :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeLY = PhoneNumberCountryCode' "LY"

pattern PhoneNumberCountryCodeMA :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeMA = PhoneNumberCountryCode' "MA"

pattern PhoneNumberCountryCodeMC :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeMC = PhoneNumberCountryCode' "MC"

pattern PhoneNumberCountryCodeMD :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeMD = PhoneNumberCountryCode' "MD"

pattern PhoneNumberCountryCodeME :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeME = PhoneNumberCountryCode' "ME"

pattern PhoneNumberCountryCodeMF :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeMF = PhoneNumberCountryCode' "MF"

pattern PhoneNumberCountryCodeMG :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeMG = PhoneNumberCountryCode' "MG"

pattern PhoneNumberCountryCodeMH :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeMH = PhoneNumberCountryCode' "MH"

pattern PhoneNumberCountryCodeMK :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeMK = PhoneNumberCountryCode' "MK"

pattern PhoneNumberCountryCodeML :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeML = PhoneNumberCountryCode' "ML"

pattern PhoneNumberCountryCodeMM :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeMM = PhoneNumberCountryCode' "MM"

pattern PhoneNumberCountryCodeMN :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeMN = PhoneNumberCountryCode' "MN"

pattern PhoneNumberCountryCodeMO :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeMO = PhoneNumberCountryCode' "MO"

pattern PhoneNumberCountryCodeMP :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeMP = PhoneNumberCountryCode' "MP"

pattern PhoneNumberCountryCodeMR :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeMR = PhoneNumberCountryCode' "MR"

pattern PhoneNumberCountryCodeMS :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeMS = PhoneNumberCountryCode' "MS"

pattern PhoneNumberCountryCodeMT :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeMT = PhoneNumberCountryCode' "MT"

pattern PhoneNumberCountryCodeMU :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeMU = PhoneNumberCountryCode' "MU"

pattern PhoneNumberCountryCodeMV :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeMV = PhoneNumberCountryCode' "MV"

pattern PhoneNumberCountryCodeMW :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeMW = PhoneNumberCountryCode' "MW"

pattern PhoneNumberCountryCodeMX :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeMX = PhoneNumberCountryCode' "MX"

pattern PhoneNumberCountryCodeMY :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeMY = PhoneNumberCountryCode' "MY"

pattern PhoneNumberCountryCodeMZ :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeMZ = PhoneNumberCountryCode' "MZ"

pattern PhoneNumberCountryCodeNA :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeNA = PhoneNumberCountryCode' "NA"

pattern PhoneNumberCountryCodeNC :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeNC = PhoneNumberCountryCode' "NC"

pattern PhoneNumberCountryCodeNE :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeNE = PhoneNumberCountryCode' "NE"

pattern PhoneNumberCountryCodeNG :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeNG = PhoneNumberCountryCode' "NG"

pattern PhoneNumberCountryCodeNI :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeNI = PhoneNumberCountryCode' "NI"

pattern PhoneNumberCountryCodeNL :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeNL = PhoneNumberCountryCode' "NL"

pattern PhoneNumberCountryCodeNO :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeNO = PhoneNumberCountryCode' "NO"

pattern PhoneNumberCountryCodeNP :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeNP = PhoneNumberCountryCode' "NP"

pattern PhoneNumberCountryCodeNR :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeNR = PhoneNumberCountryCode' "NR"

pattern PhoneNumberCountryCodeNU :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeNU = PhoneNumberCountryCode' "NU"

pattern PhoneNumberCountryCodeNZ :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeNZ = PhoneNumberCountryCode' "NZ"

pattern PhoneNumberCountryCodeOM :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeOM = PhoneNumberCountryCode' "OM"

pattern PhoneNumberCountryCodePA :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodePA = PhoneNumberCountryCode' "PA"

pattern PhoneNumberCountryCodePE :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodePE = PhoneNumberCountryCode' "PE"

pattern PhoneNumberCountryCodePF :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodePF = PhoneNumberCountryCode' "PF"

pattern PhoneNumberCountryCodePG :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodePG = PhoneNumberCountryCode' "PG"

pattern PhoneNumberCountryCodePH :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodePH = PhoneNumberCountryCode' "PH"

pattern PhoneNumberCountryCodePK :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodePK = PhoneNumberCountryCode' "PK"

pattern PhoneNumberCountryCodePL :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodePL = PhoneNumberCountryCode' "PL"

pattern PhoneNumberCountryCodePM :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodePM = PhoneNumberCountryCode' "PM"

pattern PhoneNumberCountryCodePN :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodePN = PhoneNumberCountryCode' "PN"

pattern PhoneNumberCountryCodePR :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodePR = PhoneNumberCountryCode' "PR"

pattern PhoneNumberCountryCodePT :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodePT = PhoneNumberCountryCode' "PT"

pattern PhoneNumberCountryCodePW :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodePW = PhoneNumberCountryCode' "PW"

pattern PhoneNumberCountryCodePY :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodePY = PhoneNumberCountryCode' "PY"

pattern PhoneNumberCountryCodeQA :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeQA = PhoneNumberCountryCode' "QA"

pattern PhoneNumberCountryCodeRE :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeRE = PhoneNumberCountryCode' "RE"

pattern PhoneNumberCountryCodeRO :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeRO = PhoneNumberCountryCode' "RO"

pattern PhoneNumberCountryCodeRS :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeRS = PhoneNumberCountryCode' "RS"

pattern PhoneNumberCountryCodeRU :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeRU = PhoneNumberCountryCode' "RU"

pattern PhoneNumberCountryCodeRW :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeRW = PhoneNumberCountryCode' "RW"

pattern PhoneNumberCountryCodeSA :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeSA = PhoneNumberCountryCode' "SA"

pattern PhoneNumberCountryCodeSB :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeSB = PhoneNumberCountryCode' "SB"

pattern PhoneNumberCountryCodeSC :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeSC = PhoneNumberCountryCode' "SC"

pattern PhoneNumberCountryCodeSD :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeSD = PhoneNumberCountryCode' "SD"

pattern PhoneNumberCountryCodeSE :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeSE = PhoneNumberCountryCode' "SE"

pattern PhoneNumberCountryCodeSG :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeSG = PhoneNumberCountryCode' "SG"

pattern PhoneNumberCountryCodeSH :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeSH = PhoneNumberCountryCode' "SH"

pattern PhoneNumberCountryCodeSI :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeSI = PhoneNumberCountryCode' "SI"

pattern PhoneNumberCountryCodeSJ :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeSJ = PhoneNumberCountryCode' "SJ"

pattern PhoneNumberCountryCodeSK :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeSK = PhoneNumberCountryCode' "SK"

pattern PhoneNumberCountryCodeSL :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeSL = PhoneNumberCountryCode' "SL"

pattern PhoneNumberCountryCodeSM :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeSM = PhoneNumberCountryCode' "SM"

pattern PhoneNumberCountryCodeSN :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeSN = PhoneNumberCountryCode' "SN"

pattern PhoneNumberCountryCodeSO :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeSO = PhoneNumberCountryCode' "SO"

pattern PhoneNumberCountryCodeSR :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeSR = PhoneNumberCountryCode' "SR"

pattern PhoneNumberCountryCodeST :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeST = PhoneNumberCountryCode' "ST"

pattern PhoneNumberCountryCodeSV :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeSV = PhoneNumberCountryCode' "SV"

pattern PhoneNumberCountryCodeSX :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeSX = PhoneNumberCountryCode' "SX"

pattern PhoneNumberCountryCodeSY :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeSY = PhoneNumberCountryCode' "SY"

pattern PhoneNumberCountryCodeSZ :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeSZ = PhoneNumberCountryCode' "SZ"

pattern PhoneNumberCountryCodeTC :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeTC = PhoneNumberCountryCode' "TC"

pattern PhoneNumberCountryCodeTD :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeTD = PhoneNumberCountryCode' "TD"

pattern PhoneNumberCountryCodeTG :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeTG = PhoneNumberCountryCode' "TG"

pattern PhoneNumberCountryCodeTH :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeTH = PhoneNumberCountryCode' "TH"

pattern PhoneNumberCountryCodeTJ :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeTJ = PhoneNumberCountryCode' "TJ"

pattern PhoneNumberCountryCodeTK :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeTK = PhoneNumberCountryCode' "TK"

pattern PhoneNumberCountryCodeTL :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeTL = PhoneNumberCountryCode' "TL"

pattern PhoneNumberCountryCodeTM :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeTM = PhoneNumberCountryCode' "TM"

pattern PhoneNumberCountryCodeTN :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeTN = PhoneNumberCountryCode' "TN"

pattern PhoneNumberCountryCodeTO :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeTO = PhoneNumberCountryCode' "TO"

pattern PhoneNumberCountryCodeTR :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeTR = PhoneNumberCountryCode' "TR"

pattern PhoneNumberCountryCodeTT :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeTT = PhoneNumberCountryCode' "TT"

pattern PhoneNumberCountryCodeTV :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeTV = PhoneNumberCountryCode' "TV"

pattern PhoneNumberCountryCodeTW :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeTW = PhoneNumberCountryCode' "TW"

pattern PhoneNumberCountryCodeTZ :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeTZ = PhoneNumberCountryCode' "TZ"

pattern PhoneNumberCountryCodeUA :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeUA = PhoneNumberCountryCode' "UA"

pattern PhoneNumberCountryCodeUG :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeUG = PhoneNumberCountryCode' "UG"

pattern PhoneNumberCountryCodeUS :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeUS = PhoneNumberCountryCode' "US"

pattern PhoneNumberCountryCodeUY :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeUY = PhoneNumberCountryCode' "UY"

pattern PhoneNumberCountryCodeUZ :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeUZ = PhoneNumberCountryCode' "UZ"

pattern PhoneNumberCountryCodeVA :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeVA = PhoneNumberCountryCode' "VA"

pattern PhoneNumberCountryCodeVC :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeVC = PhoneNumberCountryCode' "VC"

pattern PhoneNumberCountryCodeVE :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeVE = PhoneNumberCountryCode' "VE"

pattern PhoneNumberCountryCodeVG :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeVG = PhoneNumberCountryCode' "VG"

pattern PhoneNumberCountryCodeVI :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeVI = PhoneNumberCountryCode' "VI"

pattern PhoneNumberCountryCodeVN :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeVN = PhoneNumberCountryCode' "VN"

pattern PhoneNumberCountryCodeVU :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeVU = PhoneNumberCountryCode' "VU"

pattern PhoneNumberCountryCodeWF :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeWF = PhoneNumberCountryCode' "WF"

pattern PhoneNumberCountryCodeWS :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeWS = PhoneNumberCountryCode' "WS"

pattern PhoneNumberCountryCodeYE :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeYE = PhoneNumberCountryCode' "YE"

pattern PhoneNumberCountryCodeYT :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeYT = PhoneNumberCountryCode' "YT"

pattern PhoneNumberCountryCodeZA :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeZA = PhoneNumberCountryCode' "ZA"

pattern PhoneNumberCountryCodeZM :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeZM = PhoneNumberCountryCode' "ZM"

pattern PhoneNumberCountryCodeZW :: PhoneNumberCountryCode
pattern PhoneNumberCountryCodeZW = PhoneNumberCountryCode' "ZW"

{-# COMPLETE
  PhoneNumberCountryCodeAD,
  PhoneNumberCountryCodeAE,
  PhoneNumberCountryCodeAF,
  PhoneNumberCountryCodeAG,
  PhoneNumberCountryCodeAI,
  PhoneNumberCountryCodeAL,
  PhoneNumberCountryCodeAM,
  PhoneNumberCountryCodeAN,
  PhoneNumberCountryCodeAO,
  PhoneNumberCountryCodeAQ,
  PhoneNumberCountryCodeAR,
  PhoneNumberCountryCodeAS,
  PhoneNumberCountryCodeAT,
  PhoneNumberCountryCodeAU,
  PhoneNumberCountryCodeAW,
  PhoneNumberCountryCodeAZ,
  PhoneNumberCountryCodeBA,
  PhoneNumberCountryCodeBB,
  PhoneNumberCountryCodeBD,
  PhoneNumberCountryCodeBE,
  PhoneNumberCountryCodeBF,
  PhoneNumberCountryCodeBG,
  PhoneNumberCountryCodeBH,
  PhoneNumberCountryCodeBI,
  PhoneNumberCountryCodeBJ,
  PhoneNumberCountryCodeBL,
  PhoneNumberCountryCodeBM,
  PhoneNumberCountryCodeBN,
  PhoneNumberCountryCodeBO,
  PhoneNumberCountryCodeBR,
  PhoneNumberCountryCodeBS,
  PhoneNumberCountryCodeBT,
  PhoneNumberCountryCodeBW,
  PhoneNumberCountryCodeBY,
  PhoneNumberCountryCodeBZ,
  PhoneNumberCountryCodeCA,
  PhoneNumberCountryCodeCC,
  PhoneNumberCountryCodeCD,
  PhoneNumberCountryCodeCF,
  PhoneNumberCountryCodeCG,
  PhoneNumberCountryCodeCH,
  PhoneNumberCountryCodeCI,
  PhoneNumberCountryCodeCK,
  PhoneNumberCountryCodeCL,
  PhoneNumberCountryCodeCM,
  PhoneNumberCountryCodeCN,
  PhoneNumberCountryCodeCO,
  PhoneNumberCountryCodeCR,
  PhoneNumberCountryCodeCU,
  PhoneNumberCountryCodeCV,
  PhoneNumberCountryCodeCW,
  PhoneNumberCountryCodeCX,
  PhoneNumberCountryCodeCY,
  PhoneNumberCountryCodeCZ,
  PhoneNumberCountryCodeDE,
  PhoneNumberCountryCodeDJ,
  PhoneNumberCountryCodeDK,
  PhoneNumberCountryCodeDM,
  PhoneNumberCountryCodeDO,
  PhoneNumberCountryCodeDZ,
  PhoneNumberCountryCodeEC,
  PhoneNumberCountryCodeEE,
  PhoneNumberCountryCodeEG,
  PhoneNumberCountryCodeEH,
  PhoneNumberCountryCodeER,
  PhoneNumberCountryCodeES,
  PhoneNumberCountryCodeET,
  PhoneNumberCountryCodeFI,
  PhoneNumberCountryCodeFJ,
  PhoneNumberCountryCodeFK,
  PhoneNumberCountryCodeFM,
  PhoneNumberCountryCodeFO,
  PhoneNumberCountryCodeFR,
  PhoneNumberCountryCodeGA,
  PhoneNumberCountryCodeGB,
  PhoneNumberCountryCodeGD,
  PhoneNumberCountryCodeGE,
  PhoneNumberCountryCodeGG,
  PhoneNumberCountryCodeGH,
  PhoneNumberCountryCodeGI,
  PhoneNumberCountryCodeGL,
  PhoneNumberCountryCodeGM,
  PhoneNumberCountryCodeGN,
  PhoneNumberCountryCodeGQ,
  PhoneNumberCountryCodeGR,
  PhoneNumberCountryCodeGT,
  PhoneNumberCountryCodeGU,
  PhoneNumberCountryCodeGW,
  PhoneNumberCountryCodeGY,
  PhoneNumberCountryCodeHK,
  PhoneNumberCountryCodeHN,
  PhoneNumberCountryCodeHR,
  PhoneNumberCountryCodeHT,
  PhoneNumberCountryCodeHU,
  PhoneNumberCountryCodeID,
  PhoneNumberCountryCodeIE,
  PhoneNumberCountryCodeIL,
  PhoneNumberCountryCodeIM,
  PhoneNumberCountryCodeIN,
  PhoneNumberCountryCodeIO,
  PhoneNumberCountryCodeIQ,
  PhoneNumberCountryCodeIR,
  PhoneNumberCountryCodeIS,
  PhoneNumberCountryCodeIT,
  PhoneNumberCountryCodeJE,
  PhoneNumberCountryCodeJM,
  PhoneNumberCountryCodeJO,
  PhoneNumberCountryCodeJP,
  PhoneNumberCountryCodeKE,
  PhoneNumberCountryCodeKG,
  PhoneNumberCountryCodeKH,
  PhoneNumberCountryCodeKI,
  PhoneNumberCountryCodeKM,
  PhoneNumberCountryCodeKN,
  PhoneNumberCountryCodeKP,
  PhoneNumberCountryCodeKR,
  PhoneNumberCountryCodeKW,
  PhoneNumberCountryCodeKY,
  PhoneNumberCountryCodeKZ,
  PhoneNumberCountryCodeLA,
  PhoneNumberCountryCodeLB,
  PhoneNumberCountryCodeLC,
  PhoneNumberCountryCodeLI,
  PhoneNumberCountryCodeLK,
  PhoneNumberCountryCodeLR,
  PhoneNumberCountryCodeLS,
  PhoneNumberCountryCodeLT,
  PhoneNumberCountryCodeLU,
  PhoneNumberCountryCodeLV,
  PhoneNumberCountryCodeLY,
  PhoneNumberCountryCodeMA,
  PhoneNumberCountryCodeMC,
  PhoneNumberCountryCodeMD,
  PhoneNumberCountryCodeME,
  PhoneNumberCountryCodeMF,
  PhoneNumberCountryCodeMG,
  PhoneNumberCountryCodeMH,
  PhoneNumberCountryCodeMK,
  PhoneNumberCountryCodeML,
  PhoneNumberCountryCodeMM,
  PhoneNumberCountryCodeMN,
  PhoneNumberCountryCodeMO,
  PhoneNumberCountryCodeMP,
  PhoneNumberCountryCodeMR,
  PhoneNumberCountryCodeMS,
  PhoneNumberCountryCodeMT,
  PhoneNumberCountryCodeMU,
  PhoneNumberCountryCodeMV,
  PhoneNumberCountryCodeMW,
  PhoneNumberCountryCodeMX,
  PhoneNumberCountryCodeMY,
  PhoneNumberCountryCodeMZ,
  PhoneNumberCountryCodeNA,
  PhoneNumberCountryCodeNC,
  PhoneNumberCountryCodeNE,
  PhoneNumberCountryCodeNG,
  PhoneNumberCountryCodeNI,
  PhoneNumberCountryCodeNL,
  PhoneNumberCountryCodeNO,
  PhoneNumberCountryCodeNP,
  PhoneNumberCountryCodeNR,
  PhoneNumberCountryCodeNU,
  PhoneNumberCountryCodeNZ,
  PhoneNumberCountryCodeOM,
  PhoneNumberCountryCodePA,
  PhoneNumberCountryCodePE,
  PhoneNumberCountryCodePF,
  PhoneNumberCountryCodePG,
  PhoneNumberCountryCodePH,
  PhoneNumberCountryCodePK,
  PhoneNumberCountryCodePL,
  PhoneNumberCountryCodePM,
  PhoneNumberCountryCodePN,
  PhoneNumberCountryCodePR,
  PhoneNumberCountryCodePT,
  PhoneNumberCountryCodePW,
  PhoneNumberCountryCodePY,
  PhoneNumberCountryCodeQA,
  PhoneNumberCountryCodeRE,
  PhoneNumberCountryCodeRO,
  PhoneNumberCountryCodeRS,
  PhoneNumberCountryCodeRU,
  PhoneNumberCountryCodeRW,
  PhoneNumberCountryCodeSA,
  PhoneNumberCountryCodeSB,
  PhoneNumberCountryCodeSC,
  PhoneNumberCountryCodeSD,
  PhoneNumberCountryCodeSE,
  PhoneNumberCountryCodeSG,
  PhoneNumberCountryCodeSH,
  PhoneNumberCountryCodeSI,
  PhoneNumberCountryCodeSJ,
  PhoneNumberCountryCodeSK,
  PhoneNumberCountryCodeSL,
  PhoneNumberCountryCodeSM,
  PhoneNumberCountryCodeSN,
  PhoneNumberCountryCodeSO,
  PhoneNumberCountryCodeSR,
  PhoneNumberCountryCodeST,
  PhoneNumberCountryCodeSV,
  PhoneNumberCountryCodeSX,
  PhoneNumberCountryCodeSY,
  PhoneNumberCountryCodeSZ,
  PhoneNumberCountryCodeTC,
  PhoneNumberCountryCodeTD,
  PhoneNumberCountryCodeTG,
  PhoneNumberCountryCodeTH,
  PhoneNumberCountryCodeTJ,
  PhoneNumberCountryCodeTK,
  PhoneNumberCountryCodeTL,
  PhoneNumberCountryCodeTM,
  PhoneNumberCountryCodeTN,
  PhoneNumberCountryCodeTO,
  PhoneNumberCountryCodeTR,
  PhoneNumberCountryCodeTT,
  PhoneNumberCountryCodeTV,
  PhoneNumberCountryCodeTW,
  PhoneNumberCountryCodeTZ,
  PhoneNumberCountryCodeUA,
  PhoneNumberCountryCodeUG,
  PhoneNumberCountryCodeUS,
  PhoneNumberCountryCodeUY,
  PhoneNumberCountryCodeUZ,
  PhoneNumberCountryCodeVA,
  PhoneNumberCountryCodeVC,
  PhoneNumberCountryCodeVE,
  PhoneNumberCountryCodeVG,
  PhoneNumberCountryCodeVI,
  PhoneNumberCountryCodeVN,
  PhoneNumberCountryCodeVU,
  PhoneNumberCountryCodeWF,
  PhoneNumberCountryCodeWS,
  PhoneNumberCountryCodeYE,
  PhoneNumberCountryCodeYT,
  PhoneNumberCountryCodeZA,
  PhoneNumberCountryCodeZM,
  PhoneNumberCountryCodeZW,
  PhoneNumberCountryCode'
  #-}

instance Prelude.FromText PhoneNumberCountryCode where
  parser = PhoneNumberCountryCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText PhoneNumberCountryCode where
  toText (PhoneNumberCountryCode' x) = x

instance Prelude.Hashable PhoneNumberCountryCode

instance Prelude.NFData PhoneNumberCountryCode

instance Prelude.ToByteString PhoneNumberCountryCode

instance Prelude.ToQuery PhoneNumberCountryCode

instance Prelude.ToHeader PhoneNumberCountryCode

instance Prelude.ToJSON PhoneNumberCountryCode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON PhoneNumberCountryCode where
  parseJSON = Prelude.parseJSONText "PhoneNumberCountryCode"
