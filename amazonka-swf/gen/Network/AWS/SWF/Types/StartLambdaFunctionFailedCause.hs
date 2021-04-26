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
-- Module      : Network.AWS.SWF.Types.StartLambdaFunctionFailedCause
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.StartLambdaFunctionFailedCause
  ( StartLambdaFunctionFailedCause
      ( ..,
        StartLambdaFunctionFailedCauseASSUMEROLEFAILED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StartLambdaFunctionFailedCause = StartLambdaFunctionFailedCause'
  { fromStartLambdaFunctionFailedCause ::
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

pattern StartLambdaFunctionFailedCauseASSUMEROLEFAILED :: StartLambdaFunctionFailedCause
pattern StartLambdaFunctionFailedCauseASSUMEROLEFAILED = StartLambdaFunctionFailedCause' "ASSUME_ROLE_FAILED"

{-# COMPLETE
  StartLambdaFunctionFailedCauseASSUMEROLEFAILED,
  StartLambdaFunctionFailedCause'
  #-}

instance Prelude.FromText StartLambdaFunctionFailedCause where
  parser = StartLambdaFunctionFailedCause' Prelude.<$> Prelude.takeText

instance Prelude.ToText StartLambdaFunctionFailedCause where
  toText (StartLambdaFunctionFailedCause' x) = x

instance Prelude.Hashable StartLambdaFunctionFailedCause

instance Prelude.NFData StartLambdaFunctionFailedCause

instance Prelude.ToByteString StartLambdaFunctionFailedCause

instance Prelude.ToQuery StartLambdaFunctionFailedCause

instance Prelude.ToHeader StartLambdaFunctionFailedCause

instance Prelude.FromJSON StartLambdaFunctionFailedCause where
  parseJSON = Prelude.parseJSONText "StartLambdaFunctionFailedCause"
