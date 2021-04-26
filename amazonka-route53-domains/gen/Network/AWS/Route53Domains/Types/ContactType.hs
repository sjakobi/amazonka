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
-- Module      : Network.AWS.Route53Domains.Types.ContactType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53Domains.Types.ContactType
  ( ContactType
      ( ..,
        ContactTypeASSOCIATION,
        ContactTypeCOMPANY,
        ContactTypePERSON,
        ContactTypePUBLICBODY,
        ContactTypeRESELLER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ContactType = ContactType'
  { fromContactType ::
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

pattern ContactTypeASSOCIATION :: ContactType
pattern ContactTypeASSOCIATION = ContactType' "ASSOCIATION"

pattern ContactTypeCOMPANY :: ContactType
pattern ContactTypeCOMPANY = ContactType' "COMPANY"

pattern ContactTypePERSON :: ContactType
pattern ContactTypePERSON = ContactType' "PERSON"

pattern ContactTypePUBLICBODY :: ContactType
pattern ContactTypePUBLICBODY = ContactType' "PUBLIC_BODY"

pattern ContactTypeRESELLER :: ContactType
pattern ContactTypeRESELLER = ContactType' "RESELLER"

{-# COMPLETE
  ContactTypeASSOCIATION,
  ContactTypeCOMPANY,
  ContactTypePERSON,
  ContactTypePUBLICBODY,
  ContactTypeRESELLER,
  ContactType'
  #-}

instance Prelude.FromText ContactType where
  parser = ContactType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ContactType where
  toText (ContactType' x) = x

instance Prelude.Hashable ContactType

instance Prelude.NFData ContactType

instance Prelude.ToByteString ContactType

instance Prelude.ToQuery ContactType

instance Prelude.ToHeader ContactType

instance Prelude.ToJSON ContactType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ContactType where
  parseJSON = Prelude.parseJSONText "ContactType"
