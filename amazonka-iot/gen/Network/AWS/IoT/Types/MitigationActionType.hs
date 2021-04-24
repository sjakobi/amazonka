{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        AddThingsToThingGroup,
        EnableIotLogging,
        PublishFindingToSNS,
        ReplaceDefaultPolicyVersion,
        UpdateCaCertificate,
        UpdateDeviceCertificate
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MitigationActionType
  = MitigationActionType'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AddThingsToThingGroup :: MitigationActionType
pattern AddThingsToThingGroup = MitigationActionType' "ADD_THINGS_TO_THING_GROUP"

pattern EnableIotLogging :: MitigationActionType
pattern EnableIotLogging = MitigationActionType' "ENABLE_IOT_LOGGING"

pattern PublishFindingToSNS :: MitigationActionType
pattern PublishFindingToSNS = MitigationActionType' "PUBLISH_FINDING_TO_SNS"

pattern ReplaceDefaultPolicyVersion :: MitigationActionType
pattern ReplaceDefaultPolicyVersion = MitigationActionType' "REPLACE_DEFAULT_POLICY_VERSION"

pattern UpdateCaCertificate :: MitigationActionType
pattern UpdateCaCertificate = MitigationActionType' "UPDATE_CA_CERTIFICATE"

pattern UpdateDeviceCertificate :: MitigationActionType
pattern UpdateDeviceCertificate = MitigationActionType' "UPDATE_DEVICE_CERTIFICATE"

{-# COMPLETE
  AddThingsToThingGroup,
  EnableIotLogging,
  PublishFindingToSNS,
  ReplaceDefaultPolicyVersion,
  UpdateCaCertificate,
  UpdateDeviceCertificate,
  MitigationActionType'
  #-}

instance FromText MitigationActionType where
  parser = (MitigationActionType' . mk) <$> takeText

instance ToText MitigationActionType where
  toText (MitigationActionType' ci) = original ci

instance Hashable MitigationActionType

instance NFData MitigationActionType

instance ToByteString MitigationActionType

instance ToQuery MitigationActionType

instance ToHeader MitigationActionType

instance ToJSON MitigationActionType where
  toJSON = toJSONText

instance FromJSON MitigationActionType where
  parseJSON = parseJSONText "MitigationActionType"
