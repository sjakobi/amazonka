{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Email,
        Sms
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ContactProtocol = ContactProtocol' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Email :: ContactProtocol
pattern Email = ContactProtocol' "Email"

pattern Sms :: ContactProtocol
pattern Sms = ContactProtocol' "SMS"

{-# COMPLETE
  Email,
  Sms,
  ContactProtocol'
  #-}

instance FromText ContactProtocol where
  parser = (ContactProtocol' . mk) <$> takeText

instance ToText ContactProtocol where
  toText (ContactProtocol' ci) = original ci

instance Hashable ContactProtocol

instance NFData ContactProtocol

instance ToByteString ContactProtocol

instance ToQuery ContactProtocol

instance ToHeader ContactProtocol

instance ToJSON ContactProtocol where
  toJSON = toJSONText

instance FromJSON ContactProtocol where
  parseJSON = parseJSONText "ContactProtocol"
