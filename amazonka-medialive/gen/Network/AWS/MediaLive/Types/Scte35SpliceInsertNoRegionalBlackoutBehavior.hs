{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.Scte35SpliceInsertNoRegionalBlackoutBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Scte35SpliceInsertNoRegionalBlackoutBehavior
  ( Scte35SpliceInsertNoRegionalBlackoutBehavior
      ( ..,
        SSINRBBFollow,
        SSINRBBIgnore
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Scte35 Splice Insert No Regional Blackout Behavior
data Scte35SpliceInsertNoRegionalBlackoutBehavior
  = Scte35SpliceInsertNoRegionalBlackoutBehavior'
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

pattern SSINRBBFollow :: Scte35SpliceInsertNoRegionalBlackoutBehavior
pattern SSINRBBFollow = Scte35SpliceInsertNoRegionalBlackoutBehavior' "FOLLOW"

pattern SSINRBBIgnore :: Scte35SpliceInsertNoRegionalBlackoutBehavior
pattern SSINRBBIgnore = Scte35SpliceInsertNoRegionalBlackoutBehavior' "IGNORE"

{-# COMPLETE
  SSINRBBFollow,
  SSINRBBIgnore,
  Scte35SpliceInsertNoRegionalBlackoutBehavior'
  #-}

instance FromText Scte35SpliceInsertNoRegionalBlackoutBehavior where
  parser = (Scte35SpliceInsertNoRegionalBlackoutBehavior' . mk) <$> takeText

instance ToText Scte35SpliceInsertNoRegionalBlackoutBehavior where
  toText (Scte35SpliceInsertNoRegionalBlackoutBehavior' ci) = original ci

instance Hashable Scte35SpliceInsertNoRegionalBlackoutBehavior

instance NFData Scte35SpliceInsertNoRegionalBlackoutBehavior

instance ToByteString Scte35SpliceInsertNoRegionalBlackoutBehavior

instance ToQuery Scte35SpliceInsertNoRegionalBlackoutBehavior

instance ToHeader Scte35SpliceInsertNoRegionalBlackoutBehavior

instance ToJSON Scte35SpliceInsertNoRegionalBlackoutBehavior where
  toJSON = toJSONText

instance FromJSON Scte35SpliceInsertNoRegionalBlackoutBehavior where
  parseJSON = parseJSONText "Scte35SpliceInsertNoRegionalBlackoutBehavior"
