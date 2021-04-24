{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.Types.CustomMailFromStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.CustomMailFromStatus
  ( CustomMailFromStatus
      ( ..,
        CMFSFailed,
        CMFSPending,
        CMFSSuccess,
        CMFSTemporaryFailure
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CustomMailFromStatus
  = CustomMailFromStatus'
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

pattern CMFSFailed :: CustomMailFromStatus
pattern CMFSFailed = CustomMailFromStatus' "Failed"

pattern CMFSPending :: CustomMailFromStatus
pattern CMFSPending = CustomMailFromStatus' "Pending"

pattern CMFSSuccess :: CustomMailFromStatus
pattern CMFSSuccess = CustomMailFromStatus' "Success"

pattern CMFSTemporaryFailure :: CustomMailFromStatus
pattern CMFSTemporaryFailure = CustomMailFromStatus' "TemporaryFailure"

{-# COMPLETE
  CMFSFailed,
  CMFSPending,
  CMFSSuccess,
  CMFSTemporaryFailure,
  CustomMailFromStatus'
  #-}

instance FromText CustomMailFromStatus where
  parser = (CustomMailFromStatus' . mk) <$> takeText

instance ToText CustomMailFromStatus where
  toText (CustomMailFromStatus' ci) = original ci

instance Hashable CustomMailFromStatus

instance NFData CustomMailFromStatus

instance ToByteString CustomMailFromStatus

instance ToQuery CustomMailFromStatus

instance ToHeader CustomMailFromStatus

instance FromXML CustomMailFromStatus where
  parseXML = parseXMLText "CustomMailFromStatus"
