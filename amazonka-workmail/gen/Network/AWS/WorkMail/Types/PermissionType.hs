{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkMail.Types.PermissionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkMail.Types.PermissionType
  ( PermissionType
      ( ..,
        FullAccess,
        SendAs,
        SendOnBehalf
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PermissionType = PermissionType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern FullAccess :: PermissionType
pattern FullAccess = PermissionType' "FULL_ACCESS"

pattern SendAs :: PermissionType
pattern SendAs = PermissionType' "SEND_AS"

pattern SendOnBehalf :: PermissionType
pattern SendOnBehalf = PermissionType' "SEND_ON_BEHALF"

{-# COMPLETE
  FullAccess,
  SendAs,
  SendOnBehalf,
  PermissionType'
  #-}

instance FromText PermissionType where
  parser = (PermissionType' . mk) <$> takeText

instance ToText PermissionType where
  toText (PermissionType' ci) = original ci

instance Hashable PermissionType

instance NFData PermissionType

instance ToByteString PermissionType

instance ToQuery PermissionType

instance ToHeader PermissionType

instance ToJSON PermissionType where
  toJSON = toJSONText

instance FromJSON PermissionType where
  parseJSON = parseJSONText "PermissionType"
