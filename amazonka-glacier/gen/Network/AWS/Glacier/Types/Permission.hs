{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glacier.Types.Permission
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glacier.Types.Permission
  ( Permission
      ( ..,
        FullControl,
        Read,
        ReadAcp,
        Write,
        WriteAcp
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

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

pattern FullControl :: Permission
pattern FullControl = Permission' "FULL_CONTROL"

pattern Read :: Permission
pattern Read = Permission' "READ"

pattern ReadAcp :: Permission
pattern ReadAcp = Permission' "READ_ACP"

pattern Write :: Permission
pattern Write = Permission' "WRITE"

pattern WriteAcp :: Permission
pattern WriteAcp = Permission' "WRITE_ACP"

{-# COMPLETE
  FullControl,
  Read,
  ReadAcp,
  Write,
  WriteAcp,
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
