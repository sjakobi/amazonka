{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.M2tsScte35Control
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M2tsScte35Control
  ( M2tsScte35Control
      ( ..,
        MSCNone,
        MSCPassthrough
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | M2ts Scte35 Control
data M2tsScte35Control = M2tsScte35Control' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MSCNone :: M2tsScte35Control
pattern MSCNone = M2tsScte35Control' "NONE"

pattern MSCPassthrough :: M2tsScte35Control
pattern MSCPassthrough = M2tsScte35Control' "PASSTHROUGH"

{-# COMPLETE
  MSCNone,
  MSCPassthrough,
  M2tsScte35Control'
  #-}

instance FromText M2tsScte35Control where
  parser = (M2tsScte35Control' . mk) <$> takeText

instance ToText M2tsScte35Control where
  toText (M2tsScte35Control' ci) = original ci

instance Hashable M2tsScte35Control

instance NFData M2tsScte35Control

instance ToByteString M2tsScte35Control

instance ToQuery M2tsScte35Control

instance ToHeader M2tsScte35Control

instance ToJSON M2tsScte35Control where
  toJSON = toJSONText

instance FromJSON M2tsScte35Control where
  parseJSON = parseJSONText "M2tsScte35Control"
