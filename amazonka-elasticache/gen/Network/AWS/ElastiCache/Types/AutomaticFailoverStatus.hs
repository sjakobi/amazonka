{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.AutomaticFailoverStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.AutomaticFailoverStatus
  ( AutomaticFailoverStatus
      ( ..,
        Disabled,
        Disabling,
        Enabled,
        Enabling
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AutomaticFailoverStatus
  = AutomaticFailoverStatus'
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

pattern Disabled :: AutomaticFailoverStatus
pattern Disabled = AutomaticFailoverStatus' "disabled"

pattern Disabling :: AutomaticFailoverStatus
pattern Disabling = AutomaticFailoverStatus' "disabling"

pattern Enabled :: AutomaticFailoverStatus
pattern Enabled = AutomaticFailoverStatus' "enabled"

pattern Enabling :: AutomaticFailoverStatus
pattern Enabling = AutomaticFailoverStatus' "enabling"

{-# COMPLETE
  Disabled,
  Disabling,
  Enabled,
  Enabling,
  AutomaticFailoverStatus'
  #-}

instance FromText AutomaticFailoverStatus where
  parser = (AutomaticFailoverStatus' . mk) <$> takeText

instance ToText AutomaticFailoverStatus where
  toText (AutomaticFailoverStatus' ci) = original ci

instance Hashable AutomaticFailoverStatus

instance NFData AutomaticFailoverStatus

instance ToByteString AutomaticFailoverStatus

instance ToQuery AutomaticFailoverStatus

instance ToHeader AutomaticFailoverStatus

instance FromXML AutomaticFailoverStatus where
  parseXML = parseXMLText "AutomaticFailoverStatus"
