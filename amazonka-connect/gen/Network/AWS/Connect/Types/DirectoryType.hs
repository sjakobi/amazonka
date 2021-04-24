{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.DirectoryType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.DirectoryType
  ( DirectoryType
      ( ..,
        ConnectManaged,
        ExistingDirectory,
        Saml
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DirectoryType = DirectoryType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ConnectManaged :: DirectoryType
pattern ConnectManaged = DirectoryType' "CONNECT_MANAGED"

pattern ExistingDirectory :: DirectoryType
pattern ExistingDirectory = DirectoryType' "EXISTING_DIRECTORY"

pattern Saml :: DirectoryType
pattern Saml = DirectoryType' "SAML"

{-# COMPLETE
  ConnectManaged,
  ExistingDirectory,
  Saml,
  DirectoryType'
  #-}

instance FromText DirectoryType where
  parser = (DirectoryType' . mk) <$> takeText

instance ToText DirectoryType where
  toText (DirectoryType' ci) = original ci

instance Hashable DirectoryType

instance NFData DirectoryType

instance ToByteString DirectoryType

instance ToQuery DirectoryType

instance ToHeader DirectoryType

instance ToJSON DirectoryType where
  toJSON = toJSONText

instance FromJSON DirectoryType where
  parseJSON = parseJSONText "DirectoryType"
