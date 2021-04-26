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
-- Module      : Network.AWS.CodeBuild.Types.StatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.StatusType
  ( StatusType
      ( ..,
        StatusTypeFAILED,
        StatusTypeFAULT,
        StatusTypeINPROGRESS,
        StatusTypeSTOPPED,
        StatusTypeSUCCEEDED,
        StatusTypeTIMEDOUT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StatusType = StatusType'
  { fromStatusType ::
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

pattern StatusTypeFAILED :: StatusType
pattern StatusTypeFAILED = StatusType' "FAILED"

pattern StatusTypeFAULT :: StatusType
pattern StatusTypeFAULT = StatusType' "FAULT"

pattern StatusTypeINPROGRESS :: StatusType
pattern StatusTypeINPROGRESS = StatusType' "IN_PROGRESS"

pattern StatusTypeSTOPPED :: StatusType
pattern StatusTypeSTOPPED = StatusType' "STOPPED"

pattern StatusTypeSUCCEEDED :: StatusType
pattern StatusTypeSUCCEEDED = StatusType' "SUCCEEDED"

pattern StatusTypeTIMEDOUT :: StatusType
pattern StatusTypeTIMEDOUT = StatusType' "TIMED_OUT"

{-# COMPLETE
  StatusTypeFAILED,
  StatusTypeFAULT,
  StatusTypeINPROGRESS,
  StatusTypeSTOPPED,
  StatusTypeSUCCEEDED,
  StatusTypeTIMEDOUT,
  StatusType'
  #-}

instance Prelude.FromText StatusType where
  parser = StatusType' Prelude.<$> Prelude.takeText

instance Prelude.ToText StatusType where
  toText (StatusType' x) = x

instance Prelude.Hashable StatusType

instance Prelude.NFData StatusType

instance Prelude.ToByteString StatusType

instance Prelude.ToQuery StatusType

instance Prelude.ToHeader StatusType

instance Prelude.ToJSON StatusType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON StatusType where
  parseJSON = Prelude.parseJSONText "StatusType"
