{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaPackage.Types.Profile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types.Profile
  ( Profile
      ( ..,
        PHbbtv15,
        PNone
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Profile = Profile' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern PHbbtv15 :: Profile
pattern PHbbtv15 = Profile' "HBBTV_1_5"

pattern PNone :: Profile
pattern PNone = Profile' "NONE"

{-# COMPLETE
  PHbbtv15,
  PNone,
  Profile'
  #-}

instance FromText Profile where
  parser = (Profile' . mk) <$> takeText

instance ToText Profile where
  toText (Profile' ci) = original ci

instance Hashable Profile

instance NFData Profile

instance ToByteString Profile

instance ToQuery Profile

instance ToHeader Profile

instance ToJSON Profile where
  toJSON = toJSONText

instance FromJSON Profile where
  parseJSON = parseJSONText "Profile"
