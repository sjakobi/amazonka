{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H265Profile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H265Profile
  ( H265Profile
      ( ..,
        HPMain,
        HPMain10BIT
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | H265 Profile
data H265Profile = H265Profile' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HPMain :: H265Profile
pattern HPMain = H265Profile' "MAIN"

pattern HPMain10BIT :: H265Profile
pattern HPMain10BIT = H265Profile' "MAIN_10BIT"

{-# COMPLETE
  HPMain,
  HPMain10BIT,
  H265Profile'
  #-}

instance FromText H265Profile where
  parser = (H265Profile' . mk) <$> takeText

instance ToText H265Profile where
  toText (H265Profile' ci) = original ci

instance Hashable H265Profile

instance NFData H265Profile

instance ToByteString H265Profile

instance ToQuery H265Profile

instance ToHeader H265Profile

instance ToJSON H265Profile where
  toJSON = toJSONText

instance FromJSON H265Profile where
  parseJSON = parseJSONText "H265Profile"
