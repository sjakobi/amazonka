{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ListDeviceFleetsSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ListDeviceFleetsSortBy
  ( ListDeviceFleetsSortBy
      ( ..,
        LDFSBCreationTime,
        LDFSBLastModifiedTime,
        LDFSBName
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ListDeviceFleetsSortBy
  = ListDeviceFleetsSortBy'
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

pattern LDFSBCreationTime :: ListDeviceFleetsSortBy
pattern LDFSBCreationTime = ListDeviceFleetsSortBy' "CREATION_TIME"

pattern LDFSBLastModifiedTime :: ListDeviceFleetsSortBy
pattern LDFSBLastModifiedTime = ListDeviceFleetsSortBy' "LAST_MODIFIED_TIME"

pattern LDFSBName :: ListDeviceFleetsSortBy
pattern LDFSBName = ListDeviceFleetsSortBy' "NAME"

{-# COMPLETE
  LDFSBCreationTime,
  LDFSBLastModifiedTime,
  LDFSBName,
  ListDeviceFleetsSortBy'
  #-}

instance FromText ListDeviceFleetsSortBy where
  parser = (ListDeviceFleetsSortBy' . mk) <$> takeText

instance ToText ListDeviceFleetsSortBy where
  toText (ListDeviceFleetsSortBy' ci) = original ci

instance Hashable ListDeviceFleetsSortBy

instance NFData ListDeviceFleetsSortBy

instance ToByteString ListDeviceFleetsSortBy

instance ToQuery ListDeviceFleetsSortBy

instance ToHeader ListDeviceFleetsSortBy

instance ToJSON ListDeviceFleetsSortBy where
  toJSON = toJSONText
