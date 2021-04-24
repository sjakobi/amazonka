{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MarketplaceAnalytics.Types.SupportDataSetType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MarketplaceAnalytics.Types.SupportDataSetType
  ( SupportDataSetType
      ( ..,
        CustomerSupportContactsData,
        TestCustomerSupportContactsData
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SupportDataSetType
  = SupportDataSetType'
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

pattern CustomerSupportContactsData :: SupportDataSetType
pattern CustomerSupportContactsData = SupportDataSetType' "customer_support_contacts_data"

pattern TestCustomerSupportContactsData :: SupportDataSetType
pattern TestCustomerSupportContactsData = SupportDataSetType' "test_customer_support_contacts_data"

{-# COMPLETE
  CustomerSupportContactsData,
  TestCustomerSupportContactsData,
  SupportDataSetType'
  #-}

instance FromText SupportDataSetType where
  parser = (SupportDataSetType' . mk) <$> takeText

instance ToText SupportDataSetType where
  toText (SupportDataSetType' ci) = original ci

instance Hashable SupportDataSetType

instance NFData SupportDataSetType

instance ToByteString SupportDataSetType

instance ToQuery SupportDataSetType

instance ToHeader SupportDataSetType

instance ToJSON SupportDataSetType where
  toJSON = toJSONText
