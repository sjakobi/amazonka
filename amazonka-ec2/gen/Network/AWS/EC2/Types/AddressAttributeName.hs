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
-- Module      : Network.AWS.EC2.Types.AddressAttributeName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AddressAttributeName
  ( AddressAttributeName
      ( ..,
        AddressAttributeNameDomainName
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype AddressAttributeName = AddressAttributeName'
  { fromAddressAttributeName ::
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

pattern AddressAttributeNameDomainName :: AddressAttributeName
pattern AddressAttributeNameDomainName = AddressAttributeName' "domain-name"

{-# COMPLETE
  AddressAttributeNameDomainName,
  AddressAttributeName'
  #-}

instance Prelude.FromText AddressAttributeName where
  parser = AddressAttributeName' Prelude.<$> Prelude.takeText

instance Prelude.ToText AddressAttributeName where
  toText (AddressAttributeName' x) = x

instance Prelude.Hashable AddressAttributeName

instance Prelude.NFData AddressAttributeName

instance Prelude.ToByteString AddressAttributeName

instance Prelude.ToQuery AddressAttributeName

instance Prelude.ToHeader AddressAttributeName
