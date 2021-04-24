{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.LogsConfigStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.LogsConfigStatusType
  ( LogsConfigStatusType
      ( ..,
        Disabled,
        Enabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LogsConfigStatusType
  = LogsConfigStatusType'
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

pattern Disabled :: LogsConfigStatusType
pattern Disabled = LogsConfigStatusType' "DISABLED"

pattern Enabled :: LogsConfigStatusType
pattern Enabled = LogsConfigStatusType' "ENABLED"

{-# COMPLETE
  Disabled,
  Enabled,
  LogsConfigStatusType'
  #-}

instance FromText LogsConfigStatusType where
  parser = (LogsConfigStatusType' . mk) <$> takeText

instance ToText LogsConfigStatusType where
  toText (LogsConfigStatusType' ci) = original ci

instance Hashable LogsConfigStatusType

instance NFData LogsConfigStatusType

instance ToByteString LogsConfigStatusType

instance ToQuery LogsConfigStatusType

instance ToHeader LogsConfigStatusType

instance ToJSON LogsConfigStatusType where
  toJSON = toJSONText

instance FromJSON LogsConfigStatusType where
  parseJSON = parseJSONText "LogsConfigStatusType"
