{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.M2tsArib
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M2tsArib
  ( M2tsArib
      ( ..,
        MADisabled,
        MAEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | M2ts Arib
data M2tsArib = M2tsArib' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MADisabled :: M2tsArib
pattern MADisabled = M2tsArib' "DISABLED"

pattern MAEnabled :: M2tsArib
pattern MAEnabled = M2tsArib' "ENABLED"

{-# COMPLETE
  MADisabled,
  MAEnabled,
  M2tsArib'
  #-}

instance FromText M2tsArib where
  parser = (M2tsArib' . mk) <$> takeText

instance ToText M2tsArib where
  toText (M2tsArib' ci) = original ci

instance Hashable M2tsArib

instance NFData M2tsArib

instance ToByteString M2tsArib

instance ToQuery M2tsArib

instance ToHeader M2tsArib

instance ToJSON M2tsArib where
  toJSON = toJSONText

instance FromJSON M2tsArib where
  parseJSON = parseJSONText "M2tsArib"
