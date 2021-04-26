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
-- Module      : Network.AWS.EMR.Types.StepCancellationOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.StepCancellationOption
  ( StepCancellationOption
      ( ..,
        StepCancellationOptionSENDINTERRUPT,
        StepCancellationOptionTERMINATEPROCESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StepCancellationOption = StepCancellationOption'
  { fromStepCancellationOption ::
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

pattern StepCancellationOptionSENDINTERRUPT :: StepCancellationOption
pattern StepCancellationOptionSENDINTERRUPT = StepCancellationOption' "SEND_INTERRUPT"

pattern StepCancellationOptionTERMINATEPROCESS :: StepCancellationOption
pattern StepCancellationOptionTERMINATEPROCESS = StepCancellationOption' "TERMINATE_PROCESS"

{-# COMPLETE
  StepCancellationOptionSENDINTERRUPT,
  StepCancellationOptionTERMINATEPROCESS,
  StepCancellationOption'
  #-}

instance Prelude.FromText StepCancellationOption where
  parser = StepCancellationOption' Prelude.<$> Prelude.takeText

instance Prelude.ToText StepCancellationOption where
  toText (StepCancellationOption' x) = x

instance Prelude.Hashable StepCancellationOption

instance Prelude.NFData StepCancellationOption

instance Prelude.ToByteString StepCancellationOption

instance Prelude.ToQuery StepCancellationOption

instance Prelude.ToHeader StepCancellationOption

instance Prelude.ToJSON StepCancellationOption where
  toJSON = Prelude.toJSONText
