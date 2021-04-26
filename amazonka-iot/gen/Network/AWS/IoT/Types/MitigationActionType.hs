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
-- Module      : Network.AWS.IoT.Types.MitigationActionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.MitigationActionType
  ( MitigationActionType
      ( ..,
        MitigationActionTypeADDTHINGSTOTHINGGROUP,
        MitigationActionTypeENABLEIOTLOGGING,
        MitigationActionTypePUBLISHFINDINGTOSNS,
        MitigationActionTypeREPLACEDEFAULTPOLICYVERSION,
        MitigationActionTypeUPDATECACERTIFICATE,
        MitigationActionTypeUPDATEDEVICECERTIFICATE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MitigationActionType = MitigationActionType'
  { fromMitigationActionType ::
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

pattern MitigationActionTypeADDTHINGSTOTHINGGROUP :: MitigationActionType
pattern MitigationActionTypeADDTHINGSTOTHINGGROUP = MitigationActionType' "ADD_THINGS_TO_THING_GROUP"

pattern MitigationActionTypeENABLEIOTLOGGING :: MitigationActionType
pattern MitigationActionTypeENABLEIOTLOGGING = MitigationActionType' "ENABLE_IOT_LOGGING"

pattern MitigationActionTypePUBLISHFINDINGTOSNS :: MitigationActionType
pattern MitigationActionTypePUBLISHFINDINGTOSNS = MitigationActionType' "PUBLISH_FINDING_TO_SNS"

pattern MitigationActionTypeREPLACEDEFAULTPOLICYVERSION :: MitigationActionType
pattern MitigationActionTypeREPLACEDEFAULTPOLICYVERSION = MitigationActionType' "REPLACE_DEFAULT_POLICY_VERSION"

pattern MitigationActionTypeUPDATECACERTIFICATE :: MitigationActionType
pattern MitigationActionTypeUPDATECACERTIFICATE = MitigationActionType' "UPDATE_CA_CERTIFICATE"

pattern MitigationActionTypeUPDATEDEVICECERTIFICATE :: MitigationActionType
pattern MitigationActionTypeUPDATEDEVICECERTIFICATE = MitigationActionType' "UPDATE_DEVICE_CERTIFICATE"

{-# COMPLETE
  MitigationActionTypeADDTHINGSTOTHINGGROUP,
  MitigationActionTypeENABLEIOTLOGGING,
  MitigationActionTypePUBLISHFINDINGTOSNS,
  MitigationActionTypeREPLACEDEFAULTPOLICYVERSION,
  MitigationActionTypeUPDATECACERTIFICATE,
  MitigationActionTypeUPDATEDEVICECERTIFICATE,
  MitigationActionType'
  #-}

instance Prelude.FromText MitigationActionType where
  parser = MitigationActionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText MitigationActionType where
  toText (MitigationActionType' x) = x

instance Prelude.Hashable MitigationActionType

instance Prelude.NFData MitigationActionType

instance Prelude.ToByteString MitigationActionType

instance Prelude.ToQuery MitigationActionType

instance Prelude.ToHeader MitigationActionType

instance Prelude.ToJSON MitigationActionType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MitigationActionType where
  parseJSON = Prelude.parseJSONText "MitigationActionType"
