{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KMS.Types.KeyManagerType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types.KeyManagerType
  ( KeyManagerType
      ( ..,
        AWS,
        Customer
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data KeyManagerType = KeyManagerType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AWS :: KeyManagerType
pattern AWS = KeyManagerType' "AWS"

pattern Customer :: KeyManagerType
pattern Customer = KeyManagerType' "CUSTOMER"

{-# COMPLETE
  AWS,
  Customer,
  KeyManagerType'
  #-}

instance FromText KeyManagerType where
  parser = (KeyManagerType' . mk) <$> takeText

instance ToText KeyManagerType where
  toText (KeyManagerType' ci) = original ci

instance Hashable KeyManagerType

instance NFData KeyManagerType

instance ToByteString KeyManagerType

instance ToQuery KeyManagerType

instance ToHeader KeyManagerType

instance FromJSON KeyManagerType where
  parseJSON = parseJSONText "KeyManagerType"
