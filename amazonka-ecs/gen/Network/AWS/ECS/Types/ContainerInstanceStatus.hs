{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.ContainerInstanceStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.ContainerInstanceStatus
  ( ContainerInstanceStatus
      ( ..,
        CISActive,
        CISDeregistering,
        CISDraining,
        CISRegistering,
        CISRegistrationFailed
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ContainerInstanceStatus
  = ContainerInstanceStatus'
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

pattern CISActive :: ContainerInstanceStatus
pattern CISActive = ContainerInstanceStatus' "ACTIVE"

pattern CISDeregistering :: ContainerInstanceStatus
pattern CISDeregistering = ContainerInstanceStatus' "DEREGISTERING"

pattern CISDraining :: ContainerInstanceStatus
pattern CISDraining = ContainerInstanceStatus' "DRAINING"

pattern CISRegistering :: ContainerInstanceStatus
pattern CISRegistering = ContainerInstanceStatus' "REGISTERING"

pattern CISRegistrationFailed :: ContainerInstanceStatus
pattern CISRegistrationFailed = ContainerInstanceStatus' "REGISTRATION_FAILED"

{-# COMPLETE
  CISActive,
  CISDeregistering,
  CISDraining,
  CISRegistering,
  CISRegistrationFailed,
  ContainerInstanceStatus'
  #-}

instance FromText ContainerInstanceStatus where
  parser = (ContainerInstanceStatus' . mk) <$> takeText

instance ToText ContainerInstanceStatus where
  toText (ContainerInstanceStatus' ci) = original ci

instance Hashable ContainerInstanceStatus

instance NFData ContainerInstanceStatus

instance ToByteString ContainerInstanceStatus

instance ToQuery ContainerInstanceStatus

instance ToHeader ContainerInstanceStatus

instance ToJSON ContainerInstanceStatus where
  toJSON = toJSONText
