{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Ac3MetadataControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Ac3MetadataControl
  ( Ac3MetadataControl
      ( ..,
        FollowInput,
        UseConfigured
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | When set to FOLLOW_INPUT, encoder metadata will be sourced from the DD, DD+, or DolbyE decoder that supplied this audio data. If audio was not supplied from one of these streams, then the static metadata settings will be used.
data Ac3MetadataControl
  = Ac3MetadataControl'
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

pattern FollowInput :: Ac3MetadataControl
pattern FollowInput = Ac3MetadataControl' "FOLLOW_INPUT"

pattern UseConfigured :: Ac3MetadataControl
pattern UseConfigured = Ac3MetadataControl' "USE_CONFIGURED"

{-# COMPLETE
  FollowInput,
  UseConfigured,
  Ac3MetadataControl'
  #-}

instance FromText Ac3MetadataControl where
  parser = (Ac3MetadataControl' . mk) <$> takeText

instance ToText Ac3MetadataControl where
  toText (Ac3MetadataControl' ci) = original ci

instance Hashable Ac3MetadataControl

instance NFData Ac3MetadataControl

instance ToByteString Ac3MetadataControl

instance ToQuery Ac3MetadataControl

instance ToHeader Ac3MetadataControl

instance ToJSON Ac3MetadataControl where
  toJSON = toJSONText

instance FromJSON Ac3MetadataControl where
  parseJSON = parseJSONText "Ac3MetadataControl"
