{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Translate.Types.ParallelDataFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Translate.Types.ParallelDataFormat
  ( ParallelDataFormat
      ( ..,
        CSV,
        Tmx,
        Tsv
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ParallelDataFormat
  = ParallelDataFormat'
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

pattern CSV :: ParallelDataFormat
pattern CSV = ParallelDataFormat' "CSV"

pattern Tmx :: ParallelDataFormat
pattern Tmx = ParallelDataFormat' "TMX"

pattern Tsv :: ParallelDataFormat
pattern Tsv = ParallelDataFormat' "TSV"

{-# COMPLETE
  CSV,
  Tmx,
  Tsv,
  ParallelDataFormat'
  #-}

instance FromText ParallelDataFormat where
  parser = (ParallelDataFormat' . mk) <$> takeText

instance ToText ParallelDataFormat where
  toText (ParallelDataFormat' ci) = original ci

instance Hashable ParallelDataFormat

instance NFData ParallelDataFormat

instance ToByteString ParallelDataFormat

instance ToQuery ParallelDataFormat

instance ToHeader ParallelDataFormat

instance ToJSON ParallelDataFormat where
  toJSON = toJSONText

instance FromJSON ParallelDataFormat where
  parseJSON = parseJSONText "ParallelDataFormat"
