{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.Types.DestinationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.DestinationType
  ( DestinationType
      ( ..,
        S3
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DestinationType = DestinationType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern S3 :: DestinationType
pattern S3 = DestinationType' "S3"

{-# COMPLETE
  S3,
  DestinationType'
  #-}

instance FromText DestinationType where
  parser = (DestinationType' . mk) <$> takeText

instance ToText DestinationType where
  toText (DestinationType' ci) = original ci

instance Hashable DestinationType

instance NFData DestinationType

instance ToByteString DestinationType

instance ToQuery DestinationType

instance ToHeader DestinationType

instance ToJSON DestinationType where
  toJSON = toJSONText

instance FromJSON DestinationType where
  parseJSON = parseJSONText "DestinationType"
