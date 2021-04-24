{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Eac3AtmosCodingMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Eac3AtmosCodingMode
  ( Eac3AtmosCodingMode
      ( ..,
        CodingMode916
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The coding mode for Dolby Digital Plus JOC (Atmos) is always 9.1.6 (CODING_MODE_9_1_6).
data Eac3AtmosCodingMode
  = Eac3AtmosCodingMode'
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

pattern CodingMode916 :: Eac3AtmosCodingMode
pattern CodingMode916 = Eac3AtmosCodingMode' "CODING_MODE_9_1_6"

{-# COMPLETE
  CodingMode916,
  Eac3AtmosCodingMode'
  #-}

instance FromText Eac3AtmosCodingMode where
  parser = (Eac3AtmosCodingMode' . mk) <$> takeText

instance ToText Eac3AtmosCodingMode where
  toText (Eac3AtmosCodingMode' ci) = original ci

instance Hashable Eac3AtmosCodingMode

instance NFData Eac3AtmosCodingMode

instance ToByteString Eac3AtmosCodingMode

instance ToQuery Eac3AtmosCodingMode

instance ToHeader Eac3AtmosCodingMode

instance ToJSON Eac3AtmosCodingMode where
  toJSON = toJSONText

instance FromJSON Eac3AtmosCodingMode where
  parseJSON = parseJSONText "Eac3AtmosCodingMode"
