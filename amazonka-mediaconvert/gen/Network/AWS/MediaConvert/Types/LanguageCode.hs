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
-- Module      : Network.AWS.MediaConvert.Types.LanguageCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.LanguageCode
  ( LanguageCode
      ( ..,
        LanguageCodeAAR,
        LanguageCodeABK,
        LanguageCodeAFR,
        LanguageCodeAKA,
        LanguageCodeAMH,
        LanguageCodeARA,
        LanguageCodeARG,
        LanguageCodeASM,
        LanguageCodeAVA,
        LanguageCodeAVE,
        LanguageCodeAYM,
        LanguageCodeAZE,
        LanguageCodeBAK,
        LanguageCodeBAM,
        LanguageCodeBEL,
        LanguageCodeBEN,
        LanguageCodeBIH,
        LanguageCodeBIS,
        LanguageCodeBOD,
        LanguageCodeBOS,
        LanguageCodeBRE,
        LanguageCodeBUL,
        LanguageCodeCAT,
        LanguageCodeCES,
        LanguageCodeCHA,
        LanguageCodeCHE,
        LanguageCodeCHU,
        LanguageCodeCHV,
        LanguageCodeCOR,
        LanguageCodeCOS,
        LanguageCodeCRE,
        LanguageCodeCYM,
        LanguageCodeDAN,
        LanguageCodeDEU,
        LanguageCodeDIV,
        LanguageCodeDZO,
        LanguageCodeELL,
        LanguageCodeENG,
        LanguageCodeENM,
        LanguageCodeEPO,
        LanguageCodeEST,
        LanguageCodeEUS,
        LanguageCodeEWE,
        LanguageCodeFAO,
        LanguageCodeFAS,
        LanguageCodeFIJ,
        LanguageCodeFIN,
        LanguageCodeFRA,
        LanguageCodeFRM,
        LanguageCodeFRY,
        LanguageCodeFUL,
        LanguageCodeGER,
        LanguageCodeGLA,
        LanguageCodeGLE,
        LanguageCodeGLG,
        LanguageCodeGLV,
        LanguageCodeGRN,
        LanguageCodeGUJ,
        LanguageCodeHAT,
        LanguageCodeHAU,
        LanguageCodeHEB,
        LanguageCodeHER,
        LanguageCodeHIN,
        LanguageCodeHMO,
        LanguageCodeHRV,
        LanguageCodeHUN,
        LanguageCodeHYE,
        LanguageCodeIBO,
        LanguageCodeIDO,
        LanguageCodeIII,
        LanguageCodeIKU,
        LanguageCodeILE,
        LanguageCodeINA,
        LanguageCodeIND,
        LanguageCodeIPK,
        LanguageCodeISL,
        LanguageCodeITA,
        LanguageCodeJAV,
        LanguageCodeJPN,
        LanguageCodeKAL,
        LanguageCodeKAN,
        LanguageCodeKAS,
        LanguageCodeKAT,
        LanguageCodeKAU,
        LanguageCodeKAZ,
        LanguageCodeKHM,
        LanguageCodeKIK,
        LanguageCodeKIN,
        LanguageCodeKIR,
        LanguageCodeKOM,
        LanguageCodeKON,
        LanguageCodeKOR,
        LanguageCodeKUA,
        LanguageCodeKUR,
        LanguageCodeLAO,
        LanguageCodeLAT,
        LanguageCodeLAV,
        LanguageCodeLIM,
        LanguageCodeLIN,
        LanguageCodeLIT,
        LanguageCodeLTZ,
        LanguageCodeLUB,
        LanguageCodeLUG,
        LanguageCodeMAH,
        LanguageCodeMAL,
        LanguageCodeMAR,
        LanguageCodeMKD,
        LanguageCodeMLG,
        LanguageCodeMLT,
        LanguageCodeMON,
        LanguageCodeMRI,
        LanguageCodeMSA,
        LanguageCodeMYA,
        LanguageCodeNAU,
        LanguageCodeNAV,
        LanguageCodeNBL,
        LanguageCodeNDE,
        LanguageCodeNDO,
        LanguageCodeNEP,
        LanguageCodeNLD,
        LanguageCodeNNO,
        LanguageCodeNOB,
        LanguageCodeNOR,
        LanguageCodeNYA,
        LanguageCodeOCI,
        LanguageCodeOJI,
        LanguageCodeORI,
        LanguageCodeORJ,
        LanguageCodeORM,
        LanguageCodeOSS,
        LanguageCodePAN,
        LanguageCodePLI,
        LanguageCodePOL,
        LanguageCodePOR,
        LanguageCodePUS,
        LanguageCodeQAA,
        LanguageCodeQPC,
        LanguageCodeQUE,
        LanguageCodeROH,
        LanguageCodeRON,
        LanguageCodeRUN,
        LanguageCodeRUS,
        LanguageCodeSAG,
        LanguageCodeSAN,
        LanguageCodeSIN,
        LanguageCodeSLK,
        LanguageCodeSLV,
        LanguageCodeSME,
        LanguageCodeSMO,
        LanguageCodeSNA,
        LanguageCodeSND,
        LanguageCodeSOM,
        LanguageCodeSOT,
        LanguageCodeSPA,
        LanguageCodeSQI,
        LanguageCodeSRB,
        LanguageCodeSRD,
        LanguageCodeSSW,
        LanguageCodeSUN,
        LanguageCodeSWA,
        LanguageCodeSWE,
        LanguageCodeTAH,
        LanguageCodeTAM,
        LanguageCodeTAT,
        LanguageCodeTEL,
        LanguageCodeTGK,
        LanguageCodeTGL,
        LanguageCodeTHA,
        LanguageCodeTIR,
        LanguageCodeTNG,
        LanguageCodeTON,
        LanguageCodeTSN,
        LanguageCodeTSO,
        LanguageCodeTUK,
        LanguageCodeTUR,
        LanguageCodeTWI,
        LanguageCodeUIG,
        LanguageCodeUKR,
        LanguageCodeURD,
        LanguageCodeUZB,
        LanguageCodeVEN,
        LanguageCodeVIE,
        LanguageCodeVOL,
        LanguageCodeWLN,
        LanguageCodeWOL,
        LanguageCodeXHO,
        LanguageCodeYID,
        LanguageCodeYOR,
        LanguageCodeZHA,
        LanguageCodeZHO,
        LanguageCodeZUL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify the language, using the ISO 639-2 three-letter code listed at
-- https:\/\/www.loc.gov\/standards\/iso639-2\/php\/code_list.php.
newtype LanguageCode = LanguageCode'
  { fromLanguageCode ::
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

pattern LanguageCodeAAR :: LanguageCode
pattern LanguageCodeAAR = LanguageCode' "AAR"

pattern LanguageCodeABK :: LanguageCode
pattern LanguageCodeABK = LanguageCode' "ABK"

pattern LanguageCodeAFR :: LanguageCode
pattern LanguageCodeAFR = LanguageCode' "AFR"

pattern LanguageCodeAKA :: LanguageCode
pattern LanguageCodeAKA = LanguageCode' "AKA"

pattern LanguageCodeAMH :: LanguageCode
pattern LanguageCodeAMH = LanguageCode' "AMH"

pattern LanguageCodeARA :: LanguageCode
pattern LanguageCodeARA = LanguageCode' "ARA"

pattern LanguageCodeARG :: LanguageCode
pattern LanguageCodeARG = LanguageCode' "ARG"

pattern LanguageCodeASM :: LanguageCode
pattern LanguageCodeASM = LanguageCode' "ASM"

pattern LanguageCodeAVA :: LanguageCode
pattern LanguageCodeAVA = LanguageCode' "AVA"

pattern LanguageCodeAVE :: LanguageCode
pattern LanguageCodeAVE = LanguageCode' "AVE"

pattern LanguageCodeAYM :: LanguageCode
pattern LanguageCodeAYM = LanguageCode' "AYM"

pattern LanguageCodeAZE :: LanguageCode
pattern LanguageCodeAZE = LanguageCode' "AZE"

pattern LanguageCodeBAK :: LanguageCode
pattern LanguageCodeBAK = LanguageCode' "BAK"

pattern LanguageCodeBAM :: LanguageCode
pattern LanguageCodeBAM = LanguageCode' "BAM"

pattern LanguageCodeBEL :: LanguageCode
pattern LanguageCodeBEL = LanguageCode' "BEL"

pattern LanguageCodeBEN :: LanguageCode
pattern LanguageCodeBEN = LanguageCode' "BEN"

pattern LanguageCodeBIH :: LanguageCode
pattern LanguageCodeBIH = LanguageCode' "BIH"

pattern LanguageCodeBIS :: LanguageCode
pattern LanguageCodeBIS = LanguageCode' "BIS"

pattern LanguageCodeBOD :: LanguageCode
pattern LanguageCodeBOD = LanguageCode' "BOD"

pattern LanguageCodeBOS :: LanguageCode
pattern LanguageCodeBOS = LanguageCode' "BOS"

pattern LanguageCodeBRE :: LanguageCode
pattern LanguageCodeBRE = LanguageCode' "BRE"

pattern LanguageCodeBUL :: LanguageCode
pattern LanguageCodeBUL = LanguageCode' "BUL"

pattern LanguageCodeCAT :: LanguageCode
pattern LanguageCodeCAT = LanguageCode' "CAT"

pattern LanguageCodeCES :: LanguageCode
pattern LanguageCodeCES = LanguageCode' "CES"

pattern LanguageCodeCHA :: LanguageCode
pattern LanguageCodeCHA = LanguageCode' "CHA"

pattern LanguageCodeCHE :: LanguageCode
pattern LanguageCodeCHE = LanguageCode' "CHE"

pattern LanguageCodeCHU :: LanguageCode
pattern LanguageCodeCHU = LanguageCode' "CHU"

pattern LanguageCodeCHV :: LanguageCode
pattern LanguageCodeCHV = LanguageCode' "CHV"

pattern LanguageCodeCOR :: LanguageCode
pattern LanguageCodeCOR = LanguageCode' "COR"

pattern LanguageCodeCOS :: LanguageCode
pattern LanguageCodeCOS = LanguageCode' "COS"

pattern LanguageCodeCRE :: LanguageCode
pattern LanguageCodeCRE = LanguageCode' "CRE"

pattern LanguageCodeCYM :: LanguageCode
pattern LanguageCodeCYM = LanguageCode' "CYM"

pattern LanguageCodeDAN :: LanguageCode
pattern LanguageCodeDAN = LanguageCode' "DAN"

pattern LanguageCodeDEU :: LanguageCode
pattern LanguageCodeDEU = LanguageCode' "DEU"

pattern LanguageCodeDIV :: LanguageCode
pattern LanguageCodeDIV = LanguageCode' "DIV"

pattern LanguageCodeDZO :: LanguageCode
pattern LanguageCodeDZO = LanguageCode' "DZO"

pattern LanguageCodeELL :: LanguageCode
pattern LanguageCodeELL = LanguageCode' "ELL"

pattern LanguageCodeENG :: LanguageCode
pattern LanguageCodeENG = LanguageCode' "ENG"

pattern LanguageCodeENM :: LanguageCode
pattern LanguageCodeENM = LanguageCode' "ENM"

pattern LanguageCodeEPO :: LanguageCode
pattern LanguageCodeEPO = LanguageCode' "EPO"

pattern LanguageCodeEST :: LanguageCode
pattern LanguageCodeEST = LanguageCode' "EST"

pattern LanguageCodeEUS :: LanguageCode
pattern LanguageCodeEUS = LanguageCode' "EUS"

pattern LanguageCodeEWE :: LanguageCode
pattern LanguageCodeEWE = LanguageCode' "EWE"

pattern LanguageCodeFAO :: LanguageCode
pattern LanguageCodeFAO = LanguageCode' "FAO"

pattern LanguageCodeFAS :: LanguageCode
pattern LanguageCodeFAS = LanguageCode' "FAS"

pattern LanguageCodeFIJ :: LanguageCode
pattern LanguageCodeFIJ = LanguageCode' "FIJ"

pattern LanguageCodeFIN :: LanguageCode
pattern LanguageCodeFIN = LanguageCode' "FIN"

pattern LanguageCodeFRA :: LanguageCode
pattern LanguageCodeFRA = LanguageCode' "FRA"

pattern LanguageCodeFRM :: LanguageCode
pattern LanguageCodeFRM = LanguageCode' "FRM"

pattern LanguageCodeFRY :: LanguageCode
pattern LanguageCodeFRY = LanguageCode' "FRY"

pattern LanguageCodeFUL :: LanguageCode
pattern LanguageCodeFUL = LanguageCode' "FUL"

pattern LanguageCodeGER :: LanguageCode
pattern LanguageCodeGER = LanguageCode' "GER"

pattern LanguageCodeGLA :: LanguageCode
pattern LanguageCodeGLA = LanguageCode' "GLA"

pattern LanguageCodeGLE :: LanguageCode
pattern LanguageCodeGLE = LanguageCode' "GLE"

pattern LanguageCodeGLG :: LanguageCode
pattern LanguageCodeGLG = LanguageCode' "GLG"

pattern LanguageCodeGLV :: LanguageCode
pattern LanguageCodeGLV = LanguageCode' "GLV"

pattern LanguageCodeGRN :: LanguageCode
pattern LanguageCodeGRN = LanguageCode' "GRN"

pattern LanguageCodeGUJ :: LanguageCode
pattern LanguageCodeGUJ = LanguageCode' "GUJ"

pattern LanguageCodeHAT :: LanguageCode
pattern LanguageCodeHAT = LanguageCode' "HAT"

pattern LanguageCodeHAU :: LanguageCode
pattern LanguageCodeHAU = LanguageCode' "HAU"

pattern LanguageCodeHEB :: LanguageCode
pattern LanguageCodeHEB = LanguageCode' "HEB"

pattern LanguageCodeHER :: LanguageCode
pattern LanguageCodeHER = LanguageCode' "HER"

pattern LanguageCodeHIN :: LanguageCode
pattern LanguageCodeHIN = LanguageCode' "HIN"

pattern LanguageCodeHMO :: LanguageCode
pattern LanguageCodeHMO = LanguageCode' "HMO"

pattern LanguageCodeHRV :: LanguageCode
pattern LanguageCodeHRV = LanguageCode' "HRV"

pattern LanguageCodeHUN :: LanguageCode
pattern LanguageCodeHUN = LanguageCode' "HUN"

pattern LanguageCodeHYE :: LanguageCode
pattern LanguageCodeHYE = LanguageCode' "HYE"

pattern LanguageCodeIBO :: LanguageCode
pattern LanguageCodeIBO = LanguageCode' "IBO"

pattern LanguageCodeIDO :: LanguageCode
pattern LanguageCodeIDO = LanguageCode' "IDO"

pattern LanguageCodeIII :: LanguageCode
pattern LanguageCodeIII = LanguageCode' "III"

pattern LanguageCodeIKU :: LanguageCode
pattern LanguageCodeIKU = LanguageCode' "IKU"

pattern LanguageCodeILE :: LanguageCode
pattern LanguageCodeILE = LanguageCode' "ILE"

pattern LanguageCodeINA :: LanguageCode
pattern LanguageCodeINA = LanguageCode' "INA"

pattern LanguageCodeIND :: LanguageCode
pattern LanguageCodeIND = LanguageCode' "IND"

pattern LanguageCodeIPK :: LanguageCode
pattern LanguageCodeIPK = LanguageCode' "IPK"

pattern LanguageCodeISL :: LanguageCode
pattern LanguageCodeISL = LanguageCode' "ISL"

pattern LanguageCodeITA :: LanguageCode
pattern LanguageCodeITA = LanguageCode' "ITA"

pattern LanguageCodeJAV :: LanguageCode
pattern LanguageCodeJAV = LanguageCode' "JAV"

pattern LanguageCodeJPN :: LanguageCode
pattern LanguageCodeJPN = LanguageCode' "JPN"

pattern LanguageCodeKAL :: LanguageCode
pattern LanguageCodeKAL = LanguageCode' "KAL"

pattern LanguageCodeKAN :: LanguageCode
pattern LanguageCodeKAN = LanguageCode' "KAN"

pattern LanguageCodeKAS :: LanguageCode
pattern LanguageCodeKAS = LanguageCode' "KAS"

pattern LanguageCodeKAT :: LanguageCode
pattern LanguageCodeKAT = LanguageCode' "KAT"

pattern LanguageCodeKAU :: LanguageCode
pattern LanguageCodeKAU = LanguageCode' "KAU"

pattern LanguageCodeKAZ :: LanguageCode
pattern LanguageCodeKAZ = LanguageCode' "KAZ"

pattern LanguageCodeKHM :: LanguageCode
pattern LanguageCodeKHM = LanguageCode' "KHM"

pattern LanguageCodeKIK :: LanguageCode
pattern LanguageCodeKIK = LanguageCode' "KIK"

pattern LanguageCodeKIN :: LanguageCode
pattern LanguageCodeKIN = LanguageCode' "KIN"

pattern LanguageCodeKIR :: LanguageCode
pattern LanguageCodeKIR = LanguageCode' "KIR"

pattern LanguageCodeKOM :: LanguageCode
pattern LanguageCodeKOM = LanguageCode' "KOM"

pattern LanguageCodeKON :: LanguageCode
pattern LanguageCodeKON = LanguageCode' "KON"

pattern LanguageCodeKOR :: LanguageCode
pattern LanguageCodeKOR = LanguageCode' "KOR"

pattern LanguageCodeKUA :: LanguageCode
pattern LanguageCodeKUA = LanguageCode' "KUA"

pattern LanguageCodeKUR :: LanguageCode
pattern LanguageCodeKUR = LanguageCode' "KUR"

pattern LanguageCodeLAO :: LanguageCode
pattern LanguageCodeLAO = LanguageCode' "LAO"

pattern LanguageCodeLAT :: LanguageCode
pattern LanguageCodeLAT = LanguageCode' "LAT"

pattern LanguageCodeLAV :: LanguageCode
pattern LanguageCodeLAV = LanguageCode' "LAV"

pattern LanguageCodeLIM :: LanguageCode
pattern LanguageCodeLIM = LanguageCode' "LIM"

pattern LanguageCodeLIN :: LanguageCode
pattern LanguageCodeLIN = LanguageCode' "LIN"

pattern LanguageCodeLIT :: LanguageCode
pattern LanguageCodeLIT = LanguageCode' "LIT"

pattern LanguageCodeLTZ :: LanguageCode
pattern LanguageCodeLTZ = LanguageCode' "LTZ"

pattern LanguageCodeLUB :: LanguageCode
pattern LanguageCodeLUB = LanguageCode' "LUB"

pattern LanguageCodeLUG :: LanguageCode
pattern LanguageCodeLUG = LanguageCode' "LUG"

pattern LanguageCodeMAH :: LanguageCode
pattern LanguageCodeMAH = LanguageCode' "MAH"

pattern LanguageCodeMAL :: LanguageCode
pattern LanguageCodeMAL = LanguageCode' "MAL"

pattern LanguageCodeMAR :: LanguageCode
pattern LanguageCodeMAR = LanguageCode' "MAR"

pattern LanguageCodeMKD :: LanguageCode
pattern LanguageCodeMKD = LanguageCode' "MKD"

pattern LanguageCodeMLG :: LanguageCode
pattern LanguageCodeMLG = LanguageCode' "MLG"

pattern LanguageCodeMLT :: LanguageCode
pattern LanguageCodeMLT = LanguageCode' "MLT"

pattern LanguageCodeMON :: LanguageCode
pattern LanguageCodeMON = LanguageCode' "MON"

pattern LanguageCodeMRI :: LanguageCode
pattern LanguageCodeMRI = LanguageCode' "MRI"

pattern LanguageCodeMSA :: LanguageCode
pattern LanguageCodeMSA = LanguageCode' "MSA"

pattern LanguageCodeMYA :: LanguageCode
pattern LanguageCodeMYA = LanguageCode' "MYA"

pattern LanguageCodeNAU :: LanguageCode
pattern LanguageCodeNAU = LanguageCode' "NAU"

pattern LanguageCodeNAV :: LanguageCode
pattern LanguageCodeNAV = LanguageCode' "NAV"

pattern LanguageCodeNBL :: LanguageCode
pattern LanguageCodeNBL = LanguageCode' "NBL"

pattern LanguageCodeNDE :: LanguageCode
pattern LanguageCodeNDE = LanguageCode' "NDE"

pattern LanguageCodeNDO :: LanguageCode
pattern LanguageCodeNDO = LanguageCode' "NDO"

pattern LanguageCodeNEP :: LanguageCode
pattern LanguageCodeNEP = LanguageCode' "NEP"

pattern LanguageCodeNLD :: LanguageCode
pattern LanguageCodeNLD = LanguageCode' "NLD"

pattern LanguageCodeNNO :: LanguageCode
pattern LanguageCodeNNO = LanguageCode' "NNO"

pattern LanguageCodeNOB :: LanguageCode
pattern LanguageCodeNOB = LanguageCode' "NOB"

pattern LanguageCodeNOR :: LanguageCode
pattern LanguageCodeNOR = LanguageCode' "NOR"

pattern LanguageCodeNYA :: LanguageCode
pattern LanguageCodeNYA = LanguageCode' "NYA"

pattern LanguageCodeOCI :: LanguageCode
pattern LanguageCodeOCI = LanguageCode' "OCI"

pattern LanguageCodeOJI :: LanguageCode
pattern LanguageCodeOJI = LanguageCode' "OJI"

pattern LanguageCodeORI :: LanguageCode
pattern LanguageCodeORI = LanguageCode' "ORI"

pattern LanguageCodeORJ :: LanguageCode
pattern LanguageCodeORJ = LanguageCode' "ORJ"

pattern LanguageCodeORM :: LanguageCode
pattern LanguageCodeORM = LanguageCode' "ORM"

pattern LanguageCodeOSS :: LanguageCode
pattern LanguageCodeOSS = LanguageCode' "OSS"

pattern LanguageCodePAN :: LanguageCode
pattern LanguageCodePAN = LanguageCode' "PAN"

pattern LanguageCodePLI :: LanguageCode
pattern LanguageCodePLI = LanguageCode' "PLI"

pattern LanguageCodePOL :: LanguageCode
pattern LanguageCodePOL = LanguageCode' "POL"

pattern LanguageCodePOR :: LanguageCode
pattern LanguageCodePOR = LanguageCode' "POR"

pattern LanguageCodePUS :: LanguageCode
pattern LanguageCodePUS = LanguageCode' "PUS"

pattern LanguageCodeQAA :: LanguageCode
pattern LanguageCodeQAA = LanguageCode' "QAA"

pattern LanguageCodeQPC :: LanguageCode
pattern LanguageCodeQPC = LanguageCode' "QPC"

pattern LanguageCodeQUE :: LanguageCode
pattern LanguageCodeQUE = LanguageCode' "QUE"

pattern LanguageCodeROH :: LanguageCode
pattern LanguageCodeROH = LanguageCode' "ROH"

pattern LanguageCodeRON :: LanguageCode
pattern LanguageCodeRON = LanguageCode' "RON"

pattern LanguageCodeRUN :: LanguageCode
pattern LanguageCodeRUN = LanguageCode' "RUN"

pattern LanguageCodeRUS :: LanguageCode
pattern LanguageCodeRUS = LanguageCode' "RUS"

pattern LanguageCodeSAG :: LanguageCode
pattern LanguageCodeSAG = LanguageCode' "SAG"

pattern LanguageCodeSAN :: LanguageCode
pattern LanguageCodeSAN = LanguageCode' "SAN"

pattern LanguageCodeSIN :: LanguageCode
pattern LanguageCodeSIN = LanguageCode' "SIN"

pattern LanguageCodeSLK :: LanguageCode
pattern LanguageCodeSLK = LanguageCode' "SLK"

pattern LanguageCodeSLV :: LanguageCode
pattern LanguageCodeSLV = LanguageCode' "SLV"

pattern LanguageCodeSME :: LanguageCode
pattern LanguageCodeSME = LanguageCode' "SME"

pattern LanguageCodeSMO :: LanguageCode
pattern LanguageCodeSMO = LanguageCode' "SMO"

pattern LanguageCodeSNA :: LanguageCode
pattern LanguageCodeSNA = LanguageCode' "SNA"

pattern LanguageCodeSND :: LanguageCode
pattern LanguageCodeSND = LanguageCode' "SND"

pattern LanguageCodeSOM :: LanguageCode
pattern LanguageCodeSOM = LanguageCode' "SOM"

pattern LanguageCodeSOT :: LanguageCode
pattern LanguageCodeSOT = LanguageCode' "SOT"

pattern LanguageCodeSPA :: LanguageCode
pattern LanguageCodeSPA = LanguageCode' "SPA"

pattern LanguageCodeSQI :: LanguageCode
pattern LanguageCodeSQI = LanguageCode' "SQI"

pattern LanguageCodeSRB :: LanguageCode
pattern LanguageCodeSRB = LanguageCode' "SRB"

pattern LanguageCodeSRD :: LanguageCode
pattern LanguageCodeSRD = LanguageCode' "SRD"

pattern LanguageCodeSSW :: LanguageCode
pattern LanguageCodeSSW = LanguageCode' "SSW"

pattern LanguageCodeSUN :: LanguageCode
pattern LanguageCodeSUN = LanguageCode' "SUN"

pattern LanguageCodeSWA :: LanguageCode
pattern LanguageCodeSWA = LanguageCode' "SWA"

pattern LanguageCodeSWE :: LanguageCode
pattern LanguageCodeSWE = LanguageCode' "SWE"

pattern LanguageCodeTAH :: LanguageCode
pattern LanguageCodeTAH = LanguageCode' "TAH"

pattern LanguageCodeTAM :: LanguageCode
pattern LanguageCodeTAM = LanguageCode' "TAM"

pattern LanguageCodeTAT :: LanguageCode
pattern LanguageCodeTAT = LanguageCode' "TAT"

pattern LanguageCodeTEL :: LanguageCode
pattern LanguageCodeTEL = LanguageCode' "TEL"

pattern LanguageCodeTGK :: LanguageCode
pattern LanguageCodeTGK = LanguageCode' "TGK"

pattern LanguageCodeTGL :: LanguageCode
pattern LanguageCodeTGL = LanguageCode' "TGL"

pattern LanguageCodeTHA :: LanguageCode
pattern LanguageCodeTHA = LanguageCode' "THA"

pattern LanguageCodeTIR :: LanguageCode
pattern LanguageCodeTIR = LanguageCode' "TIR"

pattern LanguageCodeTNG :: LanguageCode
pattern LanguageCodeTNG = LanguageCode' "TNG"

pattern LanguageCodeTON :: LanguageCode
pattern LanguageCodeTON = LanguageCode' "TON"

pattern LanguageCodeTSN :: LanguageCode
pattern LanguageCodeTSN = LanguageCode' "TSN"

pattern LanguageCodeTSO :: LanguageCode
pattern LanguageCodeTSO = LanguageCode' "TSO"

pattern LanguageCodeTUK :: LanguageCode
pattern LanguageCodeTUK = LanguageCode' "TUK"

pattern LanguageCodeTUR :: LanguageCode
pattern LanguageCodeTUR = LanguageCode' "TUR"

pattern LanguageCodeTWI :: LanguageCode
pattern LanguageCodeTWI = LanguageCode' "TWI"

pattern LanguageCodeUIG :: LanguageCode
pattern LanguageCodeUIG = LanguageCode' "UIG"

pattern LanguageCodeUKR :: LanguageCode
pattern LanguageCodeUKR = LanguageCode' "UKR"

pattern LanguageCodeURD :: LanguageCode
pattern LanguageCodeURD = LanguageCode' "URD"

pattern LanguageCodeUZB :: LanguageCode
pattern LanguageCodeUZB = LanguageCode' "UZB"

pattern LanguageCodeVEN :: LanguageCode
pattern LanguageCodeVEN = LanguageCode' "VEN"

pattern LanguageCodeVIE :: LanguageCode
pattern LanguageCodeVIE = LanguageCode' "VIE"

pattern LanguageCodeVOL :: LanguageCode
pattern LanguageCodeVOL = LanguageCode' "VOL"

pattern LanguageCodeWLN :: LanguageCode
pattern LanguageCodeWLN = LanguageCode' "WLN"

pattern LanguageCodeWOL :: LanguageCode
pattern LanguageCodeWOL = LanguageCode' "WOL"

pattern LanguageCodeXHO :: LanguageCode
pattern LanguageCodeXHO = LanguageCode' "XHO"

pattern LanguageCodeYID :: LanguageCode
pattern LanguageCodeYID = LanguageCode' "YID"

pattern LanguageCodeYOR :: LanguageCode
pattern LanguageCodeYOR = LanguageCode' "YOR"

pattern LanguageCodeZHA :: LanguageCode
pattern LanguageCodeZHA = LanguageCode' "ZHA"

pattern LanguageCodeZHO :: LanguageCode
pattern LanguageCodeZHO = LanguageCode' "ZHO"

pattern LanguageCodeZUL :: LanguageCode
pattern LanguageCodeZUL = LanguageCode' "ZUL"

{-# COMPLETE
  LanguageCodeAAR,
  LanguageCodeABK,
  LanguageCodeAFR,
  LanguageCodeAKA,
  LanguageCodeAMH,
  LanguageCodeARA,
  LanguageCodeARG,
  LanguageCodeASM,
  LanguageCodeAVA,
  LanguageCodeAVE,
  LanguageCodeAYM,
  LanguageCodeAZE,
  LanguageCodeBAK,
  LanguageCodeBAM,
  LanguageCodeBEL,
  LanguageCodeBEN,
  LanguageCodeBIH,
  LanguageCodeBIS,
  LanguageCodeBOD,
  LanguageCodeBOS,
  LanguageCodeBRE,
  LanguageCodeBUL,
  LanguageCodeCAT,
  LanguageCodeCES,
  LanguageCodeCHA,
  LanguageCodeCHE,
  LanguageCodeCHU,
  LanguageCodeCHV,
  LanguageCodeCOR,
  LanguageCodeCOS,
  LanguageCodeCRE,
  LanguageCodeCYM,
  LanguageCodeDAN,
  LanguageCodeDEU,
  LanguageCodeDIV,
  LanguageCodeDZO,
  LanguageCodeELL,
  LanguageCodeENG,
  LanguageCodeENM,
  LanguageCodeEPO,
  LanguageCodeEST,
  LanguageCodeEUS,
  LanguageCodeEWE,
  LanguageCodeFAO,
  LanguageCodeFAS,
  LanguageCodeFIJ,
  LanguageCodeFIN,
  LanguageCodeFRA,
  LanguageCodeFRM,
  LanguageCodeFRY,
  LanguageCodeFUL,
  LanguageCodeGER,
  LanguageCodeGLA,
  LanguageCodeGLE,
  LanguageCodeGLG,
  LanguageCodeGLV,
  LanguageCodeGRN,
  LanguageCodeGUJ,
  LanguageCodeHAT,
  LanguageCodeHAU,
  LanguageCodeHEB,
  LanguageCodeHER,
  LanguageCodeHIN,
  LanguageCodeHMO,
  LanguageCodeHRV,
  LanguageCodeHUN,
  LanguageCodeHYE,
  LanguageCodeIBO,
  LanguageCodeIDO,
  LanguageCodeIII,
  LanguageCodeIKU,
  LanguageCodeILE,
  LanguageCodeINA,
  LanguageCodeIND,
  LanguageCodeIPK,
  LanguageCodeISL,
  LanguageCodeITA,
  LanguageCodeJAV,
  LanguageCodeJPN,
  LanguageCodeKAL,
  LanguageCodeKAN,
  LanguageCodeKAS,
  LanguageCodeKAT,
  LanguageCodeKAU,
  LanguageCodeKAZ,
  LanguageCodeKHM,
  LanguageCodeKIK,
  LanguageCodeKIN,
  LanguageCodeKIR,
  LanguageCodeKOM,
  LanguageCodeKON,
  LanguageCodeKOR,
  LanguageCodeKUA,
  LanguageCodeKUR,
  LanguageCodeLAO,
  LanguageCodeLAT,
  LanguageCodeLAV,
  LanguageCodeLIM,
  LanguageCodeLIN,
  LanguageCodeLIT,
  LanguageCodeLTZ,
  LanguageCodeLUB,
  LanguageCodeLUG,
  LanguageCodeMAH,
  LanguageCodeMAL,
  LanguageCodeMAR,
  LanguageCodeMKD,
  LanguageCodeMLG,
  LanguageCodeMLT,
  LanguageCodeMON,
  LanguageCodeMRI,
  LanguageCodeMSA,
  LanguageCodeMYA,
  LanguageCodeNAU,
  LanguageCodeNAV,
  LanguageCodeNBL,
  LanguageCodeNDE,
  LanguageCodeNDO,
  LanguageCodeNEP,
  LanguageCodeNLD,
  LanguageCodeNNO,
  LanguageCodeNOB,
  LanguageCodeNOR,
  LanguageCodeNYA,
  LanguageCodeOCI,
  LanguageCodeOJI,
  LanguageCodeORI,
  LanguageCodeORJ,
  LanguageCodeORM,
  LanguageCodeOSS,
  LanguageCodePAN,
  LanguageCodePLI,
  LanguageCodePOL,
  LanguageCodePOR,
  LanguageCodePUS,
  LanguageCodeQAA,
  LanguageCodeQPC,
  LanguageCodeQUE,
  LanguageCodeROH,
  LanguageCodeRON,
  LanguageCodeRUN,
  LanguageCodeRUS,
  LanguageCodeSAG,
  LanguageCodeSAN,
  LanguageCodeSIN,
  LanguageCodeSLK,
  LanguageCodeSLV,
  LanguageCodeSME,
  LanguageCodeSMO,
  LanguageCodeSNA,
  LanguageCodeSND,
  LanguageCodeSOM,
  LanguageCodeSOT,
  LanguageCodeSPA,
  LanguageCodeSQI,
  LanguageCodeSRB,
  LanguageCodeSRD,
  LanguageCodeSSW,
  LanguageCodeSUN,
  LanguageCodeSWA,
  LanguageCodeSWE,
  LanguageCodeTAH,
  LanguageCodeTAM,
  LanguageCodeTAT,
  LanguageCodeTEL,
  LanguageCodeTGK,
  LanguageCodeTGL,
  LanguageCodeTHA,
  LanguageCodeTIR,
  LanguageCodeTNG,
  LanguageCodeTON,
  LanguageCodeTSN,
  LanguageCodeTSO,
  LanguageCodeTUK,
  LanguageCodeTUR,
  LanguageCodeTWI,
  LanguageCodeUIG,
  LanguageCodeUKR,
  LanguageCodeURD,
  LanguageCodeUZB,
  LanguageCodeVEN,
  LanguageCodeVIE,
  LanguageCodeVOL,
  LanguageCodeWLN,
  LanguageCodeWOL,
  LanguageCodeXHO,
  LanguageCodeYID,
  LanguageCodeYOR,
  LanguageCodeZHA,
  LanguageCodeZHO,
  LanguageCodeZUL,
  LanguageCode'
  #-}

instance Prelude.FromText LanguageCode where
  parser = LanguageCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText LanguageCode where
  toText (LanguageCode' x) = x

instance Prelude.Hashable LanguageCode

instance Prelude.NFData LanguageCode

instance Prelude.ToByteString LanguageCode

instance Prelude.ToQuery LanguageCode

instance Prelude.ToHeader LanguageCode

instance Prelude.ToJSON LanguageCode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON LanguageCode where
  parseJSON = Prelude.parseJSONText "LanguageCode"
