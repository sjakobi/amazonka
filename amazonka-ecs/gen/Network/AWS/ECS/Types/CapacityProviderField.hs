{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.CapacityProviderField
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.CapacityProviderField
  ( CapacityProviderField
      ( ..,
        Tags
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CapacityProviderField
  = CapacityProviderField'
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

pattern Tags :: CapacityProviderField
pattern Tags = CapacityProviderField' "TAGS"

{-# COMPLETE
  Tags,
  CapacityProviderField'
  #-}

instance FromText CapacityProviderField where
  parser = (CapacityProviderField' . mk) <$> takeText

instance ToText CapacityProviderField where
  toText (CapacityProviderField' ci) = original ci

instance Hashable CapacityProviderField

instance NFData CapacityProviderField

instance ToByteString CapacityProviderField

instance ToQuery CapacityProviderField

instance ToHeader CapacityProviderField

instance ToJSON CapacityProviderField where
  toJSON = toJSONText
