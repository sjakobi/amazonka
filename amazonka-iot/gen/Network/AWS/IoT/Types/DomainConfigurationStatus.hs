{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.DomainConfigurationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.DomainConfigurationStatus
  ( DomainConfigurationStatus
      ( ..,
        Disabled,
        Enabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DomainConfigurationStatus
  = DomainConfigurationStatus'
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

pattern Disabled :: DomainConfigurationStatus
pattern Disabled = DomainConfigurationStatus' "DISABLED"

pattern Enabled :: DomainConfigurationStatus
pattern Enabled = DomainConfigurationStatus' "ENABLED"

{-# COMPLETE
  Disabled,
  Enabled,
  DomainConfigurationStatus'
  #-}

instance FromText DomainConfigurationStatus where
  parser = (DomainConfigurationStatus' . mk) <$> takeText

instance ToText DomainConfigurationStatus where
  toText (DomainConfigurationStatus' ci) = original ci

instance Hashable DomainConfigurationStatus

instance NFData DomainConfigurationStatus

instance ToByteString DomainConfigurationStatus

instance ToQuery DomainConfigurationStatus

instance ToHeader DomainConfigurationStatus

instance ToJSON DomainConfigurationStatus where
  toJSON = toJSONText

instance FromJSON DomainConfigurationStatus where
  parseJSON = parseJSONText "DomainConfigurationStatus"
