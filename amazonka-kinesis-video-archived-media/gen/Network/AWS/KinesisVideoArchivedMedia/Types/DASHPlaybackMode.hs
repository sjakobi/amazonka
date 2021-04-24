{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisVideoArchivedMedia.Types.DASHPlaybackMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideoArchivedMedia.Types.DASHPlaybackMode
  ( DASHPlaybackMode
      ( ..,
        DASHPMLive,
        DASHPMLiveReplay,
        DASHPMOnDemand
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DASHPlaybackMode = DASHPlaybackMode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DASHPMLive :: DASHPlaybackMode
pattern DASHPMLive = DASHPlaybackMode' "LIVE"

pattern DASHPMLiveReplay :: DASHPlaybackMode
pattern DASHPMLiveReplay = DASHPlaybackMode' "LIVE_REPLAY"

pattern DASHPMOnDemand :: DASHPlaybackMode
pattern DASHPMOnDemand = DASHPlaybackMode' "ON_DEMAND"

{-# COMPLETE
  DASHPMLive,
  DASHPMLiveReplay,
  DASHPMOnDemand,
  DASHPlaybackMode'
  #-}

instance FromText DASHPlaybackMode where
  parser = (DASHPlaybackMode' . mk) <$> takeText

instance ToText DASHPlaybackMode where
  toText (DASHPlaybackMode' ci) = original ci

instance Hashable DASHPlaybackMode

instance NFData DASHPlaybackMode

instance ToByteString DASHPlaybackMode

instance ToQuery DASHPlaybackMode

instance ToHeader DASHPlaybackMode

instance ToJSON DASHPlaybackMode where
  toJSON = toJSONText
