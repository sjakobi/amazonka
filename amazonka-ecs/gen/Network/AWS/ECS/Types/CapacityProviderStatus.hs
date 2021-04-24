{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.CapacityProviderStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.CapacityProviderStatus
  ( CapacityProviderStatus
      ( ..,
        Active,
        Inactive
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CapacityProviderStatus
  = CapacityProviderStatus'
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

pattern Active :: CapacityProviderStatus
pattern Active = CapacityProviderStatus' "ACTIVE"

pattern Inactive :: CapacityProviderStatus
pattern Inactive = CapacityProviderStatus' "INACTIVE"

{-# COMPLETE
  Active,
  Inactive,
  CapacityProviderStatus'
  #-}

instance FromText CapacityProviderStatus where
  parser = (CapacityProviderStatus' . mk) <$> takeText

instance ToText CapacityProviderStatus where
  toText (CapacityProviderStatus' ci) = original ci

instance Hashable CapacityProviderStatus

instance NFData CapacityProviderStatus

instance ToByteString CapacityProviderStatus

instance ToQuery CapacityProviderStatus

instance ToHeader CapacityProviderStatus

instance FromJSON CapacityProviderStatus where
  parseJSON = parseJSONText "CapacityProviderStatus"
