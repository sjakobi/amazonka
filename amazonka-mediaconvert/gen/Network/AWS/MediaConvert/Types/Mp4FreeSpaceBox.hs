{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Mp4FreeSpaceBox
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mp4FreeSpaceBox
  ( Mp4FreeSpaceBox
      ( ..,
        MFSBExclude,
        MFSBInclude
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Inserts a free-space box immediately after the moov box.
data Mp4FreeSpaceBox = Mp4FreeSpaceBox' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MFSBExclude :: Mp4FreeSpaceBox
pattern MFSBExclude = Mp4FreeSpaceBox' "EXCLUDE"

pattern MFSBInclude :: Mp4FreeSpaceBox
pattern MFSBInclude = Mp4FreeSpaceBox' "INCLUDE"

{-# COMPLETE
  MFSBExclude,
  MFSBInclude,
  Mp4FreeSpaceBox'
  #-}

instance FromText Mp4FreeSpaceBox where
  parser = (Mp4FreeSpaceBox' . mk) <$> takeText

instance ToText Mp4FreeSpaceBox where
  toText (Mp4FreeSpaceBox' ci) = original ci

instance Hashable Mp4FreeSpaceBox

instance NFData Mp4FreeSpaceBox

instance ToByteString Mp4FreeSpaceBox

instance ToQuery Mp4FreeSpaceBox

instance ToHeader Mp4FreeSpaceBox

instance ToJSON Mp4FreeSpaceBox where
  toJSON = toJSONText

instance FromJSON Mp4FreeSpaceBox where
  parseJSON = parseJSONText "Mp4FreeSpaceBox"
