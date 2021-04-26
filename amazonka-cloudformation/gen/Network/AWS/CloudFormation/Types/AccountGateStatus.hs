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
-- Module      : Network.AWS.CloudFormation.Types.AccountGateStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.AccountGateStatus
  ( AccountGateStatus
      ( ..,
        AccountGateStatusFAILED,
        AccountGateStatusSKIPPED,
        AccountGateStatusSUCCEEDED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AccountGateStatus = AccountGateStatus'
  { fromAccountGateStatus ::
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

pattern AccountGateStatusFAILED :: AccountGateStatus
pattern AccountGateStatusFAILED = AccountGateStatus' "FAILED"

pattern AccountGateStatusSKIPPED :: AccountGateStatus
pattern AccountGateStatusSKIPPED = AccountGateStatus' "SKIPPED"

pattern AccountGateStatusSUCCEEDED :: AccountGateStatus
pattern AccountGateStatusSUCCEEDED = AccountGateStatus' "SUCCEEDED"

{-# COMPLETE
  AccountGateStatusFAILED,
  AccountGateStatusSKIPPED,
  AccountGateStatusSUCCEEDED,
  AccountGateStatus'
  #-}

instance Prelude.FromText AccountGateStatus where
  parser = AccountGateStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText AccountGateStatus where
  toText (AccountGateStatus' x) = x

instance Prelude.Hashable AccountGateStatus

instance Prelude.NFData AccountGateStatus

instance Prelude.ToByteString AccountGateStatus

instance Prelude.ToQuery AccountGateStatus

instance Prelude.ToHeader AccountGateStatus

instance Prelude.FromXML AccountGateStatus where
  parseXML = Prelude.parseXMLText "AccountGateStatus"
