{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisVideoMedia.Types.StartSelectorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideoMedia.Types.StartSelectorType
  ( StartSelectorType
      ( ..,
        ContinuationToken,
        Earliest,
        FragmentNumber,
        Now,
        ProducerTimestamp,
        ServerTimestamp
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StartSelectorType = StartSelectorType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ContinuationToken :: StartSelectorType
pattern ContinuationToken = StartSelectorType' "CONTINUATION_TOKEN"

pattern Earliest :: StartSelectorType
pattern Earliest = StartSelectorType' "EARLIEST"

pattern FragmentNumber :: StartSelectorType
pattern FragmentNumber = StartSelectorType' "FRAGMENT_NUMBER"

pattern Now :: StartSelectorType
pattern Now = StartSelectorType' "NOW"

pattern ProducerTimestamp :: StartSelectorType
pattern ProducerTimestamp = StartSelectorType' "PRODUCER_TIMESTAMP"

pattern ServerTimestamp :: StartSelectorType
pattern ServerTimestamp = StartSelectorType' "SERVER_TIMESTAMP"

{-# COMPLETE
  ContinuationToken,
  Earliest,
  FragmentNumber,
  Now,
  ProducerTimestamp,
  ServerTimestamp,
  StartSelectorType'
  #-}

instance FromText StartSelectorType where
  parser = (StartSelectorType' . mk) <$> takeText

instance ToText StartSelectorType where
  toText (StartSelectorType' ci) = original ci

instance Hashable StartSelectorType

instance NFData StartSelectorType

instance ToByteString StartSelectorType

instance ToQuery StartSelectorType

instance ToHeader StartSelectorType

instance ToJSON StartSelectorType where
  toJSON = toJSONText
