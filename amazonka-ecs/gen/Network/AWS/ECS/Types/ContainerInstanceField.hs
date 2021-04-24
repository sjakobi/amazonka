{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.ContainerInstanceField
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.ContainerInstanceField
  ( ContainerInstanceField
      ( ..,
        CIFTags
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ContainerInstanceField
  = ContainerInstanceField'
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

pattern CIFTags :: ContainerInstanceField
pattern CIFTags = ContainerInstanceField' "TAGS"

{-# COMPLETE
  CIFTags,
  ContainerInstanceField'
  #-}

instance FromText ContainerInstanceField where
  parser = (ContainerInstanceField' . mk) <$> takeText

instance ToText ContainerInstanceField where
  toText (ContainerInstanceField' ci) = original ci

instance Hashable ContainerInstanceField

instance NFData ContainerInstanceField

instance ToByteString ContainerInstanceField

instance ToQuery ContainerInstanceField

instance ToHeader ContainerInstanceField

instance ToJSON ContainerInstanceField where
  toJSON = toJSONText
