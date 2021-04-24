{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.DocumentClassifierMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.DocumentClassifierMode
  ( DocumentClassifierMode
      ( ..,
        MultiClass,
        MultiLabel
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DocumentClassifierMode
  = DocumentClassifierMode'
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

pattern MultiClass :: DocumentClassifierMode
pattern MultiClass = DocumentClassifierMode' "MULTI_CLASS"

pattern MultiLabel :: DocumentClassifierMode
pattern MultiLabel = DocumentClassifierMode' "MULTI_LABEL"

{-# COMPLETE
  MultiClass,
  MultiLabel,
  DocumentClassifierMode'
  #-}

instance FromText DocumentClassifierMode where
  parser = (DocumentClassifierMode' . mk) <$> takeText

instance ToText DocumentClassifierMode where
  toText (DocumentClassifierMode' ci) = original ci

instance Hashable DocumentClassifierMode

instance NFData DocumentClassifierMode

instance ToByteString DocumentClassifierMode

instance ToQuery DocumentClassifierMode

instance ToHeader DocumentClassifierMode

instance ToJSON DocumentClassifierMode where
  toJSON = toJSONText

instance FromJSON DocumentClassifierMode where
  parseJSON = parseJSONText "DocumentClassifierMode"
