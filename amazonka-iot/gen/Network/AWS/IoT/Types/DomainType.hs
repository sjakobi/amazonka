{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.DomainType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.DomainType
  ( DomainType
      ( ..,
        AWSManaged,
        CustomerManaged,
        Endpoint
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DomainType = DomainType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AWSManaged :: DomainType
pattern AWSManaged = DomainType' "AWS_MANAGED"

pattern CustomerManaged :: DomainType
pattern CustomerManaged = DomainType' "CUSTOMER_MANAGED"

pattern Endpoint :: DomainType
pattern Endpoint = DomainType' "ENDPOINT"

{-# COMPLETE
  AWSManaged,
  CustomerManaged,
  Endpoint,
  DomainType'
  #-}

instance FromText DomainType where
  parser = (DomainType' . mk) <$> takeText

instance ToText DomainType where
  toText (DomainType' ci) = original ci

instance Hashable DomainType

instance NFData DomainType

instance ToByteString DomainType

instance ToQuery DomainType

instance ToHeader DomainType

instance FromJSON DomainType where
  parseJSON = parseJSONText "DomainType"
