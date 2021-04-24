{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.AccountGateStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.AccountGateStatus
  ( AccountGateStatus
      ( ..,
        Failed,
        Skipped,
        Succeeded
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AccountGateStatus = AccountGateStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Failed :: AccountGateStatus
pattern Failed = AccountGateStatus' "FAILED"

pattern Skipped :: AccountGateStatus
pattern Skipped = AccountGateStatus' "SKIPPED"

pattern Succeeded :: AccountGateStatus
pattern Succeeded = AccountGateStatus' "SUCCEEDED"

{-# COMPLETE
  Failed,
  Skipped,
  Succeeded,
  AccountGateStatus'
  #-}

instance FromText AccountGateStatus where
  parser = (AccountGateStatus' . mk) <$> takeText

instance ToText AccountGateStatus where
  toText (AccountGateStatus' ci) = original ci

instance Hashable AccountGateStatus

instance NFData AccountGateStatus

instance ToByteString AccountGateStatus

instance ToQuery AccountGateStatus

instance ToHeader AccountGateStatus

instance FromXML AccountGateStatus where
  parseXML = parseXMLText "AccountGateStatus"
