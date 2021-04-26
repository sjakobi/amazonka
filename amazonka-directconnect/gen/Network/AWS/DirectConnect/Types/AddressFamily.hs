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
-- Module      : Network.AWS.DirectConnect.Types.AddressFamily
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectConnect.Types.AddressFamily
  ( AddressFamily
      ( ..,
        AddressFamilyIPV4,
        AddressFamilyIPV6
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AddressFamily = AddressFamily'
  { fromAddressFamily ::
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

pattern AddressFamilyIPV4 :: AddressFamily
pattern AddressFamilyIPV4 = AddressFamily' "ipv4"

pattern AddressFamilyIPV6 :: AddressFamily
pattern AddressFamilyIPV6 = AddressFamily' "ipv6"

{-# COMPLETE
  AddressFamilyIPV4,
  AddressFamilyIPV6,
  AddressFamily'
  #-}

instance Prelude.FromText AddressFamily where
  parser = AddressFamily' Prelude.<$> Prelude.takeText

instance Prelude.ToText AddressFamily where
  toText (AddressFamily' x) = x

instance Prelude.Hashable AddressFamily

instance Prelude.NFData AddressFamily

instance Prelude.ToByteString AddressFamily

instance Prelude.ToQuery AddressFamily

instance Prelude.ToHeader AddressFamily

instance Prelude.ToJSON AddressFamily where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AddressFamily where
  parseJSON = Prelude.parseJSONText "AddressFamily"
