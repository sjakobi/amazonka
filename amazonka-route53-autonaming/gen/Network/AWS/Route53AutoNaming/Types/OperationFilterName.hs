{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53AutoNaming.Types.OperationFilterName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53AutoNaming.Types.OperationFilterName
  ( OperationFilterName
      ( ..,
        OFNNamespaceId,
        OFNServiceId,
        OFNStatus,
        OFNType,
        OFNUpdateDate
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OperationFilterName
  = OperationFilterName'
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

pattern OFNNamespaceId :: OperationFilterName
pattern OFNNamespaceId = OperationFilterName' "NAMESPACE_ID"

pattern OFNServiceId :: OperationFilterName
pattern OFNServiceId = OperationFilterName' "SERVICE_ID"

pattern OFNStatus :: OperationFilterName
pattern OFNStatus = OperationFilterName' "STATUS"

pattern OFNType :: OperationFilterName
pattern OFNType = OperationFilterName' "TYPE"

pattern OFNUpdateDate :: OperationFilterName
pattern OFNUpdateDate = OperationFilterName' "UPDATE_DATE"

{-# COMPLETE
  OFNNamespaceId,
  OFNServiceId,
  OFNStatus,
  OFNType,
  OFNUpdateDate,
  OperationFilterName'
  #-}

instance FromText OperationFilterName where
  parser = (OperationFilterName' . mk) <$> takeText

instance ToText OperationFilterName where
  toText (OperationFilterName' ci) = original ci

instance Hashable OperationFilterName

instance NFData OperationFilterName

instance ToByteString OperationFilterName

instance ToQuery OperationFilterName

instance ToHeader OperationFilterName

instance ToJSON OperationFilterName where
  toJSON = toJSONText
