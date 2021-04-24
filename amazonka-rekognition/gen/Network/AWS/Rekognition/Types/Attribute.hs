{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.Attribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.Attribute
  ( Attribute
      ( ..,
        AAll,
        ADefault
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Attribute = Attribute' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AAll :: Attribute
pattern AAll = Attribute' "ALL"

pattern ADefault :: Attribute
pattern ADefault = Attribute' "DEFAULT"

{-# COMPLETE
  AAll,
  ADefault,
  Attribute'
  #-}

instance FromText Attribute where
  parser = (Attribute' . mk) <$> takeText

instance ToText Attribute where
  toText (Attribute' ci) = original ci

instance Hashable Attribute

instance NFData Attribute

instance ToByteString Attribute

instance ToQuery Attribute

instance ToHeader Attribute

instance ToJSON Attribute where
  toJSON = toJSONText
