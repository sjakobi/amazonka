{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Invalid,
        PendingVerification,
        Valid
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ContactMethodStatus
  = ContactMethodStatus'
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

pattern Invalid :: ContactMethodStatus
pattern Invalid = ContactMethodStatus' "Invalid"

pattern PendingVerification :: ContactMethodStatus
pattern PendingVerification = ContactMethodStatus' "PendingVerification"

pattern Valid :: ContactMethodStatus
pattern Valid = ContactMethodStatus' "Valid"

{-# COMPLETE
  Invalid,
  PendingVerification,
  Valid,
  ContactMethodStatus'
  #-}

instance FromText ContactMethodStatus where
  parser = (ContactMethodStatus' . mk) <$> takeText

instance ToText ContactMethodStatus where
  toText (ContactMethodStatus' ci) = original ci

instance Hashable ContactMethodStatus

instance NFData ContactMethodStatus

instance ToByteString ContactMethodStatus

instance ToQuery ContactMethodStatus

instance ToHeader ContactMethodStatus

instance FromJSON ContactMethodStatus where
  parseJSON = parseJSONText "ContactMethodStatus"
