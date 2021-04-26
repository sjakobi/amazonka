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
-- Module      : Network.AWS.SES.Types.VerificationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.VerificationStatus
  ( VerificationStatus
      ( ..,
        VerificationStatusFailed,
        VerificationStatusNotStarted,
        VerificationStatusPending,
        VerificationStatusSuccess,
        VerificationStatusTemporaryFailure
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype VerificationStatus = VerificationStatus'
  { fromVerificationStatus ::
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

pattern VerificationStatusFailed :: VerificationStatus
pattern VerificationStatusFailed = VerificationStatus' "Failed"

pattern VerificationStatusNotStarted :: VerificationStatus
pattern VerificationStatusNotStarted = VerificationStatus' "NotStarted"

pattern VerificationStatusPending :: VerificationStatus
pattern VerificationStatusPending = VerificationStatus' "Pending"

pattern VerificationStatusSuccess :: VerificationStatus
pattern VerificationStatusSuccess = VerificationStatus' "Success"

pattern VerificationStatusTemporaryFailure :: VerificationStatus
pattern VerificationStatusTemporaryFailure = VerificationStatus' "TemporaryFailure"

{-# COMPLETE
  VerificationStatusFailed,
  VerificationStatusNotStarted,
  VerificationStatusPending,
  VerificationStatusSuccess,
  VerificationStatusTemporaryFailure,
  VerificationStatus'
  #-}

instance Prelude.FromText VerificationStatus where
  parser = VerificationStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText VerificationStatus where
  toText (VerificationStatus' x) = x

instance Prelude.Hashable VerificationStatus

instance Prelude.NFData VerificationStatus

instance Prelude.ToByteString VerificationStatus

instance Prelude.ToQuery VerificationStatus

instance Prelude.ToHeader VerificationStatus

instance Prelude.FromXML VerificationStatus where
  parseXML = Prelude.parseXMLText "VerificationStatus"
