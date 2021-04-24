{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ResourceGroups.Types.ResourceStatusValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ResourceGroups.Types.ResourceStatusValue
  ( ResourceStatusValue
      ( ..,
        Pending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ResourceStatusValue
  = ResourceStatusValue'
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

pattern Pending :: ResourceStatusValue
pattern Pending = ResourceStatusValue' "PENDING"

{-# COMPLETE
  Pending,
  ResourceStatusValue'
  #-}

instance FromText ResourceStatusValue where
  parser = (ResourceStatusValue' . mk) <$> takeText

instance ToText ResourceStatusValue where
  toText (ResourceStatusValue' ci) = original ci

instance Hashable ResourceStatusValue

instance NFData ResourceStatusValue

instance ToByteString ResourceStatusValue

instance ToQuery ResourceStatusValue

instance ToHeader ResourceStatusValue

instance FromJSON ResourceStatusValue where
  parseJSON = parseJSONText "ResourceStatusValue"
