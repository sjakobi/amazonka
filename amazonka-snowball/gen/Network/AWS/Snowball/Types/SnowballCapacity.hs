{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Snowball.Types.SnowballCapacity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Snowball.Types.SnowballCapacity
  ( SnowballCapacity
      ( ..,
        NoPreference,
        T100,
        T42,
        T50,
        T8,
        T80,
        T98
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SnowballCapacity = SnowballCapacity' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern NoPreference :: SnowballCapacity
pattern NoPreference = SnowballCapacity' "NoPreference"

pattern T100 :: SnowballCapacity
pattern T100 = SnowballCapacity' "T100"

pattern T42 :: SnowballCapacity
pattern T42 = SnowballCapacity' "T42"

pattern T50 :: SnowballCapacity
pattern T50 = SnowballCapacity' "T50"

pattern T8 :: SnowballCapacity
pattern T8 = SnowballCapacity' "T8"

pattern T80 :: SnowballCapacity
pattern T80 = SnowballCapacity' "T80"

pattern T98 :: SnowballCapacity
pattern T98 = SnowballCapacity' "T98"

{-# COMPLETE
  NoPreference,
  T100,
  T42,
  T50,
  T8,
  T80,
  T98,
  SnowballCapacity'
  #-}

instance FromText SnowballCapacity where
  parser = (SnowballCapacity' . mk) <$> takeText

instance ToText SnowballCapacity where
  toText (SnowballCapacity' ci) = original ci

instance Hashable SnowballCapacity

instance NFData SnowballCapacity

instance ToByteString SnowballCapacity

instance ToQuery SnowballCapacity

instance ToHeader SnowballCapacity

instance ToJSON SnowballCapacity where
  toJSON = toJSONText

instance FromJSON SnowballCapacity where
  parseJSON = parseJSONText "SnowballCapacity"
