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
-- Module      : Network.AWS.Glacier.Types.Type
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glacier.Types.Type
  ( Type
      ( ..,
        TypeAmazonCustomerByEmail,
        TypeCanonicalUser,
        TypeGroup
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Type = Type' {fromType :: Prelude.Text}
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern TypeAmazonCustomerByEmail :: Type
pattern TypeAmazonCustomerByEmail = Type' "AmazonCustomerByEmail"

pattern TypeCanonicalUser :: Type
pattern TypeCanonicalUser = Type' "CanonicalUser"

pattern TypeGroup :: Type
pattern TypeGroup = Type' "Group"

{-# COMPLETE
  TypeAmazonCustomerByEmail,
  TypeCanonicalUser,
  TypeGroup,
  Type'
  #-}

instance Prelude.FromText Type where
  parser = Type' Prelude.<$> Prelude.takeText

instance Prelude.ToText Type where
  toText (Type' x) = x

instance Prelude.Hashable Type

instance Prelude.NFData Type

instance Prelude.ToByteString Type

instance Prelude.ToQuery Type

instance Prelude.ToHeader Type

instance Prelude.ToJSON Type where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Type where
  parseJSON = Prelude.parseJSONText "Type"
