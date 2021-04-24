{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppSync.Types.OutputType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppSync.Types.OutputType
  ( OutputType
      ( ..,
        OTJSON,
        OTSdl
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OutputType = OutputType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern OTJSON :: OutputType
pattern OTJSON = OutputType' "JSON"

pattern OTSdl :: OutputType
pattern OTSdl = OutputType' "SDL"

{-# COMPLETE
  OTJSON,
  OTSdl,
  OutputType'
  #-}

instance FromText OutputType where
  parser = (OutputType' . mk) <$> takeText

instance ToText OutputType where
  toText (OutputType' ci) = original ci

instance Hashable OutputType

instance NFData OutputType

instance ToByteString OutputType

instance ToQuery OutputType

instance ToHeader OutputType

instance ToJSON OutputType where
  toJSON = toJSONText
