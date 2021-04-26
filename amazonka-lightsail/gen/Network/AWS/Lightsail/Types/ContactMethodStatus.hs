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
-- Module      : Network.AWS.Lightsail.Types.ContactMethodStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.ContactMethodStatus
  ( ContactMethodStatus
      ( ..,
        ContactMethodStatusInvalid,
        ContactMethodStatusPendingVerification,
        ContactMethodStatusValid
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ContactMethodStatus = ContactMethodStatus'
  { fromContactMethodStatus ::
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

pattern ContactMethodStatusInvalid :: ContactMethodStatus
pattern ContactMethodStatusInvalid = ContactMethodStatus' "Invalid"

pattern ContactMethodStatusPendingVerification :: ContactMethodStatus
pattern ContactMethodStatusPendingVerification = ContactMethodStatus' "PendingVerification"

pattern ContactMethodStatusValid :: ContactMethodStatus
pattern ContactMethodStatusValid = ContactMethodStatus' "Valid"

{-# COMPLETE
  ContactMethodStatusInvalid,
  ContactMethodStatusPendingVerification,
  ContactMethodStatusValid,
  ContactMethodStatus'
  #-}

instance Prelude.FromText ContactMethodStatus where
  parser = ContactMethodStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ContactMethodStatus where
  toText (ContactMethodStatus' x) = x

instance Prelude.Hashable ContactMethodStatus

instance Prelude.NFData ContactMethodStatus

instance Prelude.ToByteString ContactMethodStatus

instance Prelude.ToQuery ContactMethodStatus

instance Prelude.ToHeader ContactMethodStatus

instance Prelude.FromJSON ContactMethodStatus where
  parseJSON = Prelude.parseJSONText "ContactMethodStatus"
