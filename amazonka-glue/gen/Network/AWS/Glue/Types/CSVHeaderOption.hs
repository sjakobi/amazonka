{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.CSVHeaderOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.CSVHeaderOption
  ( CSVHeaderOption
      ( ..,
        Absent,
        Present,
        Unknown
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CSVHeaderOption = CSVHeaderOption' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Absent :: CSVHeaderOption
pattern Absent = CSVHeaderOption' "ABSENT"

pattern Present :: CSVHeaderOption
pattern Present = CSVHeaderOption' "PRESENT"

pattern Unknown :: CSVHeaderOption
pattern Unknown = CSVHeaderOption' "UNKNOWN"

{-# COMPLETE
  Absent,
  Present,
  Unknown,
  CSVHeaderOption'
  #-}

instance FromText CSVHeaderOption where
  parser = (CSVHeaderOption' . mk) <$> takeText

instance ToText CSVHeaderOption where
  toText (CSVHeaderOption' ci) = original ci

instance Hashable CSVHeaderOption

instance NFData CSVHeaderOption

instance ToByteString CSVHeaderOption

instance ToQuery CSVHeaderOption

instance ToHeader CSVHeaderOption

instance ToJSON CSVHeaderOption where
  toJSON = toJSONText

instance FromJSON CSVHeaderOption where
  parseJSON = parseJSONText "CSVHeaderOption"
