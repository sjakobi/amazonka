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
-- Module      : Network.AWS.CodeBuild.Types.BuildBatchPhaseType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.BuildBatchPhaseType
  ( BuildBatchPhaseType
      ( ..,
        BuildBatchPhaseTypeCOMBINEARTIFACTS,
        BuildBatchPhaseTypeDOWNLOADBATCHSPEC,
        BuildBatchPhaseTypeFAILED,
        BuildBatchPhaseTypeINPROGRESS,
        BuildBatchPhaseTypeSTOPPED,
        BuildBatchPhaseTypeSUBMITTED,
        BuildBatchPhaseTypeSUCCEEDED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BuildBatchPhaseType = BuildBatchPhaseType'
  { fromBuildBatchPhaseType ::
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

pattern BuildBatchPhaseTypeCOMBINEARTIFACTS :: BuildBatchPhaseType
pattern BuildBatchPhaseTypeCOMBINEARTIFACTS = BuildBatchPhaseType' "COMBINE_ARTIFACTS"

pattern BuildBatchPhaseTypeDOWNLOADBATCHSPEC :: BuildBatchPhaseType
pattern BuildBatchPhaseTypeDOWNLOADBATCHSPEC = BuildBatchPhaseType' "DOWNLOAD_BATCHSPEC"

pattern BuildBatchPhaseTypeFAILED :: BuildBatchPhaseType
pattern BuildBatchPhaseTypeFAILED = BuildBatchPhaseType' "FAILED"

pattern BuildBatchPhaseTypeINPROGRESS :: BuildBatchPhaseType
pattern BuildBatchPhaseTypeINPROGRESS = BuildBatchPhaseType' "IN_PROGRESS"

pattern BuildBatchPhaseTypeSTOPPED :: BuildBatchPhaseType
pattern BuildBatchPhaseTypeSTOPPED = BuildBatchPhaseType' "STOPPED"

pattern BuildBatchPhaseTypeSUBMITTED :: BuildBatchPhaseType
pattern BuildBatchPhaseTypeSUBMITTED = BuildBatchPhaseType' "SUBMITTED"

pattern BuildBatchPhaseTypeSUCCEEDED :: BuildBatchPhaseType
pattern BuildBatchPhaseTypeSUCCEEDED = BuildBatchPhaseType' "SUCCEEDED"

{-# COMPLETE
  BuildBatchPhaseTypeCOMBINEARTIFACTS,
  BuildBatchPhaseTypeDOWNLOADBATCHSPEC,
  BuildBatchPhaseTypeFAILED,
  BuildBatchPhaseTypeINPROGRESS,
  BuildBatchPhaseTypeSTOPPED,
  BuildBatchPhaseTypeSUBMITTED,
  BuildBatchPhaseTypeSUCCEEDED,
  BuildBatchPhaseType'
  #-}

instance Prelude.FromText BuildBatchPhaseType where
  parser = BuildBatchPhaseType' Prelude.<$> Prelude.takeText

instance Prelude.ToText BuildBatchPhaseType where
  toText (BuildBatchPhaseType' x) = x

instance Prelude.Hashable BuildBatchPhaseType

instance Prelude.NFData BuildBatchPhaseType

instance Prelude.ToByteString BuildBatchPhaseType

instance Prelude.ToQuery BuildBatchPhaseType

instance Prelude.ToHeader BuildBatchPhaseType

instance Prelude.FromJSON BuildBatchPhaseType where
  parseJSON = Prelude.parseJSONText "BuildBatchPhaseType"
