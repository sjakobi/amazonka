{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.MultiAZStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.MultiAZStatus
  ( MultiAZStatus
      ( ..,
        MAZSDisabled,
        MAZSEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MultiAZStatus = MultiAZStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MAZSDisabled :: MultiAZStatus
pattern MAZSDisabled = MultiAZStatus' "disabled"

pattern MAZSEnabled :: MultiAZStatus
pattern MAZSEnabled = MultiAZStatus' "enabled"

{-# COMPLETE
  MAZSDisabled,
  MAZSEnabled,
  MultiAZStatus'
  #-}

instance FromText MultiAZStatus where
  parser = (MultiAZStatus' . mk) <$> takeText

instance ToText MultiAZStatus where
  toText (MultiAZStatus' ci) = original ci

instance Hashable MultiAZStatus

instance NFData MultiAZStatus

instance ToByteString MultiAZStatus

instance ToQuery MultiAZStatus

instance ToHeader MultiAZStatus

instance FromXML MultiAZStatus where
  parseXML = parseXMLText "MultiAZStatus"
