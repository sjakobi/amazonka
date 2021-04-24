{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.HlsCaptionLanguageSetting
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.HlsCaptionLanguageSetting
  ( HlsCaptionLanguageSetting
      ( ..,
        HCLSInsert,
        HCLSNone,
        HCLSOmit
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Hls Caption Language Setting
data HlsCaptionLanguageSetting
  = HlsCaptionLanguageSetting'
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

pattern HCLSInsert :: HlsCaptionLanguageSetting
pattern HCLSInsert = HlsCaptionLanguageSetting' "INSERT"

pattern HCLSNone :: HlsCaptionLanguageSetting
pattern HCLSNone = HlsCaptionLanguageSetting' "NONE"

pattern HCLSOmit :: HlsCaptionLanguageSetting
pattern HCLSOmit = HlsCaptionLanguageSetting' "OMIT"

{-# COMPLETE
  HCLSInsert,
  HCLSNone,
  HCLSOmit,
  HlsCaptionLanguageSetting'
  #-}

instance FromText HlsCaptionLanguageSetting where
  parser = (HlsCaptionLanguageSetting' . mk) <$> takeText

instance ToText HlsCaptionLanguageSetting where
  toText (HlsCaptionLanguageSetting' ci) = original ci

instance Hashable HlsCaptionLanguageSetting

instance NFData HlsCaptionLanguageSetting

instance ToByteString HlsCaptionLanguageSetting

instance ToQuery HlsCaptionLanguageSetting

instance ToHeader HlsCaptionLanguageSetting

instance ToJSON HlsCaptionLanguageSetting where
  toJSON = toJSONText

instance FromJSON HlsCaptionLanguageSetting where
  parseJSON = parseJSONText "HlsCaptionLanguageSetting"
