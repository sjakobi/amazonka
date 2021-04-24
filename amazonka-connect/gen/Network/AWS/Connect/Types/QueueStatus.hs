{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.QueueStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.QueueStatus
  ( QueueStatus
      ( ..,
        Disabled,
        Enabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data QueueStatus = QueueStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Disabled :: QueueStatus
pattern Disabled = QueueStatus' "DISABLED"

pattern Enabled :: QueueStatus
pattern Enabled = QueueStatus' "ENABLED"

{-# COMPLETE
  Disabled,
  Enabled,
  QueueStatus'
  #-}

instance FromText QueueStatus where
  parser = (QueueStatus' . mk) <$> takeText

instance ToText QueueStatus where
  toText (QueueStatus' ci) = original ci

instance Hashable QueueStatus

instance NFData QueueStatus

instance ToByteString QueueStatus

instance ToQuery QueueStatus

instance ToHeader QueueStatus

instance ToJSON QueueStatus where
  toJSON = toJSONText

instance FromJSON QueueStatus where
  parseJSON = parseJSONText "QueueStatus"
