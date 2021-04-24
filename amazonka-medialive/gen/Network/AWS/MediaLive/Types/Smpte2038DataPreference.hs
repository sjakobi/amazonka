{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.Smpte2038DataPreference
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Smpte2038DataPreference
  ( Smpte2038DataPreference
      ( ..,
        SDPIgnore,
        SDPPrefer
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Smpte2038 Data Preference
data Smpte2038DataPreference
  = Smpte2038DataPreference'
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

pattern SDPIgnore :: Smpte2038DataPreference
pattern SDPIgnore = Smpte2038DataPreference' "IGNORE"

pattern SDPPrefer :: Smpte2038DataPreference
pattern SDPPrefer = Smpte2038DataPreference' "PREFER"

{-# COMPLETE
  SDPIgnore,
  SDPPrefer,
  Smpte2038DataPreference'
  #-}

instance FromText Smpte2038DataPreference where
  parser = (Smpte2038DataPreference' . mk) <$> takeText

instance ToText Smpte2038DataPreference where
  toText (Smpte2038DataPreference' ci) = original ci

instance Hashable Smpte2038DataPreference

instance NFData Smpte2038DataPreference

instance ToByteString Smpte2038DataPreference

instance ToQuery Smpte2038DataPreference

instance ToHeader Smpte2038DataPreference

instance ToJSON Smpte2038DataPreference where
  toJSON = toJSONText

instance FromJSON Smpte2038DataPreference where
  parseJSON = parseJSONText "Smpte2038DataPreference"
