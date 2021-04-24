{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.Types.StackAttributesKeys
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.StackAttributesKeys
  ( StackAttributesKeys
      ( ..,
        Color
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StackAttributesKeys
  = StackAttributesKeys'
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

pattern Color :: StackAttributesKeys
pattern Color = StackAttributesKeys' "Color"

{-# COMPLETE
  Color,
  StackAttributesKeys'
  #-}

instance FromText StackAttributesKeys where
  parser = (StackAttributesKeys' . mk) <$> takeText

instance ToText StackAttributesKeys where
  toText (StackAttributesKeys' ci) = original ci

instance Hashable StackAttributesKeys

instance NFData StackAttributesKeys

instance ToByteString StackAttributesKeys

instance ToQuery StackAttributesKeys

instance ToHeader StackAttributesKeys

instance ToJSON StackAttributesKeys where
  toJSON = toJSONText

instance FromJSON StackAttributesKeys where
  parseJSON = parseJSONText "StackAttributesKeys"
