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
-- Module      : Network.AWS.Greengrass.Types.LoggerType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Greengrass.Types.LoggerType
  ( LoggerType
      ( ..,
        LoggerTypeAWSCloudWatch,
        LoggerTypeFileSystem
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LoggerType = LoggerType'
  { fromLoggerType ::
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

pattern LoggerTypeAWSCloudWatch :: LoggerType
pattern LoggerTypeAWSCloudWatch = LoggerType' "AWSCloudWatch"

pattern LoggerTypeFileSystem :: LoggerType
pattern LoggerTypeFileSystem = LoggerType' "FileSystem"

{-# COMPLETE
  LoggerTypeAWSCloudWatch,
  LoggerTypeFileSystem,
  LoggerType'
  #-}

instance Prelude.FromText LoggerType where
  parser = LoggerType' Prelude.<$> Prelude.takeText

instance Prelude.ToText LoggerType where
  toText (LoggerType' x) = x

instance Prelude.Hashable LoggerType

instance Prelude.NFData LoggerType

instance Prelude.ToByteString LoggerType

instance Prelude.ToQuery LoggerType

instance Prelude.ToHeader LoggerType

instance Prelude.ToJSON LoggerType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON LoggerType where
  parseJSON = Prelude.parseJSONText "LoggerType"
