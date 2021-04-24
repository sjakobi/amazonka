{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaPackage.Types.PlaylistType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types.PlaylistType
  ( PlaylistType
      ( ..,
        PTEvent,
        PTNone,
        PTVod
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PlaylistType = PlaylistType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern PTEvent :: PlaylistType
pattern PTEvent = PlaylistType' "EVENT"

pattern PTNone :: PlaylistType
pattern PTNone = PlaylistType' "NONE"

pattern PTVod :: PlaylistType
pattern PTVod = PlaylistType' "VOD"

{-# COMPLETE
  PTEvent,
  PTNone,
  PTVod,
  PlaylistType'
  #-}

instance FromText PlaylistType where
  parser = (PlaylistType' . mk) <$> takeText

instance ToText PlaylistType where
  toText (PlaylistType' ci) = original ci

instance Hashable PlaylistType

instance NFData PlaylistType

instance ToByteString PlaylistType

instance ToQuery PlaylistType

instance ToHeader PlaylistType

instance ToJSON PlaylistType where
  toJSON = toJSONText

instance FromJSON PlaylistType where
  parseJSON = parseJSONText "PlaylistType"
