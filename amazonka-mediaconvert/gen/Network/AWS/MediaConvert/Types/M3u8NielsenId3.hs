{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.M3u8NielsenId3
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.M3u8NielsenId3
  ( M3u8NielsenId3
      ( ..,
        MNIInsert,
        MNINone
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | If INSERT, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output.
data M3u8NielsenId3 = M3u8NielsenId3' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MNIInsert :: M3u8NielsenId3
pattern MNIInsert = M3u8NielsenId3' "INSERT"

pattern MNINone :: M3u8NielsenId3
pattern MNINone = M3u8NielsenId3' "NONE"

{-# COMPLETE
  MNIInsert,
  MNINone,
  M3u8NielsenId3'
  #-}

instance FromText M3u8NielsenId3 where
  parser = (M3u8NielsenId3' . mk) <$> takeText

instance ToText M3u8NielsenId3 where
  toText (M3u8NielsenId3' ci) = original ci

instance Hashable M3u8NielsenId3

instance NFData M3u8NielsenId3

instance ToByteString M3u8NielsenId3

instance ToQuery M3u8NielsenId3

instance ToHeader M3u8NielsenId3

instance ToJSON M3u8NielsenId3 where
  toJSON = toJSONText

instance FromJSON M3u8NielsenId3 where
  parseJSON = parseJSONText "M3u8NielsenId3"
