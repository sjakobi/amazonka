{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Eac3CodingMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Eac3CodingMode
  ( Eac3CodingMode
      ( ..,
        ECMCodingMode10,
        ECMCodingMode20,
        ECMCodingMode32
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Dolby Digital Plus coding mode. Determines number of channels.
data Eac3CodingMode = Eac3CodingMode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ECMCodingMode10 :: Eac3CodingMode
pattern ECMCodingMode10 = Eac3CodingMode' "CODING_MODE_1_0"

pattern ECMCodingMode20 :: Eac3CodingMode
pattern ECMCodingMode20 = Eac3CodingMode' "CODING_MODE_2_0"

pattern ECMCodingMode32 :: Eac3CodingMode
pattern ECMCodingMode32 = Eac3CodingMode' "CODING_MODE_3_2"

{-# COMPLETE
  ECMCodingMode10,
  ECMCodingMode20,
  ECMCodingMode32,
  Eac3CodingMode'
  #-}

instance FromText Eac3CodingMode where
  parser = (Eac3CodingMode' . mk) <$> takeText

instance ToText Eac3CodingMode where
  toText (Eac3CodingMode' ci) = original ci

instance Hashable Eac3CodingMode

instance NFData Eac3CodingMode

instance ToByteString Eac3CodingMode

instance ToQuery Eac3CodingMode

instance ToHeader Eac3CodingMode

instance ToJSON Eac3CodingMode where
  toJSON = toJSONText

instance FromJSON Eac3CodingMode where
  parseJSON = parseJSONText "Eac3CodingMode"
