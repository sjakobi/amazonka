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
-- Module      : Network.AWS.EMR.Types.StepStateChangeReasonCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.StepStateChangeReasonCode
  ( StepStateChangeReasonCode
      ( ..,
        StepStateChangeReasonCodeNONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StepStateChangeReasonCode = StepStateChangeReasonCode'
  { fromStepStateChangeReasonCode ::
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

pattern StepStateChangeReasonCodeNONE :: StepStateChangeReasonCode
pattern StepStateChangeReasonCodeNONE = StepStateChangeReasonCode' "NONE"

{-# COMPLETE
  StepStateChangeReasonCodeNONE,
  StepStateChangeReasonCode'
  #-}

instance Prelude.FromText StepStateChangeReasonCode where
  parser = StepStateChangeReasonCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText StepStateChangeReasonCode where
  toText (StepStateChangeReasonCode' x) = x

instance Prelude.Hashable StepStateChangeReasonCode

instance Prelude.NFData StepStateChangeReasonCode

instance Prelude.ToByteString StepStateChangeReasonCode

instance Prelude.ToQuery StepStateChangeReasonCode

instance Prelude.ToHeader StepStateChangeReasonCode

instance Prelude.FromJSON StepStateChangeReasonCode where
  parseJSON = Prelude.parseJSONText "StepStateChangeReasonCode"
