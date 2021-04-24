{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.M2tsPcrControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M2tsPcrControl
  ( M2tsPcrControl
      ( ..,
        ConfiguredPcrPeriod,
        PcrEveryPesPacket
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | M2ts Pcr Control
data M2tsPcrControl = M2tsPcrControl' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ConfiguredPcrPeriod :: M2tsPcrControl
pattern ConfiguredPcrPeriod = M2tsPcrControl' "CONFIGURED_PCR_PERIOD"

pattern PcrEveryPesPacket :: M2tsPcrControl
pattern PcrEveryPesPacket = M2tsPcrControl' "PCR_EVERY_PES_PACKET"

{-# COMPLETE
  ConfiguredPcrPeriod,
  PcrEveryPesPacket,
  M2tsPcrControl'
  #-}

instance FromText M2tsPcrControl where
  parser = (M2tsPcrControl' . mk) <$> takeText

instance ToText M2tsPcrControl where
  toText (M2tsPcrControl' ci) = original ci

instance Hashable M2tsPcrControl

instance NFData M2tsPcrControl

instance ToByteString M2tsPcrControl

instance ToQuery M2tsPcrControl

instance ToHeader M2tsPcrControl

instance ToJSON M2tsPcrControl where
  toJSON = toJSONText

instance FromJSON M2tsPcrControl where
  parseJSON = parseJSONText "M2tsPcrControl"
