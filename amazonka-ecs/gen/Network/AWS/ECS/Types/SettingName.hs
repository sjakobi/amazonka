{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.SettingName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.SettingName
  ( SettingName
      ( ..,
        SNAWSvpcTrunking,
        SNContainerInsights,
        SNContainerInstanceLongARNFormat,
        SNServiceLongARNFormat,
        SNTaskLongARNFormat
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SettingName = SettingName' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SNAWSvpcTrunking :: SettingName
pattern SNAWSvpcTrunking = SettingName' "awsvpcTrunking"

pattern SNContainerInsights :: SettingName
pattern SNContainerInsights = SettingName' "containerInsights"

pattern SNContainerInstanceLongARNFormat :: SettingName
pattern SNContainerInstanceLongARNFormat = SettingName' "containerInstanceLongArnFormat"

pattern SNServiceLongARNFormat :: SettingName
pattern SNServiceLongARNFormat = SettingName' "serviceLongArnFormat"

pattern SNTaskLongARNFormat :: SettingName
pattern SNTaskLongARNFormat = SettingName' "taskLongArnFormat"

{-# COMPLETE
  SNAWSvpcTrunking,
  SNContainerInsights,
  SNContainerInstanceLongARNFormat,
  SNServiceLongARNFormat,
  SNTaskLongARNFormat,
  SettingName'
  #-}

instance FromText SettingName where
  parser = (SettingName' . mk) <$> takeText

instance ToText SettingName where
  toText (SettingName' ci) = original ci

instance Hashable SettingName

instance NFData SettingName

instance ToByteString SettingName

instance ToQuery SettingName

instance ToHeader SettingName

instance ToJSON SettingName where
  toJSON = toJSONText

instance FromJSON SettingName where
  parseJSON = parseJSONText "SettingName"
