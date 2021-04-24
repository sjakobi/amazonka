{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.Eac3MetadataControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Eac3MetadataControl
  ( Eac3MetadataControl
      ( ..,
        EMCFollowInput,
        EMCUseConfigured
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Eac3 Metadata Control
data Eac3MetadataControl
  = Eac3MetadataControl'
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

pattern EMCFollowInput :: Eac3MetadataControl
pattern EMCFollowInput = Eac3MetadataControl' "FOLLOW_INPUT"

pattern EMCUseConfigured :: Eac3MetadataControl
pattern EMCUseConfigured = Eac3MetadataControl' "USE_CONFIGURED"

{-# COMPLETE
  EMCFollowInput,
  EMCUseConfigured,
  Eac3MetadataControl'
  #-}

instance FromText Eac3MetadataControl where
  parser = (Eac3MetadataControl' . mk) <$> takeText

instance ToText Eac3MetadataControl where
  toText (Eac3MetadataControl' ci) = original ci

instance Hashable Eac3MetadataControl

instance NFData Eac3MetadataControl

instance ToByteString Eac3MetadataControl

instance ToQuery Eac3MetadataControl

instance ToHeader Eac3MetadataControl

instance ToJSON Eac3MetadataControl where
  toJSON = toJSONText

instance FromJSON Eac3MetadataControl where
  parseJSON = parseJSONText "Eac3MetadataControl"
