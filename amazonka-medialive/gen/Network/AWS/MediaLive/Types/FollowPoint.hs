{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.FollowPoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.FollowPoint
  ( FollowPoint
      ( ..,
        End,
        Start
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Follow reference point.
data FollowPoint = FollowPoint' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern End :: FollowPoint
pattern End = FollowPoint' "END"

pattern Start :: FollowPoint
pattern Start = FollowPoint' "START"

{-# COMPLETE
  End,
  Start,
  FollowPoint'
  #-}

instance FromText FollowPoint where
  parser = (FollowPoint' . mk) <$> takeText

instance ToText FollowPoint where
  toText (FollowPoint' ci) = original ci

instance Hashable FollowPoint

instance NFData FollowPoint

instance ToByteString FollowPoint

instance ToQuery FollowPoint

instance ToHeader FollowPoint

instance ToJSON FollowPoint where
  toJSON = toJSONText

instance FromJSON FollowPoint where
  parseJSON = parseJSONText "FollowPoint"
