{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.ApprovalStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ApprovalStatus
  ( ApprovalStatus
      ( ..,
        Approved,
        Rejected
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ApprovalStatus = ApprovalStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Approved :: ApprovalStatus
pattern Approved = ApprovalStatus' "Approved"

pattern Rejected :: ApprovalStatus
pattern Rejected = ApprovalStatus' "Rejected"

{-# COMPLETE
  Approved,
  Rejected,
  ApprovalStatus'
  #-}

instance FromText ApprovalStatus where
  parser = (ApprovalStatus' . mk) <$> takeText

instance ToText ApprovalStatus where
  toText (ApprovalStatus' ci) = original ci

instance Hashable ApprovalStatus

instance NFData ApprovalStatus

instance ToByteString ApprovalStatus

instance ToQuery ApprovalStatus

instance ToHeader ApprovalStatus

instance ToJSON ApprovalStatus where
  toJSON = toJSONText
