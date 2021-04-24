{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisVideoArchivedMedia.Types.DASHFragmentSelectorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideoArchivedMedia.Types.DASHFragmentSelectorType
  ( DASHFragmentSelectorType
      ( ..,
        DASHFSTProducerTimestamp,
        DASHFSTServerTimestamp
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DASHFragmentSelectorType
  = DASHFragmentSelectorType'
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

pattern DASHFSTProducerTimestamp :: DASHFragmentSelectorType
pattern DASHFSTProducerTimestamp = DASHFragmentSelectorType' "PRODUCER_TIMESTAMP"

pattern DASHFSTServerTimestamp :: DASHFragmentSelectorType
pattern DASHFSTServerTimestamp = DASHFragmentSelectorType' "SERVER_TIMESTAMP"

{-# COMPLETE
  DASHFSTProducerTimestamp,
  DASHFSTServerTimestamp,
  DASHFragmentSelectorType'
  #-}

instance FromText DASHFragmentSelectorType where
  parser = (DASHFragmentSelectorType' . mk) <$> takeText

instance ToText DASHFragmentSelectorType where
  toText (DASHFragmentSelectorType' ci) = original ci

instance Hashable DASHFragmentSelectorType

instance NFData DASHFragmentSelectorType

instance ToByteString DASHFragmentSelectorType

instance ToQuery DASHFragmentSelectorType

instance ToHeader DASHFragmentSelectorType

instance ToJSON DASHFragmentSelectorType where
  toJSON = toJSONText
