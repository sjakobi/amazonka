{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisVideoArchivedMedia.Types.DASHDisplayFragmentTimestamp
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideoArchivedMedia.Types.DASHDisplayFragmentTimestamp
  ( DASHDisplayFragmentTimestamp
      ( ..,
        DASHDFTAlways,
        DASHDFTNever
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DASHDisplayFragmentTimestamp
  = DASHDisplayFragmentTimestamp'
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

pattern DASHDFTAlways :: DASHDisplayFragmentTimestamp
pattern DASHDFTAlways = DASHDisplayFragmentTimestamp' "ALWAYS"

pattern DASHDFTNever :: DASHDisplayFragmentTimestamp
pattern DASHDFTNever = DASHDisplayFragmentTimestamp' "NEVER"

{-# COMPLETE
  DASHDFTAlways,
  DASHDFTNever,
  DASHDisplayFragmentTimestamp'
  #-}

instance FromText DASHDisplayFragmentTimestamp where
  parser = (DASHDisplayFragmentTimestamp' . mk) <$> takeText

instance ToText DASHDisplayFragmentTimestamp where
  toText (DASHDisplayFragmentTimestamp' ci) = original ci

instance Hashable DASHDisplayFragmentTimestamp

instance NFData DASHDisplayFragmentTimestamp

instance ToByteString DASHDisplayFragmentTimestamp

instance ToQuery DASHDisplayFragmentTimestamp

instance ToHeader DASHDisplayFragmentTimestamp

instance ToJSON DASHDisplayFragmentTimestamp where
  toJSON = toJSONText
