{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Firehose.Types.KeyType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.KeyType
  ( KeyType
      ( ..,
        AWSOwnedCmk,
        CustomerManagedCmk
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data KeyType = KeyType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AWSOwnedCmk :: KeyType
pattern AWSOwnedCmk = KeyType' "AWS_OWNED_CMK"

pattern CustomerManagedCmk :: KeyType
pattern CustomerManagedCmk = KeyType' "CUSTOMER_MANAGED_CMK"

{-# COMPLETE
  AWSOwnedCmk,
  CustomerManagedCmk,
  KeyType'
  #-}

instance FromText KeyType where
  parser = (KeyType' . mk) <$> takeText

instance ToText KeyType where
  toText (KeyType' ci) = original ci

instance Hashable KeyType

instance NFData KeyType

instance ToByteString KeyType

instance ToQuery KeyType

instance ToHeader KeyType

instance ToJSON KeyType where
  toJSON = toJSONText

instance FromJSON KeyType where
  parseJSON = parseJSONText "KeyType"
