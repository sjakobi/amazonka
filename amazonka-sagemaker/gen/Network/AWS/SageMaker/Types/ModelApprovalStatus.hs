{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ModelApprovalStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelApprovalStatus
  ( ModelApprovalStatus
      ( ..,
        Approved,
        PendingManualApproval,
        Rejected
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ModelApprovalStatus
  = ModelApprovalStatus'
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

pattern Approved :: ModelApprovalStatus
pattern Approved = ModelApprovalStatus' "Approved"

pattern PendingManualApproval :: ModelApprovalStatus
pattern PendingManualApproval = ModelApprovalStatus' "PendingManualApproval"

pattern Rejected :: ModelApprovalStatus
pattern Rejected = ModelApprovalStatus' "Rejected"

{-# COMPLETE
  Approved,
  PendingManualApproval,
  Rejected,
  ModelApprovalStatus'
  #-}

instance FromText ModelApprovalStatus where
  parser = (ModelApprovalStatus' . mk) <$> takeText

instance ToText ModelApprovalStatus where
  toText (ModelApprovalStatus' ci) = original ci

instance Hashable ModelApprovalStatus

instance NFData ModelApprovalStatus

instance ToByteString ModelApprovalStatus

instance ToQuery ModelApprovalStatus

instance ToHeader ModelApprovalStatus

instance ToJSON ModelApprovalStatus where
  toJSON = toJSONText

instance FromJSON ModelApprovalStatus where
  parseJSON = parseJSONText "ModelApprovalStatus"
