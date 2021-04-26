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
-- Module      : Network.AWS.LexModels.Types.LexStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.LexStatus
  ( LexStatus
      ( ..,
        LexStatusBUILDING,
        LexStatusFAILED,
        LexStatusNOTBUILT,
        LexStatusREADY,
        LexStatusREADYBASICTESTING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LexStatus = LexStatus'
  { fromLexStatus ::
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

pattern LexStatusBUILDING :: LexStatus
pattern LexStatusBUILDING = LexStatus' "BUILDING"

pattern LexStatusFAILED :: LexStatus
pattern LexStatusFAILED = LexStatus' "FAILED"

pattern LexStatusNOTBUILT :: LexStatus
pattern LexStatusNOTBUILT = LexStatus' "NOT_BUILT"

pattern LexStatusREADY :: LexStatus
pattern LexStatusREADY = LexStatus' "READY"

pattern LexStatusREADYBASICTESTING :: LexStatus
pattern LexStatusREADYBASICTESTING = LexStatus' "READY_BASIC_TESTING"

{-# COMPLETE
  LexStatusBUILDING,
  LexStatusFAILED,
  LexStatusNOTBUILT,
  LexStatusREADY,
  LexStatusREADYBASICTESTING,
  LexStatus'
  #-}

instance Prelude.FromText LexStatus where
  parser = LexStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText LexStatus where
  toText (LexStatus' x) = x

instance Prelude.Hashable LexStatus

instance Prelude.NFData LexStatus

instance Prelude.ToByteString LexStatus

instance Prelude.ToQuery LexStatus

instance Prelude.ToHeader LexStatus

instance Prelude.FromJSON LexStatus where
  parseJSON = Prelude.parseJSONText "LexStatus"
