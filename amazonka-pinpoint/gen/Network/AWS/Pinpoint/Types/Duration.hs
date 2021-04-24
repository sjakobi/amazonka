{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.Duration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.Duration
  ( Duration
      ( ..,
        Day14,
        Day30,
        Day7,
        Hr24
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Duration = Duration' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Day14 :: Duration
pattern Day14 = Duration' "DAY_14"

pattern Day30 :: Duration
pattern Day30 = Duration' "DAY_30"

pattern Day7 :: Duration
pattern Day7 = Duration' "DAY_7"

pattern Hr24 :: Duration
pattern Hr24 = Duration' "HR_24"

{-# COMPLETE
  Day14,
  Day30,
  Day7,
  Hr24,
  Duration'
  #-}

instance FromText Duration where
  parser = (Duration' . mk) <$> takeText

instance ToText Duration where
  toText (Duration' ci) = original ci

instance Hashable Duration

instance NFData Duration

instance ToByteString Duration

instance ToQuery Duration

instance ToHeader Duration

instance ToJSON Duration where
  toJSON = toJSONText

instance FromJSON Duration where
  parseJSON = parseJSONText "Duration"
