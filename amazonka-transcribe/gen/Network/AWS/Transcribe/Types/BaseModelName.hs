{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Transcribe.Types.BaseModelName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Transcribe.Types.BaseModelName
  ( BaseModelName
      ( ..,
        NarrowBand,
        WideBand
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data BaseModelName = BaseModelName' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern NarrowBand :: BaseModelName
pattern NarrowBand = BaseModelName' "NarrowBand"

pattern WideBand :: BaseModelName
pattern WideBand = BaseModelName' "WideBand"

{-# COMPLETE
  NarrowBand,
  WideBand,
  BaseModelName'
  #-}

instance FromText BaseModelName where
  parser = (BaseModelName' . mk) <$> takeText

instance ToText BaseModelName where
  toText (BaseModelName' ci) = original ci

instance Hashable BaseModelName

instance NFData BaseModelName

instance ToByteString BaseModelName

instance ToQuery BaseModelName

instance ToHeader BaseModelName

instance ToJSON BaseModelName where
  toJSON = toJSONText

instance FromJSON BaseModelName where
  parseJSON = parseJSONText "BaseModelName"
