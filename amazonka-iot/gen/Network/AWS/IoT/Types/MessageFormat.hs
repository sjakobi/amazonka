{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.MessageFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.MessageFormat
  ( MessageFormat
      ( ..,
        JSON,
        Raw
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MessageFormat = MessageFormat' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern JSON :: MessageFormat
pattern JSON = MessageFormat' "JSON"

pattern Raw :: MessageFormat
pattern Raw = MessageFormat' "RAW"

{-# COMPLETE
  JSON,
  Raw,
  MessageFormat'
  #-}

instance FromText MessageFormat where
  parser = (MessageFormat' . mk) <$> takeText

instance ToText MessageFormat where
  toText (MessageFormat' ci) = original ci

instance Hashable MessageFormat

instance NFData MessageFormat

instance ToByteString MessageFormat

instance ToQuery MessageFormat

instance ToHeader MessageFormat

instance ToJSON MessageFormat where
  toJSON = toJSONText

instance FromJSON MessageFormat where
  parseJSON = parseJSONText "MessageFormat"
