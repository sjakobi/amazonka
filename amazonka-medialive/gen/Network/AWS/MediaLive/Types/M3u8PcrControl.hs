{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.M3u8PcrControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M3u8PcrControl
  ( M3u8PcrControl
      ( ..,
        MPCConfiguredPcrPeriod,
        MPCPcrEveryPesPacket
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | M3u8 Pcr Control
data M3u8PcrControl = M3u8PcrControl' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MPCConfiguredPcrPeriod :: M3u8PcrControl
pattern MPCConfiguredPcrPeriod = M3u8PcrControl' "CONFIGURED_PCR_PERIOD"

pattern MPCPcrEveryPesPacket :: M3u8PcrControl
pattern MPCPcrEveryPesPacket = M3u8PcrControl' "PCR_EVERY_PES_PACKET"

{-# COMPLETE
  MPCConfiguredPcrPeriod,
  MPCPcrEveryPesPacket,
  M3u8PcrControl'
  #-}

instance FromText M3u8PcrControl where
  parser = (M3u8PcrControl' . mk) <$> takeText

instance ToText M3u8PcrControl where
  toText (M3u8PcrControl' ci) = original ci

instance Hashable M3u8PcrControl

instance NFData M3u8PcrControl

instance ToByteString M3u8PcrControl

instance ToQuery M3u8PcrControl

instance ToHeader M3u8PcrControl

instance ToJSON M3u8PcrControl where
  toJSON = toJSONText

instance FromJSON M3u8PcrControl where
  parseJSON = parseJSONText "M3u8PcrControl"
