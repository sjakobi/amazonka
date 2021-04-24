{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.ChannelClass
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.ChannelClass
  ( ChannelClass
      ( ..,
        SinglePipeline,
        Standard
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | A standard channel has two encoding pipelines and a single pipeline channel only has one.
data ChannelClass = ChannelClass' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SinglePipeline :: ChannelClass
pattern SinglePipeline = ChannelClass' "SINGLE_PIPELINE"

pattern Standard :: ChannelClass
pattern Standard = ChannelClass' "STANDARD"

{-# COMPLETE
  SinglePipeline,
  Standard,
  ChannelClass'
  #-}

instance FromText ChannelClass where
  parser = (ChannelClass' . mk) <$> takeText

instance ToText ChannelClass where
  toText (ChannelClass' ci) = original ci

instance Hashable ChannelClass

instance NFData ChannelClass

instance ToByteString ChannelClass

instance ToQuery ChannelClass

instance ToHeader ChannelClass

instance ToJSON ChannelClass where
  toJSON = toJSONText

instance FromJSON ChannelClass where
  parseJSON = parseJSONText "ChannelClass"
