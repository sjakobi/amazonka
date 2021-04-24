{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.ContinuousBackupsStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.ContinuousBackupsStatus
  ( ContinuousBackupsStatus
      ( ..,
        CBSDisabled,
        CBSEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ContinuousBackupsStatus
  = ContinuousBackupsStatus'
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

pattern CBSDisabled :: ContinuousBackupsStatus
pattern CBSDisabled = ContinuousBackupsStatus' "DISABLED"

pattern CBSEnabled :: ContinuousBackupsStatus
pattern CBSEnabled = ContinuousBackupsStatus' "ENABLED"

{-# COMPLETE
  CBSDisabled,
  CBSEnabled,
  ContinuousBackupsStatus'
  #-}

instance FromText ContinuousBackupsStatus where
  parser = (ContinuousBackupsStatus' . mk) <$> takeText

instance ToText ContinuousBackupsStatus where
  toText (ContinuousBackupsStatus' ci) = original ci

instance Hashable ContinuousBackupsStatus

instance NFData ContinuousBackupsStatus

instance ToByteString ContinuousBackupsStatus

instance ToQuery ContinuousBackupsStatus

instance ToHeader ContinuousBackupsStatus

instance FromJSON ContinuousBackupsStatus where
  parseJSON = parseJSONText "ContinuousBackupsStatus"
