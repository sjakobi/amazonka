{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.AacRawFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.AacRawFormat
  ( AacRawFormat
      ( ..,
        ARFLatmLoas,
        ARFNone
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Aac Raw Format
data AacRawFormat = AacRawFormat' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ARFLatmLoas :: AacRawFormat
pattern ARFLatmLoas = AacRawFormat' "LATM_LOAS"

pattern ARFNone :: AacRawFormat
pattern ARFNone = AacRawFormat' "NONE"

{-# COMPLETE
  ARFLatmLoas,
  ARFNone,
  AacRawFormat'
  #-}

instance FromText AacRawFormat where
  parser = (AacRawFormat' . mk) <$> takeText

instance ToText AacRawFormat where
  toText (AacRawFormat' ci) = original ci

instance Hashable AacRawFormat

instance NFData AacRawFormat

instance ToByteString AacRawFormat

instance ToQuery AacRawFormat

instance ToHeader AacRawFormat

instance ToJSON AacRawFormat where
  toJSON = toJSONText

instance FromJSON AacRawFormat where
  parseJSON = parseJSONText "AacRawFormat"
