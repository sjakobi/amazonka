{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentity.Types.RoleMappingType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentity.Types.RoleMappingType
  ( RoleMappingType
      ( ..,
        Rules,
        Token
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RoleMappingType = RoleMappingType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Rules :: RoleMappingType
pattern Rules = RoleMappingType' "Rules"

pattern Token :: RoleMappingType
pattern Token = RoleMappingType' "Token"

{-# COMPLETE
  Rules,
  Token,
  RoleMappingType'
  #-}

instance FromText RoleMappingType where
  parser = (RoleMappingType' . mk) <$> takeText

instance ToText RoleMappingType where
  toText (RoleMappingType' ci) = original ci

instance Hashable RoleMappingType

instance NFData RoleMappingType

instance ToByteString RoleMappingType

instance ToQuery RoleMappingType

instance ToHeader RoleMappingType

instance ToJSON RoleMappingType where
  toJSON = toJSONText

instance FromJSON RoleMappingType where
  parseJSON = parseJSONText "RoleMappingType"
