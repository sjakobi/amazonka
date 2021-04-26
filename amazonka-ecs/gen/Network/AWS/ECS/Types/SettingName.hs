{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        SettingNameAwsvpcTrunking,
        SettingNameContainerInsights,
        SettingNameContainerInstanceLongArnFormat,
        SettingNameServiceLongArnFormat,
        SettingNameTaskLongArnFormat
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SettingName = SettingName'
  { fromSettingName ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern SettingNameAwsvpcTrunking :: SettingName
pattern SettingNameAwsvpcTrunking = SettingName' "awsvpcTrunking"

pattern SettingNameContainerInsights :: SettingName
pattern SettingNameContainerInsights = SettingName' "containerInsights"

pattern SettingNameContainerInstanceLongArnFormat :: SettingName
pattern SettingNameContainerInstanceLongArnFormat = SettingName' "containerInstanceLongArnFormat"

pattern SettingNameServiceLongArnFormat :: SettingName
pattern SettingNameServiceLongArnFormat = SettingName' "serviceLongArnFormat"

pattern SettingNameTaskLongArnFormat :: SettingName
pattern SettingNameTaskLongArnFormat = SettingName' "taskLongArnFormat"

{-# COMPLETE
  SettingNameAwsvpcTrunking,
  SettingNameContainerInsights,
  SettingNameContainerInstanceLongArnFormat,
  SettingNameServiceLongArnFormat,
  SettingNameTaskLongArnFormat,
  SettingName'
  #-}

instance Prelude.FromText SettingName where
  parser = SettingName' Prelude.<$> Prelude.takeText

instance Prelude.ToText SettingName where
  toText (SettingName' x) = x

instance Prelude.Hashable SettingName

instance Prelude.NFData SettingName

instance Prelude.ToByteString SettingName

instance Prelude.ToQuery SettingName

instance Prelude.ToHeader SettingName

instance Prelude.ToJSON SettingName where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SettingName where
  parseJSON = Prelude.parseJSONText "SettingName"
