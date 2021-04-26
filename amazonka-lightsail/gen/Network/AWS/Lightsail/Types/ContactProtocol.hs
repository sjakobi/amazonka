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
-- Module      : Network.AWS.Lightsail.Types.ContactProtocol
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.ContactProtocol
  ( ContactProtocol
      ( ..,
        ContactProtocolEmail,
        ContactProtocolSMS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ContactProtocol = ContactProtocol'
  { fromContactProtocol ::
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

pattern ContactProtocolEmail :: ContactProtocol
pattern ContactProtocolEmail = ContactProtocol' "Email"

pattern ContactProtocolSMS :: ContactProtocol
pattern ContactProtocolSMS = ContactProtocol' "SMS"

{-# COMPLETE
  ContactProtocolEmail,
  ContactProtocolSMS,
  ContactProtocol'
  #-}

instance Prelude.FromText ContactProtocol where
  parser = ContactProtocol' Prelude.<$> Prelude.takeText

instance Prelude.ToText ContactProtocol where
  toText (ContactProtocol' x) = x

instance Prelude.Hashable ContactProtocol

instance Prelude.NFData ContactProtocol

instance Prelude.ToByteString ContactProtocol

instance Prelude.ToQuery ContactProtocol

instance Prelude.ToHeader ContactProtocol

instance Prelude.ToJSON ContactProtocol where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ContactProtocol where
  parseJSON = Prelude.parseJSONText "ContactProtocol"
