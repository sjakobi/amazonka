{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.AacSpec
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.AacSpec
  ( AacSpec
      ( ..,
        MPEG2,
        MPEG4
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Aac Spec
data AacSpec = AacSpec' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MPEG2 :: AacSpec
pattern MPEG2 = AacSpec' "MPEG2"

pattern MPEG4 :: AacSpec
pattern MPEG4 = AacSpec' "MPEG4"

{-# COMPLETE
  MPEG2,
  MPEG4,
  AacSpec'
  #-}

instance FromText AacSpec where
  parser = (AacSpec' . mk) <$> takeText

instance ToText AacSpec where
  toText (AacSpec' ci) = original ci

instance Hashable AacSpec

instance NFData AacSpec

instance ToByteString AacSpec

instance ToQuery AacSpec

instance ToHeader AacSpec

instance ToJSON AacSpec where
  toJSON = toJSONText

instance FromJSON AacSpec where
  parseJSON = parseJSONText "AacSpec"
