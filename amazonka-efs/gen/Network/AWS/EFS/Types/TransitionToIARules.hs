{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EFS.Types.TransitionToIARules
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EFS.Types.TransitionToIARules
  ( TransitionToIARules
      ( ..,
        After14Days,
        After30Days,
        After60Days,
        After7Days,
        After90Days
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TransitionToIARules
  = TransitionToIARules'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern After14Days :: TransitionToIARules
pattern After14Days = TransitionToIARules' "AFTER_14_DAYS"

pattern After30Days :: TransitionToIARules
pattern After30Days = TransitionToIARules' "AFTER_30_DAYS"

pattern After60Days :: TransitionToIARules
pattern After60Days = TransitionToIARules' "AFTER_60_DAYS"

pattern After7Days :: TransitionToIARules
pattern After7Days = TransitionToIARules' "AFTER_7_DAYS"

pattern After90Days :: TransitionToIARules
pattern After90Days = TransitionToIARules' "AFTER_90_DAYS"

{-# COMPLETE
  After14Days,
  After30Days,
  After60Days,
  After7Days,
  After90Days,
  TransitionToIARules'
  #-}

instance FromText TransitionToIARules where
  parser = (TransitionToIARules' . mk) <$> takeText

instance ToText TransitionToIARules where
  toText (TransitionToIARules' ci) = original ci

instance Hashable TransitionToIARules

instance NFData TransitionToIARules

instance ToByteString TransitionToIARules

instance ToQuery TransitionToIARules

instance ToHeader TransitionToIARules

instance ToJSON TransitionToIARules where
  toJSON = toJSONText

instance FromJSON TransitionToIARules where
  parseJSON = parseJSONText "TransitionToIARules"
