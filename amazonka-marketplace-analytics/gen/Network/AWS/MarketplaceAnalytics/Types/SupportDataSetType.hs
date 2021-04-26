{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        SupportDataSetTypeCustomerSupportContactsData,
        SupportDataSetTypeTestCustomerSupportContactsData
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SupportDataSetType = SupportDataSetType'
  { fromSupportDataSetType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern SupportDataSetTypeCustomerSupportContactsData :: SupportDataSetType
pattern SupportDataSetTypeCustomerSupportContactsData = SupportDataSetType' "customer_support_contacts_data"

pattern SupportDataSetTypeTestCustomerSupportContactsData :: SupportDataSetType
pattern SupportDataSetTypeTestCustomerSupportContactsData = SupportDataSetType' "test_customer_support_contacts_data"

{-# COMPLETE
  SupportDataSetTypeCustomerSupportContactsData,
  SupportDataSetTypeTestCustomerSupportContactsData,
  SupportDataSetType'
  #-}

instance Prelude.FromText SupportDataSetType where
  parser = SupportDataSetType' Prelude.<$> Prelude.takeText

instance Prelude.ToText SupportDataSetType where
  toText (SupportDataSetType' x) = x

instance Prelude.Hashable SupportDataSetType

instance Prelude.NFData SupportDataSetType

instance Prelude.ToByteString SupportDataSetType

instance Prelude.ToQuery SupportDataSetType

instance Prelude.ToHeader SupportDataSetType

instance Prelude.ToJSON SupportDataSetType where
  toJSON = Prelude.toJSONText
