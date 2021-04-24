{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Greengrass.Types.Permission
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Greengrass.Types.Permission
  ( Permission
      ( ..,
        RO,
        RW
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The type of permission a function has to access a resource.
data Permission = Permission' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern RO :: Permission
pattern RO = Permission' "ro"

pattern RW :: Permission
pattern RW = Permission' "rw"

{-# COMPLETE
  RO,
  RW,
  Permission'
  #-}

instance FromText Permission where
  parser = (Permission' . mk) <$> takeText

instance ToText Permission where
  toText (Permission' ci) = original ci

instance Hashable Permission

instance NFData Permission

instance ToByteString Permission

instance ToQuery Permission

instance ToHeader Permission

instance ToJSON Permission where
  toJSON = toJSONText

instance FromJSON Permission where
  parseJSON = parseJSONText "Permission"
