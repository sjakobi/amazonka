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
-- Module      : Network.AWS.CodeBuild.Types.BuildPhaseType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.BuildPhaseType
  ( BuildPhaseType
      ( ..,
        BuildPhaseTypeBUILD,
        BuildPhaseTypeCOMPLETED,
        BuildPhaseTypeDOWNLOADSOURCE,
        BuildPhaseTypeFINALIZING,
        BuildPhaseTypeINSTALL,
        BuildPhaseTypePOSTBUILD,
        BuildPhaseTypePREBUILD,
        BuildPhaseTypePROVISIONING,
        BuildPhaseTypeQUEUED,
        BuildPhaseTypeSUBMITTED,
        BuildPhaseTypeUPLOADARTIFACTS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BuildPhaseType = BuildPhaseType'
  { fromBuildPhaseType ::
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

pattern BuildPhaseTypeBUILD :: BuildPhaseType
pattern BuildPhaseTypeBUILD = BuildPhaseType' "BUILD"

pattern BuildPhaseTypeCOMPLETED :: BuildPhaseType
pattern BuildPhaseTypeCOMPLETED = BuildPhaseType' "COMPLETED"

pattern BuildPhaseTypeDOWNLOADSOURCE :: BuildPhaseType
pattern BuildPhaseTypeDOWNLOADSOURCE = BuildPhaseType' "DOWNLOAD_SOURCE"

pattern BuildPhaseTypeFINALIZING :: BuildPhaseType
pattern BuildPhaseTypeFINALIZING = BuildPhaseType' "FINALIZING"

pattern BuildPhaseTypeINSTALL :: BuildPhaseType
pattern BuildPhaseTypeINSTALL = BuildPhaseType' "INSTALL"

pattern BuildPhaseTypePOSTBUILD :: BuildPhaseType
pattern BuildPhaseTypePOSTBUILD = BuildPhaseType' "POST_BUILD"

pattern BuildPhaseTypePREBUILD :: BuildPhaseType
pattern BuildPhaseTypePREBUILD = BuildPhaseType' "PRE_BUILD"

pattern BuildPhaseTypePROVISIONING :: BuildPhaseType
pattern BuildPhaseTypePROVISIONING = BuildPhaseType' "PROVISIONING"

pattern BuildPhaseTypeQUEUED :: BuildPhaseType
pattern BuildPhaseTypeQUEUED = BuildPhaseType' "QUEUED"

pattern BuildPhaseTypeSUBMITTED :: BuildPhaseType
pattern BuildPhaseTypeSUBMITTED = BuildPhaseType' "SUBMITTED"

pattern BuildPhaseTypeUPLOADARTIFACTS :: BuildPhaseType
pattern BuildPhaseTypeUPLOADARTIFACTS = BuildPhaseType' "UPLOAD_ARTIFACTS"

{-# COMPLETE
  BuildPhaseTypeBUILD,
  BuildPhaseTypeCOMPLETED,
  BuildPhaseTypeDOWNLOADSOURCE,
  BuildPhaseTypeFINALIZING,
  BuildPhaseTypeINSTALL,
  BuildPhaseTypePOSTBUILD,
  BuildPhaseTypePREBUILD,
  BuildPhaseTypePROVISIONING,
  BuildPhaseTypeQUEUED,
  BuildPhaseTypeSUBMITTED,
  BuildPhaseTypeUPLOADARTIFACTS,
  BuildPhaseType'
  #-}

instance Prelude.FromText BuildPhaseType where
  parser = BuildPhaseType' Prelude.<$> Prelude.takeText

instance Prelude.ToText BuildPhaseType where
  toText (BuildPhaseType' x) = x

instance Prelude.Hashable BuildPhaseType

instance Prelude.NFData BuildPhaseType

instance Prelude.ToByteString BuildPhaseType

instance Prelude.ToQuery BuildPhaseType

instance Prelude.ToHeader BuildPhaseType

instance Prelude.FromJSON BuildPhaseType where
  parseJSON = Prelude.parseJSONText "BuildPhaseType"
