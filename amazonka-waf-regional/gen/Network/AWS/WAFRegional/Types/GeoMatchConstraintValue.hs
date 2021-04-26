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
-- Module      : Network.AWS.WAFRegional.Types.GeoMatchConstraintValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAFRegional.Types.GeoMatchConstraintValue
  ( GeoMatchConstraintValue
      ( ..,
        GeoMatchConstraintValueAD,
        GeoMatchConstraintValueAE,
        GeoMatchConstraintValueAF,
        GeoMatchConstraintValueAG,
        GeoMatchConstraintValueAI,
        GeoMatchConstraintValueAL,
        GeoMatchConstraintValueAM,
        GeoMatchConstraintValueAO,
        GeoMatchConstraintValueAQ,
        GeoMatchConstraintValueAR,
        GeoMatchConstraintValueAS,
        GeoMatchConstraintValueAT,
        GeoMatchConstraintValueAU,
        GeoMatchConstraintValueAW,
        GeoMatchConstraintValueAX,
        GeoMatchConstraintValueAZ,
        GeoMatchConstraintValueBA,
        GeoMatchConstraintValueBB,
        GeoMatchConstraintValueBD,
        GeoMatchConstraintValueBE,
        GeoMatchConstraintValueBF,
        GeoMatchConstraintValueBG,
        GeoMatchConstraintValueBH,
        GeoMatchConstraintValueBI,
        GeoMatchConstraintValueBJ,
        GeoMatchConstraintValueBL,
        GeoMatchConstraintValueBM,
        GeoMatchConstraintValueBN,
        GeoMatchConstraintValueBO,
        GeoMatchConstraintValueBQ,
        GeoMatchConstraintValueBR,
        GeoMatchConstraintValueBS,
        GeoMatchConstraintValueBT,
        GeoMatchConstraintValueBV,
        GeoMatchConstraintValueBW,
        GeoMatchConstraintValueBY,
        GeoMatchConstraintValueBZ,
        GeoMatchConstraintValueCA,
        GeoMatchConstraintValueCC,
        GeoMatchConstraintValueCD,
        GeoMatchConstraintValueCF,
        GeoMatchConstraintValueCG,
        GeoMatchConstraintValueCH,
        GeoMatchConstraintValueCI,
        GeoMatchConstraintValueCK,
        GeoMatchConstraintValueCL,
        GeoMatchConstraintValueCM,
        GeoMatchConstraintValueCN,
        GeoMatchConstraintValueCO,
        GeoMatchConstraintValueCR,
        GeoMatchConstraintValueCU,
        GeoMatchConstraintValueCV,
        GeoMatchConstraintValueCW,
        GeoMatchConstraintValueCX,
        GeoMatchConstraintValueCY,
        GeoMatchConstraintValueCZ,
        GeoMatchConstraintValueDE,
        GeoMatchConstraintValueDJ,
        GeoMatchConstraintValueDK,
        GeoMatchConstraintValueDM,
        GeoMatchConstraintValueDO,
        GeoMatchConstraintValueDZ,
        GeoMatchConstraintValueEC,
        GeoMatchConstraintValueEE,
        GeoMatchConstraintValueEG,
        GeoMatchConstraintValueEH,
        GeoMatchConstraintValueER,
        GeoMatchConstraintValueES,
        GeoMatchConstraintValueET,
        GeoMatchConstraintValueFI,
        GeoMatchConstraintValueFJ,
        GeoMatchConstraintValueFK,
        GeoMatchConstraintValueFM,
        GeoMatchConstraintValueFO,
        GeoMatchConstraintValueFR,
        GeoMatchConstraintValueGA,
        GeoMatchConstraintValueGB,
        GeoMatchConstraintValueGD,
        GeoMatchConstraintValueGE,
        GeoMatchConstraintValueGF,
        GeoMatchConstraintValueGG,
        GeoMatchConstraintValueGH,
        GeoMatchConstraintValueGI,
        GeoMatchConstraintValueGL,
        GeoMatchConstraintValueGM,
        GeoMatchConstraintValueGN,
        GeoMatchConstraintValueGP,
        GeoMatchConstraintValueGQ,
        GeoMatchConstraintValueGR,
        GeoMatchConstraintValueGS,
        GeoMatchConstraintValueGT,
        GeoMatchConstraintValueGU,
        GeoMatchConstraintValueGW,
        GeoMatchConstraintValueGY,
        GeoMatchConstraintValueHK,
        GeoMatchConstraintValueHM,
        GeoMatchConstraintValueHN,
        GeoMatchConstraintValueHR,
        GeoMatchConstraintValueHT,
        GeoMatchConstraintValueHU,
        GeoMatchConstraintValueID,
        GeoMatchConstraintValueIE,
        GeoMatchConstraintValueIL,
        GeoMatchConstraintValueIM,
        GeoMatchConstraintValueIN,
        GeoMatchConstraintValueIO,
        GeoMatchConstraintValueIQ,
        GeoMatchConstraintValueIR,
        GeoMatchConstraintValueIS,
        GeoMatchConstraintValueIT,
        GeoMatchConstraintValueJE,
        GeoMatchConstraintValueJM,
        GeoMatchConstraintValueJO,
        GeoMatchConstraintValueJP,
        GeoMatchConstraintValueKE,
        GeoMatchConstraintValueKG,
        GeoMatchConstraintValueKH,
        GeoMatchConstraintValueKI,
        GeoMatchConstraintValueKM,
        GeoMatchConstraintValueKN,
        GeoMatchConstraintValueKP,
        GeoMatchConstraintValueKR,
        GeoMatchConstraintValueKW,
        GeoMatchConstraintValueKY,
        GeoMatchConstraintValueKZ,
        GeoMatchConstraintValueLA,
        GeoMatchConstraintValueLB,
        GeoMatchConstraintValueLC,
        GeoMatchConstraintValueLI,
        GeoMatchConstraintValueLK,
        GeoMatchConstraintValueLR,
        GeoMatchConstraintValueLS,
        GeoMatchConstraintValueLT,
        GeoMatchConstraintValueLU,
        GeoMatchConstraintValueLV,
        GeoMatchConstraintValueLY,
        GeoMatchConstraintValueMA,
        GeoMatchConstraintValueMC,
        GeoMatchConstraintValueMD,
        GeoMatchConstraintValueME,
        GeoMatchConstraintValueMF,
        GeoMatchConstraintValueMG,
        GeoMatchConstraintValueMH,
        GeoMatchConstraintValueMK,
        GeoMatchConstraintValueML,
        GeoMatchConstraintValueMM,
        GeoMatchConstraintValueMN,
        GeoMatchConstraintValueMO,
        GeoMatchConstraintValueMP,
        GeoMatchConstraintValueMQ,
        GeoMatchConstraintValueMR,
        GeoMatchConstraintValueMS,
        GeoMatchConstraintValueMT,
        GeoMatchConstraintValueMU,
        GeoMatchConstraintValueMV,
        GeoMatchConstraintValueMW,
        GeoMatchConstraintValueMX,
        GeoMatchConstraintValueMY,
        GeoMatchConstraintValueMZ,
        GeoMatchConstraintValueNA,
        GeoMatchConstraintValueNC,
        GeoMatchConstraintValueNE,
        GeoMatchConstraintValueNF,
        GeoMatchConstraintValueNG,
        GeoMatchConstraintValueNI,
        GeoMatchConstraintValueNL,
        GeoMatchConstraintValueNO,
        GeoMatchConstraintValueNP,
        GeoMatchConstraintValueNR,
        GeoMatchConstraintValueNU,
        GeoMatchConstraintValueNZ,
        GeoMatchConstraintValueOM,
        GeoMatchConstraintValuePA,
        GeoMatchConstraintValuePE,
        GeoMatchConstraintValuePF,
        GeoMatchConstraintValuePG,
        GeoMatchConstraintValuePH,
        GeoMatchConstraintValuePK,
        GeoMatchConstraintValuePL,
        GeoMatchConstraintValuePM,
        GeoMatchConstraintValuePN,
        GeoMatchConstraintValuePR,
        GeoMatchConstraintValuePS,
        GeoMatchConstraintValuePT,
        GeoMatchConstraintValuePW,
        GeoMatchConstraintValuePY,
        GeoMatchConstraintValueQA,
        GeoMatchConstraintValueRE,
        GeoMatchConstraintValueRO,
        GeoMatchConstraintValueRS,
        GeoMatchConstraintValueRU,
        GeoMatchConstraintValueRW,
        GeoMatchConstraintValueSA,
        GeoMatchConstraintValueSB,
        GeoMatchConstraintValueSC,
        GeoMatchConstraintValueSD,
        GeoMatchConstraintValueSE,
        GeoMatchConstraintValueSG,
        GeoMatchConstraintValueSH,
        GeoMatchConstraintValueSI,
        GeoMatchConstraintValueSJ,
        GeoMatchConstraintValueSK,
        GeoMatchConstraintValueSL,
        GeoMatchConstraintValueSM,
        GeoMatchConstraintValueSN,
        GeoMatchConstraintValueSO,
        GeoMatchConstraintValueSR,
        GeoMatchConstraintValueSS,
        GeoMatchConstraintValueST,
        GeoMatchConstraintValueSV,
        GeoMatchConstraintValueSX,
        GeoMatchConstraintValueSY,
        GeoMatchConstraintValueSZ,
        GeoMatchConstraintValueTC,
        GeoMatchConstraintValueTD,
        GeoMatchConstraintValueTF,
        GeoMatchConstraintValueTG,
        GeoMatchConstraintValueTH,
        GeoMatchConstraintValueTJ,
        GeoMatchConstraintValueTK,
        GeoMatchConstraintValueTL,
        GeoMatchConstraintValueTM,
        GeoMatchConstraintValueTN,
        GeoMatchConstraintValueTO,
        GeoMatchConstraintValueTR,
        GeoMatchConstraintValueTT,
        GeoMatchConstraintValueTV,
        GeoMatchConstraintValueTW,
        GeoMatchConstraintValueTZ,
        GeoMatchConstraintValueUA,
        GeoMatchConstraintValueUG,
        GeoMatchConstraintValueUM,
        GeoMatchConstraintValueUS,
        GeoMatchConstraintValueUY,
        GeoMatchConstraintValueUZ,
        GeoMatchConstraintValueVA,
        GeoMatchConstraintValueVC,
        GeoMatchConstraintValueVE,
        GeoMatchConstraintValueVG,
        GeoMatchConstraintValueVI,
        GeoMatchConstraintValueVN,
        GeoMatchConstraintValueVU,
        GeoMatchConstraintValueWF,
        GeoMatchConstraintValueWS,
        GeoMatchConstraintValueYE,
        GeoMatchConstraintValueYT,
        GeoMatchConstraintValueZA,
        GeoMatchConstraintValueZM,
        GeoMatchConstraintValueZW
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype GeoMatchConstraintValue = GeoMatchConstraintValue'
  { fromGeoMatchConstraintValue ::
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

pattern GeoMatchConstraintValueAD :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueAD = GeoMatchConstraintValue' "AD"

pattern GeoMatchConstraintValueAE :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueAE = GeoMatchConstraintValue' "AE"

pattern GeoMatchConstraintValueAF :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueAF = GeoMatchConstraintValue' "AF"

pattern GeoMatchConstraintValueAG :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueAG = GeoMatchConstraintValue' "AG"

pattern GeoMatchConstraintValueAI :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueAI = GeoMatchConstraintValue' "AI"

pattern GeoMatchConstraintValueAL :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueAL = GeoMatchConstraintValue' "AL"

pattern GeoMatchConstraintValueAM :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueAM = GeoMatchConstraintValue' "AM"

pattern GeoMatchConstraintValueAO :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueAO = GeoMatchConstraintValue' "AO"

pattern GeoMatchConstraintValueAQ :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueAQ = GeoMatchConstraintValue' "AQ"

pattern GeoMatchConstraintValueAR :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueAR = GeoMatchConstraintValue' "AR"

pattern GeoMatchConstraintValueAS :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueAS = GeoMatchConstraintValue' "AS"

pattern GeoMatchConstraintValueAT :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueAT = GeoMatchConstraintValue' "AT"

pattern GeoMatchConstraintValueAU :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueAU = GeoMatchConstraintValue' "AU"

pattern GeoMatchConstraintValueAW :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueAW = GeoMatchConstraintValue' "AW"

pattern GeoMatchConstraintValueAX :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueAX = GeoMatchConstraintValue' "AX"

pattern GeoMatchConstraintValueAZ :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueAZ = GeoMatchConstraintValue' "AZ"

pattern GeoMatchConstraintValueBA :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueBA = GeoMatchConstraintValue' "BA"

pattern GeoMatchConstraintValueBB :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueBB = GeoMatchConstraintValue' "BB"

pattern GeoMatchConstraintValueBD :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueBD = GeoMatchConstraintValue' "BD"

pattern GeoMatchConstraintValueBE :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueBE = GeoMatchConstraintValue' "BE"

pattern GeoMatchConstraintValueBF :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueBF = GeoMatchConstraintValue' "BF"

pattern GeoMatchConstraintValueBG :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueBG = GeoMatchConstraintValue' "BG"

pattern GeoMatchConstraintValueBH :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueBH = GeoMatchConstraintValue' "BH"

pattern GeoMatchConstraintValueBI :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueBI = GeoMatchConstraintValue' "BI"

pattern GeoMatchConstraintValueBJ :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueBJ = GeoMatchConstraintValue' "BJ"

pattern GeoMatchConstraintValueBL :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueBL = GeoMatchConstraintValue' "BL"

pattern GeoMatchConstraintValueBM :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueBM = GeoMatchConstraintValue' "BM"

pattern GeoMatchConstraintValueBN :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueBN = GeoMatchConstraintValue' "BN"

pattern GeoMatchConstraintValueBO :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueBO = GeoMatchConstraintValue' "BO"

pattern GeoMatchConstraintValueBQ :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueBQ = GeoMatchConstraintValue' "BQ"

pattern GeoMatchConstraintValueBR :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueBR = GeoMatchConstraintValue' "BR"

pattern GeoMatchConstraintValueBS :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueBS = GeoMatchConstraintValue' "BS"

pattern GeoMatchConstraintValueBT :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueBT = GeoMatchConstraintValue' "BT"

pattern GeoMatchConstraintValueBV :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueBV = GeoMatchConstraintValue' "BV"

pattern GeoMatchConstraintValueBW :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueBW = GeoMatchConstraintValue' "BW"

pattern GeoMatchConstraintValueBY :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueBY = GeoMatchConstraintValue' "BY"

pattern GeoMatchConstraintValueBZ :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueBZ = GeoMatchConstraintValue' "BZ"

pattern GeoMatchConstraintValueCA :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueCA = GeoMatchConstraintValue' "CA"

pattern GeoMatchConstraintValueCC :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueCC = GeoMatchConstraintValue' "CC"

pattern GeoMatchConstraintValueCD :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueCD = GeoMatchConstraintValue' "CD"

pattern GeoMatchConstraintValueCF :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueCF = GeoMatchConstraintValue' "CF"

pattern GeoMatchConstraintValueCG :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueCG = GeoMatchConstraintValue' "CG"

pattern GeoMatchConstraintValueCH :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueCH = GeoMatchConstraintValue' "CH"

pattern GeoMatchConstraintValueCI :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueCI = GeoMatchConstraintValue' "CI"

pattern GeoMatchConstraintValueCK :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueCK = GeoMatchConstraintValue' "CK"

pattern GeoMatchConstraintValueCL :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueCL = GeoMatchConstraintValue' "CL"

pattern GeoMatchConstraintValueCM :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueCM = GeoMatchConstraintValue' "CM"

pattern GeoMatchConstraintValueCN :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueCN = GeoMatchConstraintValue' "CN"

pattern GeoMatchConstraintValueCO :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueCO = GeoMatchConstraintValue' "CO"

pattern GeoMatchConstraintValueCR :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueCR = GeoMatchConstraintValue' "CR"

pattern GeoMatchConstraintValueCU :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueCU = GeoMatchConstraintValue' "CU"

pattern GeoMatchConstraintValueCV :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueCV = GeoMatchConstraintValue' "CV"

pattern GeoMatchConstraintValueCW :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueCW = GeoMatchConstraintValue' "CW"

pattern GeoMatchConstraintValueCX :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueCX = GeoMatchConstraintValue' "CX"

pattern GeoMatchConstraintValueCY :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueCY = GeoMatchConstraintValue' "CY"

pattern GeoMatchConstraintValueCZ :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueCZ = GeoMatchConstraintValue' "CZ"

pattern GeoMatchConstraintValueDE :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueDE = GeoMatchConstraintValue' "DE"

pattern GeoMatchConstraintValueDJ :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueDJ = GeoMatchConstraintValue' "DJ"

pattern GeoMatchConstraintValueDK :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueDK = GeoMatchConstraintValue' "DK"

pattern GeoMatchConstraintValueDM :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueDM = GeoMatchConstraintValue' "DM"

pattern GeoMatchConstraintValueDO :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueDO = GeoMatchConstraintValue' "DO"

pattern GeoMatchConstraintValueDZ :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueDZ = GeoMatchConstraintValue' "DZ"

pattern GeoMatchConstraintValueEC :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueEC = GeoMatchConstraintValue' "EC"

pattern GeoMatchConstraintValueEE :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueEE = GeoMatchConstraintValue' "EE"

pattern GeoMatchConstraintValueEG :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueEG = GeoMatchConstraintValue' "EG"

pattern GeoMatchConstraintValueEH :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueEH = GeoMatchConstraintValue' "EH"

pattern GeoMatchConstraintValueER :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueER = GeoMatchConstraintValue' "ER"

pattern GeoMatchConstraintValueES :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueES = GeoMatchConstraintValue' "ES"

pattern GeoMatchConstraintValueET :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueET = GeoMatchConstraintValue' "ET"

pattern GeoMatchConstraintValueFI :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueFI = GeoMatchConstraintValue' "FI"

pattern GeoMatchConstraintValueFJ :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueFJ = GeoMatchConstraintValue' "FJ"

pattern GeoMatchConstraintValueFK :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueFK = GeoMatchConstraintValue' "FK"

pattern GeoMatchConstraintValueFM :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueFM = GeoMatchConstraintValue' "FM"

pattern GeoMatchConstraintValueFO :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueFO = GeoMatchConstraintValue' "FO"

pattern GeoMatchConstraintValueFR :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueFR = GeoMatchConstraintValue' "FR"

pattern GeoMatchConstraintValueGA :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueGA = GeoMatchConstraintValue' "GA"

pattern GeoMatchConstraintValueGB :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueGB = GeoMatchConstraintValue' "GB"

pattern GeoMatchConstraintValueGD :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueGD = GeoMatchConstraintValue' "GD"

pattern GeoMatchConstraintValueGE :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueGE = GeoMatchConstraintValue' "GE"

pattern GeoMatchConstraintValueGF :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueGF = GeoMatchConstraintValue' "GF"

pattern GeoMatchConstraintValueGG :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueGG = GeoMatchConstraintValue' "GG"

pattern GeoMatchConstraintValueGH :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueGH = GeoMatchConstraintValue' "GH"

pattern GeoMatchConstraintValueGI :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueGI = GeoMatchConstraintValue' "GI"

pattern GeoMatchConstraintValueGL :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueGL = GeoMatchConstraintValue' "GL"

pattern GeoMatchConstraintValueGM :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueGM = GeoMatchConstraintValue' "GM"

pattern GeoMatchConstraintValueGN :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueGN = GeoMatchConstraintValue' "GN"

pattern GeoMatchConstraintValueGP :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueGP = GeoMatchConstraintValue' "GP"

pattern GeoMatchConstraintValueGQ :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueGQ = GeoMatchConstraintValue' "GQ"

pattern GeoMatchConstraintValueGR :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueGR = GeoMatchConstraintValue' "GR"

pattern GeoMatchConstraintValueGS :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueGS = GeoMatchConstraintValue' "GS"

pattern GeoMatchConstraintValueGT :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueGT = GeoMatchConstraintValue' "GT"

pattern GeoMatchConstraintValueGU :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueGU = GeoMatchConstraintValue' "GU"

pattern GeoMatchConstraintValueGW :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueGW = GeoMatchConstraintValue' "GW"

pattern GeoMatchConstraintValueGY :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueGY = GeoMatchConstraintValue' "GY"

pattern GeoMatchConstraintValueHK :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueHK = GeoMatchConstraintValue' "HK"

pattern GeoMatchConstraintValueHM :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueHM = GeoMatchConstraintValue' "HM"

pattern GeoMatchConstraintValueHN :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueHN = GeoMatchConstraintValue' "HN"

pattern GeoMatchConstraintValueHR :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueHR = GeoMatchConstraintValue' "HR"

pattern GeoMatchConstraintValueHT :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueHT = GeoMatchConstraintValue' "HT"

pattern GeoMatchConstraintValueHU :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueHU = GeoMatchConstraintValue' "HU"

pattern GeoMatchConstraintValueID :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueID = GeoMatchConstraintValue' "ID"

pattern GeoMatchConstraintValueIE :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueIE = GeoMatchConstraintValue' "IE"

pattern GeoMatchConstraintValueIL :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueIL = GeoMatchConstraintValue' "IL"

pattern GeoMatchConstraintValueIM :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueIM = GeoMatchConstraintValue' "IM"

pattern GeoMatchConstraintValueIN :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueIN = GeoMatchConstraintValue' "IN"

pattern GeoMatchConstraintValueIO :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueIO = GeoMatchConstraintValue' "IO"

pattern GeoMatchConstraintValueIQ :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueIQ = GeoMatchConstraintValue' "IQ"

pattern GeoMatchConstraintValueIR :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueIR = GeoMatchConstraintValue' "IR"

pattern GeoMatchConstraintValueIS :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueIS = GeoMatchConstraintValue' "IS"

pattern GeoMatchConstraintValueIT :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueIT = GeoMatchConstraintValue' "IT"

pattern GeoMatchConstraintValueJE :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueJE = GeoMatchConstraintValue' "JE"

pattern GeoMatchConstraintValueJM :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueJM = GeoMatchConstraintValue' "JM"

pattern GeoMatchConstraintValueJO :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueJO = GeoMatchConstraintValue' "JO"

pattern GeoMatchConstraintValueJP :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueJP = GeoMatchConstraintValue' "JP"

pattern GeoMatchConstraintValueKE :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueKE = GeoMatchConstraintValue' "KE"

pattern GeoMatchConstraintValueKG :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueKG = GeoMatchConstraintValue' "KG"

pattern GeoMatchConstraintValueKH :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueKH = GeoMatchConstraintValue' "KH"

pattern GeoMatchConstraintValueKI :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueKI = GeoMatchConstraintValue' "KI"

pattern GeoMatchConstraintValueKM :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueKM = GeoMatchConstraintValue' "KM"

pattern GeoMatchConstraintValueKN :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueKN = GeoMatchConstraintValue' "KN"

pattern GeoMatchConstraintValueKP :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueKP = GeoMatchConstraintValue' "KP"

pattern GeoMatchConstraintValueKR :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueKR = GeoMatchConstraintValue' "KR"

pattern GeoMatchConstraintValueKW :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueKW = GeoMatchConstraintValue' "KW"

pattern GeoMatchConstraintValueKY :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueKY = GeoMatchConstraintValue' "KY"

pattern GeoMatchConstraintValueKZ :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueKZ = GeoMatchConstraintValue' "KZ"

pattern GeoMatchConstraintValueLA :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueLA = GeoMatchConstraintValue' "LA"

pattern GeoMatchConstraintValueLB :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueLB = GeoMatchConstraintValue' "LB"

pattern GeoMatchConstraintValueLC :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueLC = GeoMatchConstraintValue' "LC"

pattern GeoMatchConstraintValueLI :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueLI = GeoMatchConstraintValue' "LI"

pattern GeoMatchConstraintValueLK :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueLK = GeoMatchConstraintValue' "LK"

pattern GeoMatchConstraintValueLR :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueLR = GeoMatchConstraintValue' "LR"

pattern GeoMatchConstraintValueLS :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueLS = GeoMatchConstraintValue' "LS"

pattern GeoMatchConstraintValueLT :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueLT = GeoMatchConstraintValue' "LT"

pattern GeoMatchConstraintValueLU :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueLU = GeoMatchConstraintValue' "LU"

pattern GeoMatchConstraintValueLV :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueLV = GeoMatchConstraintValue' "LV"

pattern GeoMatchConstraintValueLY :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueLY = GeoMatchConstraintValue' "LY"

pattern GeoMatchConstraintValueMA :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueMA = GeoMatchConstraintValue' "MA"

pattern GeoMatchConstraintValueMC :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueMC = GeoMatchConstraintValue' "MC"

pattern GeoMatchConstraintValueMD :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueMD = GeoMatchConstraintValue' "MD"

pattern GeoMatchConstraintValueME :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueME = GeoMatchConstraintValue' "ME"

pattern GeoMatchConstraintValueMF :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueMF = GeoMatchConstraintValue' "MF"

pattern GeoMatchConstraintValueMG :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueMG = GeoMatchConstraintValue' "MG"

pattern GeoMatchConstraintValueMH :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueMH = GeoMatchConstraintValue' "MH"

pattern GeoMatchConstraintValueMK :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueMK = GeoMatchConstraintValue' "MK"

pattern GeoMatchConstraintValueML :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueML = GeoMatchConstraintValue' "ML"

pattern GeoMatchConstraintValueMM :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueMM = GeoMatchConstraintValue' "MM"

pattern GeoMatchConstraintValueMN :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueMN = GeoMatchConstraintValue' "MN"

pattern GeoMatchConstraintValueMO :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueMO = GeoMatchConstraintValue' "MO"

pattern GeoMatchConstraintValueMP :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueMP = GeoMatchConstraintValue' "MP"

pattern GeoMatchConstraintValueMQ :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueMQ = GeoMatchConstraintValue' "MQ"

pattern GeoMatchConstraintValueMR :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueMR = GeoMatchConstraintValue' "MR"

pattern GeoMatchConstraintValueMS :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueMS = GeoMatchConstraintValue' "MS"

pattern GeoMatchConstraintValueMT :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueMT = GeoMatchConstraintValue' "MT"

pattern GeoMatchConstraintValueMU :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueMU = GeoMatchConstraintValue' "MU"

pattern GeoMatchConstraintValueMV :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueMV = GeoMatchConstraintValue' "MV"

pattern GeoMatchConstraintValueMW :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueMW = GeoMatchConstraintValue' "MW"

pattern GeoMatchConstraintValueMX :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueMX = GeoMatchConstraintValue' "MX"

pattern GeoMatchConstraintValueMY :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueMY = GeoMatchConstraintValue' "MY"

pattern GeoMatchConstraintValueMZ :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueMZ = GeoMatchConstraintValue' "MZ"

pattern GeoMatchConstraintValueNA :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueNA = GeoMatchConstraintValue' "NA"

pattern GeoMatchConstraintValueNC :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueNC = GeoMatchConstraintValue' "NC"

pattern GeoMatchConstraintValueNE :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueNE = GeoMatchConstraintValue' "NE"

pattern GeoMatchConstraintValueNF :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueNF = GeoMatchConstraintValue' "NF"

pattern GeoMatchConstraintValueNG :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueNG = GeoMatchConstraintValue' "NG"

pattern GeoMatchConstraintValueNI :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueNI = GeoMatchConstraintValue' "NI"

pattern GeoMatchConstraintValueNL :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueNL = GeoMatchConstraintValue' "NL"

pattern GeoMatchConstraintValueNO :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueNO = GeoMatchConstraintValue' "NO"

pattern GeoMatchConstraintValueNP :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueNP = GeoMatchConstraintValue' "NP"

pattern GeoMatchConstraintValueNR :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueNR = GeoMatchConstraintValue' "NR"

pattern GeoMatchConstraintValueNU :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueNU = GeoMatchConstraintValue' "NU"

pattern GeoMatchConstraintValueNZ :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueNZ = GeoMatchConstraintValue' "NZ"

pattern GeoMatchConstraintValueOM :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueOM = GeoMatchConstraintValue' "OM"

pattern GeoMatchConstraintValuePA :: GeoMatchConstraintValue
pattern GeoMatchConstraintValuePA = GeoMatchConstraintValue' "PA"

pattern GeoMatchConstraintValuePE :: GeoMatchConstraintValue
pattern GeoMatchConstraintValuePE = GeoMatchConstraintValue' "PE"

pattern GeoMatchConstraintValuePF :: GeoMatchConstraintValue
pattern GeoMatchConstraintValuePF = GeoMatchConstraintValue' "PF"

pattern GeoMatchConstraintValuePG :: GeoMatchConstraintValue
pattern GeoMatchConstraintValuePG = GeoMatchConstraintValue' "PG"

pattern GeoMatchConstraintValuePH :: GeoMatchConstraintValue
pattern GeoMatchConstraintValuePH = GeoMatchConstraintValue' "PH"

pattern GeoMatchConstraintValuePK :: GeoMatchConstraintValue
pattern GeoMatchConstraintValuePK = GeoMatchConstraintValue' "PK"

pattern GeoMatchConstraintValuePL :: GeoMatchConstraintValue
pattern GeoMatchConstraintValuePL = GeoMatchConstraintValue' "PL"

pattern GeoMatchConstraintValuePM :: GeoMatchConstraintValue
pattern GeoMatchConstraintValuePM = GeoMatchConstraintValue' "PM"

pattern GeoMatchConstraintValuePN :: GeoMatchConstraintValue
pattern GeoMatchConstraintValuePN = GeoMatchConstraintValue' "PN"

pattern GeoMatchConstraintValuePR :: GeoMatchConstraintValue
pattern GeoMatchConstraintValuePR = GeoMatchConstraintValue' "PR"

pattern GeoMatchConstraintValuePS :: GeoMatchConstraintValue
pattern GeoMatchConstraintValuePS = GeoMatchConstraintValue' "PS"

pattern GeoMatchConstraintValuePT :: GeoMatchConstraintValue
pattern GeoMatchConstraintValuePT = GeoMatchConstraintValue' "PT"

pattern GeoMatchConstraintValuePW :: GeoMatchConstraintValue
pattern GeoMatchConstraintValuePW = GeoMatchConstraintValue' "PW"

pattern GeoMatchConstraintValuePY :: GeoMatchConstraintValue
pattern GeoMatchConstraintValuePY = GeoMatchConstraintValue' "PY"

pattern GeoMatchConstraintValueQA :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueQA = GeoMatchConstraintValue' "QA"

pattern GeoMatchConstraintValueRE :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueRE = GeoMatchConstraintValue' "RE"

pattern GeoMatchConstraintValueRO :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueRO = GeoMatchConstraintValue' "RO"

pattern GeoMatchConstraintValueRS :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueRS = GeoMatchConstraintValue' "RS"

pattern GeoMatchConstraintValueRU :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueRU = GeoMatchConstraintValue' "RU"

pattern GeoMatchConstraintValueRW :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueRW = GeoMatchConstraintValue' "RW"

pattern GeoMatchConstraintValueSA :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueSA = GeoMatchConstraintValue' "SA"

pattern GeoMatchConstraintValueSB :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueSB = GeoMatchConstraintValue' "SB"

pattern GeoMatchConstraintValueSC :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueSC = GeoMatchConstraintValue' "SC"

pattern GeoMatchConstraintValueSD :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueSD = GeoMatchConstraintValue' "SD"

pattern GeoMatchConstraintValueSE :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueSE = GeoMatchConstraintValue' "SE"

pattern GeoMatchConstraintValueSG :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueSG = GeoMatchConstraintValue' "SG"

pattern GeoMatchConstraintValueSH :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueSH = GeoMatchConstraintValue' "SH"

pattern GeoMatchConstraintValueSI :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueSI = GeoMatchConstraintValue' "SI"

pattern GeoMatchConstraintValueSJ :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueSJ = GeoMatchConstraintValue' "SJ"

pattern GeoMatchConstraintValueSK :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueSK = GeoMatchConstraintValue' "SK"

pattern GeoMatchConstraintValueSL :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueSL = GeoMatchConstraintValue' "SL"

pattern GeoMatchConstraintValueSM :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueSM = GeoMatchConstraintValue' "SM"

pattern GeoMatchConstraintValueSN :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueSN = GeoMatchConstraintValue' "SN"

pattern GeoMatchConstraintValueSO :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueSO = GeoMatchConstraintValue' "SO"

pattern GeoMatchConstraintValueSR :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueSR = GeoMatchConstraintValue' "SR"

pattern GeoMatchConstraintValueSS :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueSS = GeoMatchConstraintValue' "SS"

pattern GeoMatchConstraintValueST :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueST = GeoMatchConstraintValue' "ST"

pattern GeoMatchConstraintValueSV :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueSV = GeoMatchConstraintValue' "SV"

pattern GeoMatchConstraintValueSX :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueSX = GeoMatchConstraintValue' "SX"

pattern GeoMatchConstraintValueSY :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueSY = GeoMatchConstraintValue' "SY"

pattern GeoMatchConstraintValueSZ :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueSZ = GeoMatchConstraintValue' "SZ"

pattern GeoMatchConstraintValueTC :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueTC = GeoMatchConstraintValue' "TC"

pattern GeoMatchConstraintValueTD :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueTD = GeoMatchConstraintValue' "TD"

pattern GeoMatchConstraintValueTF :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueTF = GeoMatchConstraintValue' "TF"

pattern GeoMatchConstraintValueTG :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueTG = GeoMatchConstraintValue' "TG"

pattern GeoMatchConstraintValueTH :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueTH = GeoMatchConstraintValue' "TH"

pattern GeoMatchConstraintValueTJ :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueTJ = GeoMatchConstraintValue' "TJ"

pattern GeoMatchConstraintValueTK :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueTK = GeoMatchConstraintValue' "TK"

pattern GeoMatchConstraintValueTL :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueTL = GeoMatchConstraintValue' "TL"

pattern GeoMatchConstraintValueTM :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueTM = GeoMatchConstraintValue' "TM"

pattern GeoMatchConstraintValueTN :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueTN = GeoMatchConstraintValue' "TN"

pattern GeoMatchConstraintValueTO :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueTO = GeoMatchConstraintValue' "TO"

pattern GeoMatchConstraintValueTR :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueTR = GeoMatchConstraintValue' "TR"

pattern GeoMatchConstraintValueTT :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueTT = GeoMatchConstraintValue' "TT"

pattern GeoMatchConstraintValueTV :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueTV = GeoMatchConstraintValue' "TV"

pattern GeoMatchConstraintValueTW :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueTW = GeoMatchConstraintValue' "TW"

pattern GeoMatchConstraintValueTZ :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueTZ = GeoMatchConstraintValue' "TZ"

pattern GeoMatchConstraintValueUA :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueUA = GeoMatchConstraintValue' "UA"

pattern GeoMatchConstraintValueUG :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueUG = GeoMatchConstraintValue' "UG"

pattern GeoMatchConstraintValueUM :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueUM = GeoMatchConstraintValue' "UM"

pattern GeoMatchConstraintValueUS :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueUS = GeoMatchConstraintValue' "US"

pattern GeoMatchConstraintValueUY :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueUY = GeoMatchConstraintValue' "UY"

pattern GeoMatchConstraintValueUZ :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueUZ = GeoMatchConstraintValue' "UZ"

pattern GeoMatchConstraintValueVA :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueVA = GeoMatchConstraintValue' "VA"

pattern GeoMatchConstraintValueVC :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueVC = GeoMatchConstraintValue' "VC"

pattern GeoMatchConstraintValueVE :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueVE = GeoMatchConstraintValue' "VE"

pattern GeoMatchConstraintValueVG :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueVG = GeoMatchConstraintValue' "VG"

pattern GeoMatchConstraintValueVI :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueVI = GeoMatchConstraintValue' "VI"

pattern GeoMatchConstraintValueVN :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueVN = GeoMatchConstraintValue' "VN"

pattern GeoMatchConstraintValueVU :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueVU = GeoMatchConstraintValue' "VU"

pattern GeoMatchConstraintValueWF :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueWF = GeoMatchConstraintValue' "WF"

pattern GeoMatchConstraintValueWS :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueWS = GeoMatchConstraintValue' "WS"

pattern GeoMatchConstraintValueYE :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueYE = GeoMatchConstraintValue' "YE"

pattern GeoMatchConstraintValueYT :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueYT = GeoMatchConstraintValue' "YT"

pattern GeoMatchConstraintValueZA :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueZA = GeoMatchConstraintValue' "ZA"

pattern GeoMatchConstraintValueZM :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueZM = GeoMatchConstraintValue' "ZM"

pattern GeoMatchConstraintValueZW :: GeoMatchConstraintValue
pattern GeoMatchConstraintValueZW = GeoMatchConstraintValue' "ZW"

{-# COMPLETE
  GeoMatchConstraintValueAD,
  GeoMatchConstraintValueAE,
  GeoMatchConstraintValueAF,
  GeoMatchConstraintValueAG,
  GeoMatchConstraintValueAI,
  GeoMatchConstraintValueAL,
  GeoMatchConstraintValueAM,
  GeoMatchConstraintValueAO,
  GeoMatchConstraintValueAQ,
  GeoMatchConstraintValueAR,
  GeoMatchConstraintValueAS,
  GeoMatchConstraintValueAT,
  GeoMatchConstraintValueAU,
  GeoMatchConstraintValueAW,
  GeoMatchConstraintValueAX,
  GeoMatchConstraintValueAZ,
  GeoMatchConstraintValueBA,
  GeoMatchConstraintValueBB,
  GeoMatchConstraintValueBD,
  GeoMatchConstraintValueBE,
  GeoMatchConstraintValueBF,
  GeoMatchConstraintValueBG,
  GeoMatchConstraintValueBH,
  GeoMatchConstraintValueBI,
  GeoMatchConstraintValueBJ,
  GeoMatchConstraintValueBL,
  GeoMatchConstraintValueBM,
  GeoMatchConstraintValueBN,
  GeoMatchConstraintValueBO,
  GeoMatchConstraintValueBQ,
  GeoMatchConstraintValueBR,
  GeoMatchConstraintValueBS,
  GeoMatchConstraintValueBT,
  GeoMatchConstraintValueBV,
  GeoMatchConstraintValueBW,
  GeoMatchConstraintValueBY,
  GeoMatchConstraintValueBZ,
  GeoMatchConstraintValueCA,
  GeoMatchConstraintValueCC,
  GeoMatchConstraintValueCD,
  GeoMatchConstraintValueCF,
  GeoMatchConstraintValueCG,
  GeoMatchConstraintValueCH,
  GeoMatchConstraintValueCI,
  GeoMatchConstraintValueCK,
  GeoMatchConstraintValueCL,
  GeoMatchConstraintValueCM,
  GeoMatchConstraintValueCN,
  GeoMatchConstraintValueCO,
  GeoMatchConstraintValueCR,
  GeoMatchConstraintValueCU,
  GeoMatchConstraintValueCV,
  GeoMatchConstraintValueCW,
  GeoMatchConstraintValueCX,
  GeoMatchConstraintValueCY,
  GeoMatchConstraintValueCZ,
  GeoMatchConstraintValueDE,
  GeoMatchConstraintValueDJ,
  GeoMatchConstraintValueDK,
  GeoMatchConstraintValueDM,
  GeoMatchConstraintValueDO,
  GeoMatchConstraintValueDZ,
  GeoMatchConstraintValueEC,
  GeoMatchConstraintValueEE,
  GeoMatchConstraintValueEG,
  GeoMatchConstraintValueEH,
  GeoMatchConstraintValueER,
  GeoMatchConstraintValueES,
  GeoMatchConstraintValueET,
  GeoMatchConstraintValueFI,
  GeoMatchConstraintValueFJ,
  GeoMatchConstraintValueFK,
  GeoMatchConstraintValueFM,
  GeoMatchConstraintValueFO,
  GeoMatchConstraintValueFR,
  GeoMatchConstraintValueGA,
  GeoMatchConstraintValueGB,
  GeoMatchConstraintValueGD,
  GeoMatchConstraintValueGE,
  GeoMatchConstraintValueGF,
  GeoMatchConstraintValueGG,
  GeoMatchConstraintValueGH,
  GeoMatchConstraintValueGI,
  GeoMatchConstraintValueGL,
  GeoMatchConstraintValueGM,
  GeoMatchConstraintValueGN,
  GeoMatchConstraintValueGP,
  GeoMatchConstraintValueGQ,
  GeoMatchConstraintValueGR,
  GeoMatchConstraintValueGS,
  GeoMatchConstraintValueGT,
  GeoMatchConstraintValueGU,
  GeoMatchConstraintValueGW,
  GeoMatchConstraintValueGY,
  GeoMatchConstraintValueHK,
  GeoMatchConstraintValueHM,
  GeoMatchConstraintValueHN,
  GeoMatchConstraintValueHR,
  GeoMatchConstraintValueHT,
  GeoMatchConstraintValueHU,
  GeoMatchConstraintValueID,
  GeoMatchConstraintValueIE,
  GeoMatchConstraintValueIL,
  GeoMatchConstraintValueIM,
  GeoMatchConstraintValueIN,
  GeoMatchConstraintValueIO,
  GeoMatchConstraintValueIQ,
  GeoMatchConstraintValueIR,
  GeoMatchConstraintValueIS,
  GeoMatchConstraintValueIT,
  GeoMatchConstraintValueJE,
  GeoMatchConstraintValueJM,
  GeoMatchConstraintValueJO,
  GeoMatchConstraintValueJP,
  GeoMatchConstraintValueKE,
  GeoMatchConstraintValueKG,
  GeoMatchConstraintValueKH,
  GeoMatchConstraintValueKI,
  GeoMatchConstraintValueKM,
  GeoMatchConstraintValueKN,
  GeoMatchConstraintValueKP,
  GeoMatchConstraintValueKR,
  GeoMatchConstraintValueKW,
  GeoMatchConstraintValueKY,
  GeoMatchConstraintValueKZ,
  GeoMatchConstraintValueLA,
  GeoMatchConstraintValueLB,
  GeoMatchConstraintValueLC,
  GeoMatchConstraintValueLI,
  GeoMatchConstraintValueLK,
  GeoMatchConstraintValueLR,
  GeoMatchConstraintValueLS,
  GeoMatchConstraintValueLT,
  GeoMatchConstraintValueLU,
  GeoMatchConstraintValueLV,
  GeoMatchConstraintValueLY,
  GeoMatchConstraintValueMA,
  GeoMatchConstraintValueMC,
  GeoMatchConstraintValueMD,
  GeoMatchConstraintValueME,
  GeoMatchConstraintValueMF,
  GeoMatchConstraintValueMG,
  GeoMatchConstraintValueMH,
  GeoMatchConstraintValueMK,
  GeoMatchConstraintValueML,
  GeoMatchConstraintValueMM,
  GeoMatchConstraintValueMN,
  GeoMatchConstraintValueMO,
  GeoMatchConstraintValueMP,
  GeoMatchConstraintValueMQ,
  GeoMatchConstraintValueMR,
  GeoMatchConstraintValueMS,
  GeoMatchConstraintValueMT,
  GeoMatchConstraintValueMU,
  GeoMatchConstraintValueMV,
  GeoMatchConstraintValueMW,
  GeoMatchConstraintValueMX,
  GeoMatchConstraintValueMY,
  GeoMatchConstraintValueMZ,
  GeoMatchConstraintValueNA,
  GeoMatchConstraintValueNC,
  GeoMatchConstraintValueNE,
  GeoMatchConstraintValueNF,
  GeoMatchConstraintValueNG,
  GeoMatchConstraintValueNI,
  GeoMatchConstraintValueNL,
  GeoMatchConstraintValueNO,
  GeoMatchConstraintValueNP,
  GeoMatchConstraintValueNR,
  GeoMatchConstraintValueNU,
  GeoMatchConstraintValueNZ,
  GeoMatchConstraintValueOM,
  GeoMatchConstraintValuePA,
  GeoMatchConstraintValuePE,
  GeoMatchConstraintValuePF,
  GeoMatchConstraintValuePG,
  GeoMatchConstraintValuePH,
  GeoMatchConstraintValuePK,
  GeoMatchConstraintValuePL,
  GeoMatchConstraintValuePM,
  GeoMatchConstraintValuePN,
  GeoMatchConstraintValuePR,
  GeoMatchConstraintValuePS,
  GeoMatchConstraintValuePT,
  GeoMatchConstraintValuePW,
  GeoMatchConstraintValuePY,
  GeoMatchConstraintValueQA,
  GeoMatchConstraintValueRE,
  GeoMatchConstraintValueRO,
  GeoMatchConstraintValueRS,
  GeoMatchConstraintValueRU,
  GeoMatchConstraintValueRW,
  GeoMatchConstraintValueSA,
  GeoMatchConstraintValueSB,
  GeoMatchConstraintValueSC,
  GeoMatchConstraintValueSD,
  GeoMatchConstraintValueSE,
  GeoMatchConstraintValueSG,
  GeoMatchConstraintValueSH,
  GeoMatchConstraintValueSI,
  GeoMatchConstraintValueSJ,
  GeoMatchConstraintValueSK,
  GeoMatchConstraintValueSL,
  GeoMatchConstraintValueSM,
  GeoMatchConstraintValueSN,
  GeoMatchConstraintValueSO,
  GeoMatchConstraintValueSR,
  GeoMatchConstraintValueSS,
  GeoMatchConstraintValueST,
  GeoMatchConstraintValueSV,
  GeoMatchConstraintValueSX,
  GeoMatchConstraintValueSY,
  GeoMatchConstraintValueSZ,
  GeoMatchConstraintValueTC,
  GeoMatchConstraintValueTD,
  GeoMatchConstraintValueTF,
  GeoMatchConstraintValueTG,
  GeoMatchConstraintValueTH,
  GeoMatchConstraintValueTJ,
  GeoMatchConstraintValueTK,
  GeoMatchConstraintValueTL,
  GeoMatchConstraintValueTM,
  GeoMatchConstraintValueTN,
  GeoMatchConstraintValueTO,
  GeoMatchConstraintValueTR,
  GeoMatchConstraintValueTT,
  GeoMatchConstraintValueTV,
  GeoMatchConstraintValueTW,
  GeoMatchConstraintValueTZ,
  GeoMatchConstraintValueUA,
  GeoMatchConstraintValueUG,
  GeoMatchConstraintValueUM,
  GeoMatchConstraintValueUS,
  GeoMatchConstraintValueUY,
  GeoMatchConstraintValueUZ,
  GeoMatchConstraintValueVA,
  GeoMatchConstraintValueVC,
  GeoMatchConstraintValueVE,
  GeoMatchConstraintValueVG,
  GeoMatchConstraintValueVI,
  GeoMatchConstraintValueVN,
  GeoMatchConstraintValueVU,
  GeoMatchConstraintValueWF,
  GeoMatchConstraintValueWS,
  GeoMatchConstraintValueYE,
  GeoMatchConstraintValueYT,
  GeoMatchConstraintValueZA,
  GeoMatchConstraintValueZM,
  GeoMatchConstraintValueZW,
  GeoMatchConstraintValue'
  #-}

instance Prelude.FromText GeoMatchConstraintValue where
  parser = GeoMatchConstraintValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText GeoMatchConstraintValue where
  toText (GeoMatchConstraintValue' x) = x

instance Prelude.Hashable GeoMatchConstraintValue

instance Prelude.NFData GeoMatchConstraintValue

instance Prelude.ToByteString GeoMatchConstraintValue

instance Prelude.ToQuery GeoMatchConstraintValue

instance Prelude.ToHeader GeoMatchConstraintValue

instance Prelude.ToJSON GeoMatchConstraintValue where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON GeoMatchConstraintValue where
  parseJSON = Prelude.parseJSONText "GeoMatchConstraintValue"
