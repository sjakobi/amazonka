{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.LDAPSType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.LDAPSType
  ( LDAPSType
      ( ..,
        Client
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LDAPSType = LDAPSType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Client :: LDAPSType
pattern Client = LDAPSType' "Client"

{-# COMPLETE
  Client,
  LDAPSType'
  #-}

instance FromText LDAPSType where
  parser = (LDAPSType' . mk) <$> takeText

instance ToText LDAPSType where
  toText (LDAPSType' ci) = original ci

instance Hashable LDAPSType

instance NFData LDAPSType

instance ToByteString LDAPSType

instance ToQuery LDAPSType

instance ToHeader LDAPSType

instance ToJSON LDAPSType where
  toJSON = toJSONText
