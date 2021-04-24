{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.DefinitionFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.DefinitionFormat
  ( DefinitionFormat
      ( ..,
        CSV,
        JSON
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DefinitionFormat = DefinitionFormat' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CSV :: DefinitionFormat
pattern CSV = DefinitionFormat' "CSV"

pattern JSON :: DefinitionFormat
pattern JSON = DefinitionFormat' "JSON"

{-# COMPLETE
  CSV,
  JSON,
  DefinitionFormat'
  #-}

instance FromText DefinitionFormat where
  parser = (DefinitionFormat' . mk) <$> takeText

instance ToText DefinitionFormat where
  toText (DefinitionFormat' ci) = original ci

instance Hashable DefinitionFormat

instance NFData DefinitionFormat

instance ToByteString DefinitionFormat

instance ToQuery DefinitionFormat

instance ToHeader DefinitionFormat

instance ToJSON DefinitionFormat where
  toJSON = toJSONText

instance FromJSON DefinitionFormat where
  parseJSON = parseJSONText "DefinitionFormat"
