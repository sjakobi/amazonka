{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.EntityType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.EntityType
  ( EntityType
      ( ..,
        ETAWSManagedPolicy,
        ETGroup,
        ETLocalManagedPolicy,
        ETRole,
        ETUser
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EntityType = EntityType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ETAWSManagedPolicy :: EntityType
pattern ETAWSManagedPolicy = EntityType' "AWSManagedPolicy"

pattern ETGroup :: EntityType
pattern ETGroup = EntityType' "Group"

pattern ETLocalManagedPolicy :: EntityType
pattern ETLocalManagedPolicy = EntityType' "LocalManagedPolicy"

pattern ETRole :: EntityType
pattern ETRole = EntityType' "Role"

pattern ETUser :: EntityType
pattern ETUser = EntityType' "User"

{-# COMPLETE
  ETAWSManagedPolicy,
  ETGroup,
  ETLocalManagedPolicy,
  ETRole,
  ETUser,
  EntityType'
  #-}

instance FromText EntityType where
  parser = (EntityType' . mk) <$> takeText

instance ToText EntityType where
  toText (EntityType' ci) = original ci

instance Hashable EntityType

instance NFData EntityType

instance ToByteString EntityType

instance ToQuery EntityType

instance ToHeader EntityType
