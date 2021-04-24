{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.M2tsEsRateInPes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M2tsEsRateInPes
  ( M2tsEsRateInPes
      ( ..,
        MERIPExclude,
        MERIPInclude
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | M2ts Es Rate In Pes
data M2tsEsRateInPes = M2tsEsRateInPes' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MERIPExclude :: M2tsEsRateInPes
pattern MERIPExclude = M2tsEsRateInPes' "EXCLUDE"

pattern MERIPInclude :: M2tsEsRateInPes
pattern MERIPInclude = M2tsEsRateInPes' "INCLUDE"

{-# COMPLETE
  MERIPExclude,
  MERIPInclude,
  M2tsEsRateInPes'
  #-}

instance FromText M2tsEsRateInPes where
  parser = (M2tsEsRateInPes' . mk) <$> takeText

instance ToText M2tsEsRateInPes where
  toText (M2tsEsRateInPes' ci) = original ci

instance Hashable M2tsEsRateInPes

instance NFData M2tsEsRateInPes

instance ToByteString M2tsEsRateInPes

instance ToQuery M2tsEsRateInPes

instance ToHeader M2tsEsRateInPes

instance ToJSON M2tsEsRateInPes where
  toJSON = toJSONText

instance FromJSON M2tsEsRateInPes where
  parseJSON = parseJSONText "M2tsEsRateInPes"
