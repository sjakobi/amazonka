{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.PropertyKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.PropertyKey
  ( PropertyKey
      ( ..,
        PKLaunchRole,
        PKOwner
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PropertyKey = PropertyKey' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern PKLaunchRole :: PropertyKey
pattern PKLaunchRole = PropertyKey' "LAUNCH_ROLE"

pattern PKOwner :: PropertyKey
pattern PKOwner = PropertyKey' "OWNER"

{-# COMPLETE
  PKLaunchRole,
  PKOwner,
  PropertyKey'
  #-}

instance FromText PropertyKey where
  parser = (PropertyKey' . mk) <$> takeText

instance ToText PropertyKey where
  toText (PropertyKey' ci) = original ci

instance Hashable PropertyKey

instance NFData PropertyKey

instance ToByteString PropertyKey

instance ToQuery PropertyKey

instance ToHeader PropertyKey

instance ToJSON PropertyKey where
  toJSON = toJSONText

instance FromJSON PropertyKey where
  parseJSON = parseJSONText "PropertyKey"
