{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.PingStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.PingStatus
  ( PingStatus
      ( ..,
        ConnectionLost,
        Inactive,
        Online
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PingStatus = PingStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ConnectionLost :: PingStatus
pattern ConnectionLost = PingStatus' "ConnectionLost"

pattern Inactive :: PingStatus
pattern Inactive = PingStatus' "Inactive"

pattern Online :: PingStatus
pattern Online = PingStatus' "Online"

{-# COMPLETE
  ConnectionLost,
  Inactive,
  Online,
  PingStatus'
  #-}

instance FromText PingStatus where
  parser = (PingStatus' . mk) <$> takeText

instance ToText PingStatus where
  toText (PingStatus' ci) = original ci

instance Hashable PingStatus

instance NFData PingStatus

instance ToByteString PingStatus

instance ToQuery PingStatus

instance ToHeader PingStatus

instance FromJSON PingStatus where
  parseJSON = parseJSONText "PingStatus"
