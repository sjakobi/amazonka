{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.DayOfWeek
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.DayOfWeek
  ( DayOfWeek
      ( ..,
        Fri,
        Mon,
        Sat,
        Sun,
        Thu,
        Tue,
        Wed
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DayOfWeek = DayOfWeek' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Fri :: DayOfWeek
pattern Fri = DayOfWeek' "FRI"

pattern Mon :: DayOfWeek
pattern Mon = DayOfWeek' "MON"

pattern Sat :: DayOfWeek
pattern Sat = DayOfWeek' "SAT"

pattern Sun :: DayOfWeek
pattern Sun = DayOfWeek' "SUN"

pattern Thu :: DayOfWeek
pattern Thu = DayOfWeek' "THU"

pattern Tue :: DayOfWeek
pattern Tue = DayOfWeek' "TUE"

pattern Wed :: DayOfWeek
pattern Wed = DayOfWeek' "WED"

{-# COMPLETE
  Fri,
  Mon,
  Sat,
  Sun,
  Thu,
  Tue,
  Wed,
  DayOfWeek'
  #-}

instance FromText DayOfWeek where
  parser = (DayOfWeek' . mk) <$> takeText

instance ToText DayOfWeek where
  toText (DayOfWeek' ci) = original ci

instance Hashable DayOfWeek

instance NFData DayOfWeek

instance ToByteString DayOfWeek

instance ToQuery DayOfWeek

instance ToHeader DayOfWeek

instance ToJSON DayOfWeek where
  toJSON = toJSONText

instance FromJSON DayOfWeek where
  parseJSON = parseJSONText "DayOfWeek"
