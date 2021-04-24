{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisVideoArchivedMedia.Types.HLSDiscontinuityMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideoArchivedMedia.Types.HLSDiscontinuityMode
  ( HLSDiscontinuityMode
      ( ..,
        HLSDMAlways,
        HLSDMNever,
        HLSDMOnDiscontinuity
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data HLSDiscontinuityMode
  = HLSDiscontinuityMode'
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

pattern HLSDMAlways :: HLSDiscontinuityMode
pattern HLSDMAlways = HLSDiscontinuityMode' "ALWAYS"

pattern HLSDMNever :: HLSDiscontinuityMode
pattern HLSDMNever = HLSDiscontinuityMode' "NEVER"

pattern HLSDMOnDiscontinuity :: HLSDiscontinuityMode
pattern HLSDMOnDiscontinuity = HLSDiscontinuityMode' "ON_DISCONTINUITY"

{-# COMPLETE
  HLSDMAlways,
  HLSDMNever,
  HLSDMOnDiscontinuity,
  HLSDiscontinuityMode'
  #-}

instance FromText HLSDiscontinuityMode where
  parser = (HLSDiscontinuityMode' . mk) <$> takeText

instance ToText HLSDiscontinuityMode where
  toText (HLSDiscontinuityMode' ci) = original ci

instance Hashable HLSDiscontinuityMode

instance NFData HLSDiscontinuityMode

instance ToByteString HLSDiscontinuityMode

instance ToQuery HLSDiscontinuityMode

instance ToHeader HLSDiscontinuityMode

instance ToJSON HLSDiscontinuityMode where
  toJSON = toJSONText
