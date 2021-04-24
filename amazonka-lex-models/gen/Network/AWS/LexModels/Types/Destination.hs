{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexModels.Types.Destination
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.Destination
  ( Destination
      ( ..,
        CloudwatchLogs,
        S3
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Destination = Destination' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CloudwatchLogs :: Destination
pattern CloudwatchLogs = Destination' "CLOUDWATCH_LOGS"

pattern S3 :: Destination
pattern S3 = Destination' "S3"

{-# COMPLETE
  CloudwatchLogs,
  S3,
  Destination'
  #-}

instance FromText Destination where
  parser = (Destination' . mk) <$> takeText

instance ToText Destination where
  toText (Destination' ci) = original ci

instance Hashable Destination

instance NFData Destination

instance ToByteString Destination

instance ToQuery Destination

instance ToHeader Destination

instance ToJSON Destination where
  toJSON = toJSONText

instance FromJSON Destination where
  parseJSON = parseJSONText "Destination"
