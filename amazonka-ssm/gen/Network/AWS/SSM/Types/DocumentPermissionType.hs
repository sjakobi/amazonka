{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.DocumentPermissionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.DocumentPermissionType
  ( DocumentPermissionType
      ( ..,
        Share
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DocumentPermissionType
  = DocumentPermissionType'
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

pattern Share :: DocumentPermissionType
pattern Share = DocumentPermissionType' "Share"

{-# COMPLETE
  Share,
  DocumentPermissionType'
  #-}

instance FromText DocumentPermissionType where
  parser = (DocumentPermissionType' . mk) <$> takeText

instance ToText DocumentPermissionType where
  toText (DocumentPermissionType' ci) = original ci

instance Hashable DocumentPermissionType

instance NFData DocumentPermissionType

instance ToByteString DocumentPermissionType

instance ToQuery DocumentPermissionType

instance ToHeader DocumentPermissionType

instance ToJSON DocumentPermissionType where
  toJSON = toJSONText
