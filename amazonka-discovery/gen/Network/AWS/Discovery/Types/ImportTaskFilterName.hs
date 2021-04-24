{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Discovery.Types.ImportTaskFilterName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Discovery.Types.ImportTaskFilterName
  ( ImportTaskFilterName
      ( ..,
        ImportTaskId,
        Name,
        Status
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ImportTaskFilterName
  = ImportTaskFilterName'
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

pattern ImportTaskId :: ImportTaskFilterName
pattern ImportTaskId = ImportTaskFilterName' "IMPORT_TASK_ID"

pattern Name :: ImportTaskFilterName
pattern Name = ImportTaskFilterName' "NAME"

pattern Status :: ImportTaskFilterName
pattern Status = ImportTaskFilterName' "STATUS"

{-# COMPLETE
  ImportTaskId,
  Name,
  Status,
  ImportTaskFilterName'
  #-}

instance FromText ImportTaskFilterName where
  parser = (ImportTaskFilterName' . mk) <$> takeText

instance ToText ImportTaskFilterName where
  toText (ImportTaskFilterName' ci) = original ci

instance Hashable ImportTaskFilterName

instance NFData ImportTaskFilterName

instance ToByteString ImportTaskFilterName

instance ToQuery ImportTaskFilterName

instance ToHeader ImportTaskFilterName

instance ToJSON ImportTaskFilterName where
  toJSON = toJSONText
