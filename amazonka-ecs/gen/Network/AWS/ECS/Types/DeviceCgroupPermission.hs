{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.DeviceCgroupPermission
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.DeviceCgroupPermission
  ( DeviceCgroupPermission
      ( ..,
        Mknod,
        Read,
        Write
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DeviceCgroupPermission
  = DeviceCgroupPermission'
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

pattern Mknod :: DeviceCgroupPermission
pattern Mknod = DeviceCgroupPermission' "mknod"

pattern Read :: DeviceCgroupPermission
pattern Read = DeviceCgroupPermission' "read"

pattern Write :: DeviceCgroupPermission
pattern Write = DeviceCgroupPermission' "write"

{-# COMPLETE
  Mknod,
  Read,
  Write,
  DeviceCgroupPermission'
  #-}

instance FromText DeviceCgroupPermission where
  parser = (DeviceCgroupPermission' . mk) <$> takeText

instance ToText DeviceCgroupPermission where
  toText (DeviceCgroupPermission' ci) = original ci

instance Hashable DeviceCgroupPermission

instance NFData DeviceCgroupPermission

instance ToByteString DeviceCgroupPermission

instance ToQuery DeviceCgroupPermission

instance ToHeader DeviceCgroupPermission

instance ToJSON DeviceCgroupPermission where
  toJSON = toJSONText

instance FromJSON DeviceCgroupPermission where
  parseJSON = parseJSONText "DeviceCgroupPermission"
