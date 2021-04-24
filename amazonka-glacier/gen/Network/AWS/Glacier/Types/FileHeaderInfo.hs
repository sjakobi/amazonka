{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glacier.Types.FileHeaderInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glacier.Types.FileHeaderInfo
  ( FileHeaderInfo
      ( ..,
        Ignore,
        None,
        Use
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FileHeaderInfo = FileHeaderInfo' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Ignore :: FileHeaderInfo
pattern Ignore = FileHeaderInfo' "IGNORE"

pattern None :: FileHeaderInfo
pattern None = FileHeaderInfo' "NONE"

pattern Use :: FileHeaderInfo
pattern Use = FileHeaderInfo' "USE"

{-# COMPLETE
  Ignore,
  None,
  Use,
  FileHeaderInfo'
  #-}

instance FromText FileHeaderInfo where
  parser = (FileHeaderInfo' . mk) <$> takeText

instance ToText FileHeaderInfo where
  toText (FileHeaderInfo' ci) = original ci

instance Hashable FileHeaderInfo

instance NFData FileHeaderInfo

instance ToByteString FileHeaderInfo

instance ToQuery FileHeaderInfo

instance ToHeader FileHeaderInfo

instance ToJSON FileHeaderInfo where
  toJSON = toJSONText

instance FromJSON FileHeaderInfo where
  parseJSON = parseJSONText "FileHeaderInfo"
