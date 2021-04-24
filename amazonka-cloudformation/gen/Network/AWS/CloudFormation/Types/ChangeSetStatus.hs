{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.ChangeSetStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.ChangeSetStatus
  ( ChangeSetStatus
      ( ..,
        CSSCreateComplete,
        CSSCreateInProgress,
        CSSCreatePending,
        CSSDeleteComplete,
        CSSDeleteFailed,
        CSSDeleteInProgress,
        CSSDeletePending,
        CSSFailed
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ChangeSetStatus = ChangeSetStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CSSCreateComplete :: ChangeSetStatus
pattern CSSCreateComplete = ChangeSetStatus' "CREATE_COMPLETE"

pattern CSSCreateInProgress :: ChangeSetStatus
pattern CSSCreateInProgress = ChangeSetStatus' "CREATE_IN_PROGRESS"

pattern CSSCreatePending :: ChangeSetStatus
pattern CSSCreatePending = ChangeSetStatus' "CREATE_PENDING"

pattern CSSDeleteComplete :: ChangeSetStatus
pattern CSSDeleteComplete = ChangeSetStatus' "DELETE_COMPLETE"

pattern CSSDeleteFailed :: ChangeSetStatus
pattern CSSDeleteFailed = ChangeSetStatus' "DELETE_FAILED"

pattern CSSDeleteInProgress :: ChangeSetStatus
pattern CSSDeleteInProgress = ChangeSetStatus' "DELETE_IN_PROGRESS"

pattern CSSDeletePending :: ChangeSetStatus
pattern CSSDeletePending = ChangeSetStatus' "DELETE_PENDING"

pattern CSSFailed :: ChangeSetStatus
pattern CSSFailed = ChangeSetStatus' "FAILED"

{-# COMPLETE
  CSSCreateComplete,
  CSSCreateInProgress,
  CSSCreatePending,
  CSSDeleteComplete,
  CSSDeleteFailed,
  CSSDeleteInProgress,
  CSSDeletePending,
  CSSFailed,
  ChangeSetStatus'
  #-}

instance FromText ChangeSetStatus where
  parser = (ChangeSetStatus' . mk) <$> takeText

instance ToText ChangeSetStatus where
  toText (ChangeSetStatus' ci) = original ci

instance Hashable ChangeSetStatus

instance NFData ChangeSetStatus

instance ToByteString ChangeSetStatus

instance ToQuery ChangeSetStatus

instance ToHeader ChangeSetStatus

instance FromXML ChangeSetStatus where
  parseXML = parseXMLText "ChangeSetStatus"
