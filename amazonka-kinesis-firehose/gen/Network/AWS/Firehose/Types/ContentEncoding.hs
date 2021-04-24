{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Firehose.Types.ContentEncoding
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.ContentEncoding
  ( ContentEncoding
      ( ..,
        CEGzip,
        CENone
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ContentEncoding = ContentEncoding' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CEGzip :: ContentEncoding
pattern CEGzip = ContentEncoding' "GZIP"

pattern CENone :: ContentEncoding
pattern CENone = ContentEncoding' "NONE"

{-# COMPLETE
  CEGzip,
  CENone,
  ContentEncoding'
  #-}

instance FromText ContentEncoding where
  parser = (ContentEncoding' . mk) <$> takeText

instance ToText ContentEncoding where
  toText (ContentEncoding' ci) = original ci

instance Hashable ContentEncoding

instance NFData ContentEncoding

instance ToByteString ContentEncoding

instance ToQuery ContentEncoding

instance ToHeader ContentEncoding

instance ToJSON ContentEncoding where
  toJSON = toJSONText

instance FromJSON ContentEncoding where
  parseJSON = parseJSONText "ContentEncoding"
