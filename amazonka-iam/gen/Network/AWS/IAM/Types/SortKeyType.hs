{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.SortKeyType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.SortKeyType
  ( SortKeyType
      ( ..,
        LastAuthenticatedTimeAscending,
        LastAuthenticatedTimeDescending,
        ServiceNamespaceAscending,
        ServiceNamespaceDescending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SortKeyType = SortKeyType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern LastAuthenticatedTimeAscending :: SortKeyType
pattern LastAuthenticatedTimeAscending = SortKeyType' "LAST_AUTHENTICATED_TIME_ASCENDING"

pattern LastAuthenticatedTimeDescending :: SortKeyType
pattern LastAuthenticatedTimeDescending = SortKeyType' "LAST_AUTHENTICATED_TIME_DESCENDING"

pattern ServiceNamespaceAscending :: SortKeyType
pattern ServiceNamespaceAscending = SortKeyType' "SERVICE_NAMESPACE_ASCENDING"

pattern ServiceNamespaceDescending :: SortKeyType
pattern ServiceNamespaceDescending = SortKeyType' "SERVICE_NAMESPACE_DESCENDING"

{-# COMPLETE
  LastAuthenticatedTimeAscending,
  LastAuthenticatedTimeDescending,
  ServiceNamespaceAscending,
  ServiceNamespaceDescending,
  SortKeyType'
  #-}

instance FromText SortKeyType where
  parser = (SortKeyType' . mk) <$> takeText

instance ToText SortKeyType where
  toText (SortKeyType' ci) = original ci

instance Hashable SortKeyType

instance NFData SortKeyType

instance ToByteString SortKeyType

instance ToQuery SortKeyType

instance ToHeader SortKeyType
