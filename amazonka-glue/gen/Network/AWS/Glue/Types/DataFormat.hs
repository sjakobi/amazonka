{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.DataFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.DataFormat
  ( DataFormat
      ( ..,
        Avro
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DataFormat = DataFormat' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Avro :: DataFormat
pattern Avro = DataFormat' "AVRO"

{-# COMPLETE
  Avro,
  DataFormat'
  #-}

instance FromText DataFormat where
  parser = (DataFormat' . mk) <$> takeText

instance ToText DataFormat where
  toText (DataFormat' ci) = original ci

instance Hashable DataFormat

instance NFData DataFormat

instance ToByteString DataFormat

instance ToQuery DataFormat

instance ToHeader DataFormat

instance ToJSON DataFormat where
  toJSON = toJSONText

instance FromJSON DataFormat where
  parseJSON = parseJSONText "DataFormat"
