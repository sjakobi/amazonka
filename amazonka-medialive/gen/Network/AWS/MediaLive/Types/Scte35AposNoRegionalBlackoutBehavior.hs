{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.Scte35AposNoRegionalBlackoutBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Scte35AposNoRegionalBlackoutBehavior
  ( Scte35AposNoRegionalBlackoutBehavior
      ( ..,
        SANRBBFollow,
        SANRBBIgnore
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Scte35 Apos No Regional Blackout Behavior
data Scte35AposNoRegionalBlackoutBehavior
  = Scte35AposNoRegionalBlackoutBehavior'
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

pattern SANRBBFollow :: Scte35AposNoRegionalBlackoutBehavior
pattern SANRBBFollow = Scte35AposNoRegionalBlackoutBehavior' "FOLLOW"

pattern SANRBBIgnore :: Scte35AposNoRegionalBlackoutBehavior
pattern SANRBBIgnore = Scte35AposNoRegionalBlackoutBehavior' "IGNORE"

{-# COMPLETE
  SANRBBFollow,
  SANRBBIgnore,
  Scte35AposNoRegionalBlackoutBehavior'
  #-}

instance FromText Scte35AposNoRegionalBlackoutBehavior where
  parser = (Scte35AposNoRegionalBlackoutBehavior' . mk) <$> takeText

instance ToText Scte35AposNoRegionalBlackoutBehavior where
  toText (Scte35AposNoRegionalBlackoutBehavior' ci) = original ci

instance Hashable Scte35AposNoRegionalBlackoutBehavior

instance NFData Scte35AposNoRegionalBlackoutBehavior

instance ToByteString Scte35AposNoRegionalBlackoutBehavior

instance ToQuery Scte35AposNoRegionalBlackoutBehavior

instance ToHeader Scte35AposNoRegionalBlackoutBehavior

instance ToJSON Scte35AposNoRegionalBlackoutBehavior where
  toJSON = toJSONText

instance FromJSON Scte35AposNoRegionalBlackoutBehavior where
  parseJSON = parseJSONText "Scte35AposNoRegionalBlackoutBehavior"
