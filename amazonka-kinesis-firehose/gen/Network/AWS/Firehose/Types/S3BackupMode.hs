{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Firehose.Types.S3BackupMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.S3BackupMode
  ( S3BackupMode
      ( ..,
        SBMDisabled,
        SBMEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data S3BackupMode = S3BackupMode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SBMDisabled :: S3BackupMode
pattern SBMDisabled = S3BackupMode' "Disabled"

pattern SBMEnabled :: S3BackupMode
pattern SBMEnabled = S3BackupMode' "Enabled"

{-# COMPLETE
  SBMDisabled,
  SBMEnabled,
  S3BackupMode'
  #-}

instance FromText S3BackupMode where
  parser = (S3BackupMode' . mk) <$> takeText

instance ToText S3BackupMode where
  toText (S3BackupMode' ci) = original ci

instance Hashable S3BackupMode

instance NFData S3BackupMode

instance ToByteString S3BackupMode

instance ToQuery S3BackupMode

instance ToHeader S3BackupMode

instance ToJSON S3BackupMode where
  toJSON = toJSONText

instance FromJSON S3BackupMode where
  parseJSON = parseJSONText "S3BackupMode"
