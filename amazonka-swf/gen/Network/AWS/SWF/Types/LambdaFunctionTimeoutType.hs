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
-- Module      : Network.AWS.SWF.Types.LambdaFunctionTimeoutType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.LambdaFunctionTimeoutType
  ( LambdaFunctionTimeoutType
      ( ..,
        LambdaFunctionTimeoutTypeSTARTTOCLOSE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LambdaFunctionTimeoutType = LambdaFunctionTimeoutType'
  { fromLambdaFunctionTimeoutType ::
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

pattern LambdaFunctionTimeoutTypeSTARTTOCLOSE :: LambdaFunctionTimeoutType
pattern LambdaFunctionTimeoutTypeSTARTTOCLOSE = LambdaFunctionTimeoutType' "START_TO_CLOSE"

{-# COMPLETE
  LambdaFunctionTimeoutTypeSTARTTOCLOSE,
  LambdaFunctionTimeoutType'
  #-}

instance Prelude.FromText LambdaFunctionTimeoutType where
  parser = LambdaFunctionTimeoutType' Prelude.<$> Prelude.takeText

instance Prelude.ToText LambdaFunctionTimeoutType where
  toText (LambdaFunctionTimeoutType' x) = x

instance Prelude.Hashable LambdaFunctionTimeoutType

instance Prelude.NFData LambdaFunctionTimeoutType

instance Prelude.ToByteString LambdaFunctionTimeoutType

instance Prelude.ToQuery LambdaFunctionTimeoutType

instance Prelude.ToHeader LambdaFunctionTimeoutType

instance Prelude.FromJSON LambdaFunctionTimeoutType where
  parseJSON = Prelude.parseJSONText "LambdaFunctionTimeoutType"
