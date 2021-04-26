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
-- Module      : Network.AWS.CodeBuild.Types.LogsConfigStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.LogsConfigStatusType
  ( LogsConfigStatusType
      ( ..,
        LogsConfigStatusTypeDISABLED,
        LogsConfigStatusTypeENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LogsConfigStatusType = LogsConfigStatusType'
  { fromLogsConfigStatusType ::
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

pattern LogsConfigStatusTypeDISABLED :: LogsConfigStatusType
pattern LogsConfigStatusTypeDISABLED = LogsConfigStatusType' "DISABLED"

pattern LogsConfigStatusTypeENABLED :: LogsConfigStatusType
pattern LogsConfigStatusTypeENABLED = LogsConfigStatusType' "ENABLED"

{-# COMPLETE
  LogsConfigStatusTypeDISABLED,
  LogsConfigStatusTypeENABLED,
  LogsConfigStatusType'
  #-}

instance Prelude.FromText LogsConfigStatusType where
  parser = LogsConfigStatusType' Prelude.<$> Prelude.takeText

instance Prelude.ToText LogsConfigStatusType where
  toText (LogsConfigStatusType' x) = x

instance Prelude.Hashable LogsConfigStatusType

instance Prelude.NFData LogsConfigStatusType

instance Prelude.ToByteString LogsConfigStatusType

instance Prelude.ToQuery LogsConfigStatusType

instance Prelude.ToHeader LogsConfigStatusType

instance Prelude.ToJSON LogsConfigStatusType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON LogsConfigStatusType where
  parseJSON = Prelude.parseJSONText "LogsConfigStatusType"
