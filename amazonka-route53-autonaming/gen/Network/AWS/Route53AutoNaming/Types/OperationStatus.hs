{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53AutoNaming.Types.OperationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53AutoNaming.Types.OperationStatus
  ( OperationStatus
      ( ..,
        Fail,
        Pending,
        Submitted,
        Success
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OperationStatus = OperationStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Fail :: OperationStatus
pattern Fail = OperationStatus' "FAIL"

pattern Pending :: OperationStatus
pattern Pending = OperationStatus' "PENDING"

pattern Submitted :: OperationStatus
pattern Submitted = OperationStatus' "SUBMITTED"

pattern Success :: OperationStatus
pattern Success = OperationStatus' "SUCCESS"

{-# COMPLETE
  Fail,
  Pending,
  Submitted,
  Success,
  OperationStatus'
  #-}

instance FromText OperationStatus where
  parser = (OperationStatus' . mk) <$> takeText

instance ToText OperationStatus where
  toText (OperationStatus' ci) = original ci

instance Hashable OperationStatus

instance NFData OperationStatus

instance ToByteString OperationStatus

instance ToQuery OperationStatus

instance ToHeader OperationStatus

instance FromJSON OperationStatus where
  parseJSON = parseJSONText "OperationStatus"
