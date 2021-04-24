{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.OpsItemEventFilterKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.OpsItemEventFilterKey
  ( OpsItemEventFilterKey
      ( ..,
        OIEFKOpsItemId
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OpsItemEventFilterKey
  = OpsItemEventFilterKey'
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

pattern OIEFKOpsItemId :: OpsItemEventFilterKey
pattern OIEFKOpsItemId = OpsItemEventFilterKey' "OpsItemId"

{-# COMPLETE
  OIEFKOpsItemId,
  OpsItemEventFilterKey'
  #-}

instance FromText OpsItemEventFilterKey where
  parser = (OpsItemEventFilterKey' . mk) <$> takeText

instance ToText OpsItemEventFilterKey where
  toText (OpsItemEventFilterKey' ci) = original ci

instance Hashable OpsItemEventFilterKey

instance NFData OpsItemEventFilterKey

instance ToByteString OpsItemEventFilterKey

instance ToQuery OpsItemEventFilterKey

instance ToHeader OpsItemEventFilterKey

instance ToJSON OpsItemEventFilterKey where
  toJSON = toJSONText
