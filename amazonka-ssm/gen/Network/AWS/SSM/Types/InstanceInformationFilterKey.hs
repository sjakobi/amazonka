{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.InstanceInformationFilterKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.InstanceInformationFilterKey
  ( InstanceInformationFilterKey
      ( ..,
        IIFKActivationIds,
        IIFKAgentVersion,
        IIFKAssociationStatus,
        IIFKIAMRole,
        IIFKInstanceIds,
        IIFKPingStatus,
        IIFKPlatformTypes,
        IIFKResourceType
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InstanceInformationFilterKey
  = InstanceInformationFilterKey'
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

pattern IIFKActivationIds :: InstanceInformationFilterKey
pattern IIFKActivationIds = InstanceInformationFilterKey' "ActivationIds"

pattern IIFKAgentVersion :: InstanceInformationFilterKey
pattern IIFKAgentVersion = InstanceInformationFilterKey' "AgentVersion"

pattern IIFKAssociationStatus :: InstanceInformationFilterKey
pattern IIFKAssociationStatus = InstanceInformationFilterKey' "AssociationStatus"

pattern IIFKIAMRole :: InstanceInformationFilterKey
pattern IIFKIAMRole = InstanceInformationFilterKey' "IamRole"

pattern IIFKInstanceIds :: InstanceInformationFilterKey
pattern IIFKInstanceIds = InstanceInformationFilterKey' "InstanceIds"

pattern IIFKPingStatus :: InstanceInformationFilterKey
pattern IIFKPingStatus = InstanceInformationFilterKey' "PingStatus"

pattern IIFKPlatformTypes :: InstanceInformationFilterKey
pattern IIFKPlatformTypes = InstanceInformationFilterKey' "PlatformTypes"

pattern IIFKResourceType :: InstanceInformationFilterKey
pattern IIFKResourceType = InstanceInformationFilterKey' "ResourceType"

{-# COMPLETE
  IIFKActivationIds,
  IIFKAgentVersion,
  IIFKAssociationStatus,
  IIFKIAMRole,
  IIFKInstanceIds,
  IIFKPingStatus,
  IIFKPlatformTypes,
  IIFKResourceType,
  InstanceInformationFilterKey'
  #-}

instance FromText InstanceInformationFilterKey where
  parser = (InstanceInformationFilterKey' . mk) <$> takeText

instance ToText InstanceInformationFilterKey where
  toText (InstanceInformationFilterKey' ci) = original ci

instance Hashable InstanceInformationFilterKey

instance NFData InstanceInformationFilterKey

instance ToByteString InstanceInformationFilterKey

instance ToQuery InstanceInformationFilterKey

instance ToHeader InstanceInformationFilterKey

instance ToJSON InstanceInformationFilterKey where
  toJSON = toJSONText
