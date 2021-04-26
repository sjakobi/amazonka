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
-- Module      : Network.AWS.Lightsail.Types.ContactMethodVerificationProtocol
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.ContactMethodVerificationProtocol
  ( ContactMethodVerificationProtocol
      ( ..,
        ContactMethodVerificationProtocolEmail
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ContactMethodVerificationProtocol = ContactMethodVerificationProtocol'
  { fromContactMethodVerificationProtocol ::
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

pattern ContactMethodVerificationProtocolEmail :: ContactMethodVerificationProtocol
pattern ContactMethodVerificationProtocolEmail = ContactMethodVerificationProtocol' "Email"

{-# COMPLETE
  ContactMethodVerificationProtocolEmail,
  ContactMethodVerificationProtocol'
  #-}

instance Prelude.FromText ContactMethodVerificationProtocol where
  parser = ContactMethodVerificationProtocol' Prelude.<$> Prelude.takeText

instance Prelude.ToText ContactMethodVerificationProtocol where
  toText (ContactMethodVerificationProtocol' x) = x

instance Prelude.Hashable ContactMethodVerificationProtocol

instance Prelude.NFData ContactMethodVerificationProtocol

instance Prelude.ToByteString ContactMethodVerificationProtocol

instance Prelude.ToQuery ContactMethodVerificationProtocol

instance Prelude.ToHeader ContactMethodVerificationProtocol

instance Prelude.ToJSON ContactMethodVerificationProtocol where
  toJSON = Prelude.toJSONText
