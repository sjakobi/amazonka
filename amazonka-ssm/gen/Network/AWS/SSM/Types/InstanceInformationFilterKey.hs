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
-- Module      : Network.AWS.SSM.Types.InstanceInformationFilterKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.InstanceInformationFilterKey
  ( InstanceInformationFilterKey
      ( ..,
        InstanceInformationFilterKeyActivationIds,
        InstanceInformationFilterKeyAgentVersion,
        InstanceInformationFilterKeyAssociationStatus,
        InstanceInformationFilterKeyIamRole,
        InstanceInformationFilterKeyInstanceIds,
        InstanceInformationFilterKeyPingStatus,
        InstanceInformationFilterKeyPlatformTypes,
        InstanceInformationFilterKeyResourceType
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InstanceInformationFilterKey = InstanceInformationFilterKey'
  { fromInstanceInformationFilterKey ::
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

pattern InstanceInformationFilterKeyActivationIds :: InstanceInformationFilterKey
pattern InstanceInformationFilterKeyActivationIds = InstanceInformationFilterKey' "ActivationIds"

pattern InstanceInformationFilterKeyAgentVersion :: InstanceInformationFilterKey
pattern InstanceInformationFilterKeyAgentVersion = InstanceInformationFilterKey' "AgentVersion"

pattern InstanceInformationFilterKeyAssociationStatus :: InstanceInformationFilterKey
pattern InstanceInformationFilterKeyAssociationStatus = InstanceInformationFilterKey' "AssociationStatus"

pattern InstanceInformationFilterKeyIamRole :: InstanceInformationFilterKey
pattern InstanceInformationFilterKeyIamRole = InstanceInformationFilterKey' "IamRole"

pattern InstanceInformationFilterKeyInstanceIds :: InstanceInformationFilterKey
pattern InstanceInformationFilterKeyInstanceIds = InstanceInformationFilterKey' "InstanceIds"

pattern InstanceInformationFilterKeyPingStatus :: InstanceInformationFilterKey
pattern InstanceInformationFilterKeyPingStatus = InstanceInformationFilterKey' "PingStatus"

pattern InstanceInformationFilterKeyPlatformTypes :: InstanceInformationFilterKey
pattern InstanceInformationFilterKeyPlatformTypes = InstanceInformationFilterKey' "PlatformTypes"

pattern InstanceInformationFilterKeyResourceType :: InstanceInformationFilterKey
pattern InstanceInformationFilterKeyResourceType = InstanceInformationFilterKey' "ResourceType"

{-# COMPLETE
  InstanceInformationFilterKeyActivationIds,
  InstanceInformationFilterKeyAgentVersion,
  InstanceInformationFilterKeyAssociationStatus,
  InstanceInformationFilterKeyIamRole,
  InstanceInformationFilterKeyInstanceIds,
  InstanceInformationFilterKeyPingStatus,
  InstanceInformationFilterKeyPlatformTypes,
  InstanceInformationFilterKeyResourceType,
  InstanceInformationFilterKey'
  #-}

instance Prelude.FromText InstanceInformationFilterKey where
  parser = InstanceInformationFilterKey' Prelude.<$> Prelude.takeText

instance Prelude.ToText InstanceInformationFilterKey where
  toText (InstanceInformationFilterKey' x) = x

instance Prelude.Hashable InstanceInformationFilterKey

instance Prelude.NFData InstanceInformationFilterKey

instance Prelude.ToByteString InstanceInformationFilterKey

instance Prelude.ToQuery InstanceInformationFilterKey

instance Prelude.ToHeader InstanceInformationFilterKey

instance Prelude.ToJSON InstanceInformationFilterKey where
  toJSON = Prelude.toJSONText
