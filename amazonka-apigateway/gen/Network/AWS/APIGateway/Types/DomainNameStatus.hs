{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.Types.DomainNameStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.DomainNameStatus
  ( DomainNameStatus
      ( ..,
        DNSAvailable,
        DNSPending,
        DNSUpdating
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DomainNameStatus = DomainNameStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DNSAvailable :: DomainNameStatus
pattern DNSAvailable = DomainNameStatus' "AVAILABLE"

pattern DNSPending :: DomainNameStatus
pattern DNSPending = DomainNameStatus' "PENDING"

pattern DNSUpdating :: DomainNameStatus
pattern DNSUpdating = DomainNameStatus' "UPDATING"

{-# COMPLETE
  DNSAvailable,
  DNSPending,
  DNSUpdating,
  DomainNameStatus'
  #-}

instance FromText DomainNameStatus where
  parser = (DomainNameStatus' . mk) <$> takeText

instance ToText DomainNameStatus where
  toText (DomainNameStatus' ci) = original ci

instance Hashable DomainNameStatus

instance NFData DomainNameStatus

instance ToByteString DomainNameStatus

instance ToQuery DomainNameStatus

instance ToHeader DomainNameStatus

instance FromJSON DomainNameStatus where
  parseJSON = parseJSONText "DomainNameStatus"
