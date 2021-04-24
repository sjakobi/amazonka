{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisVideoArchivedMedia.Types.ClipFragmentSelectorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideoArchivedMedia.Types.ClipFragmentSelectorType
  ( ClipFragmentSelectorType
      ( ..,
        CFSTProducerTimestamp,
        CFSTServerTimestamp
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ClipFragmentSelectorType
  = ClipFragmentSelectorType'
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

pattern CFSTProducerTimestamp :: ClipFragmentSelectorType
pattern CFSTProducerTimestamp = ClipFragmentSelectorType' "PRODUCER_TIMESTAMP"

pattern CFSTServerTimestamp :: ClipFragmentSelectorType
pattern CFSTServerTimestamp = ClipFragmentSelectorType' "SERVER_TIMESTAMP"

{-# COMPLETE
  CFSTProducerTimestamp,
  CFSTServerTimestamp,
  ClipFragmentSelectorType'
  #-}

instance FromText ClipFragmentSelectorType where
  parser = (ClipFragmentSelectorType' . mk) <$> takeText

instance ToText ClipFragmentSelectorType where
  toText (ClipFragmentSelectorType' ci) = original ci

instance Hashable ClipFragmentSelectorType

instance NFData ClipFragmentSelectorType

instance ToByteString ClipFragmentSelectorType

instance ToQuery ClipFragmentSelectorType

instance ToHeader ClipFragmentSelectorType

instance ToJSON ClipFragmentSelectorType where
  toJSON = toJSONText
