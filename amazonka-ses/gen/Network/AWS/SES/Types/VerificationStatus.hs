{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.Types.VerificationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.VerificationStatus
  ( VerificationStatus
      ( ..,
        Failed,
        NotStarted,
        Pending,
        Success,
        TemporaryFailure
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data VerificationStatus
  = VerificationStatus'
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

pattern Failed :: VerificationStatus
pattern Failed = VerificationStatus' "Failed"

pattern NotStarted :: VerificationStatus
pattern NotStarted = VerificationStatus' "NotStarted"

pattern Pending :: VerificationStatus
pattern Pending = VerificationStatus' "Pending"

pattern Success :: VerificationStatus
pattern Success = VerificationStatus' "Success"

pattern TemporaryFailure :: VerificationStatus
pattern TemporaryFailure = VerificationStatus' "TemporaryFailure"

{-# COMPLETE
  Failed,
  NotStarted,
  Pending,
  Success,
  TemporaryFailure,
  VerificationStatus'
  #-}

instance FromText VerificationStatus where
  parser = (VerificationStatus' . mk) <$> takeText

instance ToText VerificationStatus where
  toText (VerificationStatus' ci) = original ci

instance Hashable VerificationStatus

instance NFData VerificationStatus

instance ToByteString VerificationStatus

instance ToQuery VerificationStatus

instance ToHeader VerificationStatus

instance FromXML VerificationStatus where
  parseXML = parseXMLText "VerificationStatus"
