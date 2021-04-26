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
-- Module      : Network.AWS.DeviceFarm.Types.ExecutionResultCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.ExecutionResultCode
  ( ExecutionResultCode
      ( ..,
        ExecutionResultCodePARSINGFAILED,
        ExecutionResultCodeVPCENDPOINTSETUPFAILED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ExecutionResultCode = ExecutionResultCode'
  { fromExecutionResultCode ::
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

pattern ExecutionResultCodePARSINGFAILED :: ExecutionResultCode
pattern ExecutionResultCodePARSINGFAILED = ExecutionResultCode' "PARSING_FAILED"

pattern ExecutionResultCodeVPCENDPOINTSETUPFAILED :: ExecutionResultCode
pattern ExecutionResultCodeVPCENDPOINTSETUPFAILED = ExecutionResultCode' "VPC_ENDPOINT_SETUP_FAILED"

{-# COMPLETE
  ExecutionResultCodePARSINGFAILED,
  ExecutionResultCodeVPCENDPOINTSETUPFAILED,
  ExecutionResultCode'
  #-}

instance Prelude.FromText ExecutionResultCode where
  parser = ExecutionResultCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText ExecutionResultCode where
  toText (ExecutionResultCode' x) = x

instance Prelude.Hashable ExecutionResultCode

instance Prelude.NFData ExecutionResultCode

instance Prelude.ToByteString ExecutionResultCode

instance Prelude.ToQuery ExecutionResultCode

instance Prelude.ToHeader ExecutionResultCode

instance Prelude.FromJSON ExecutionResultCode where
  parseJSON = Prelude.parseJSONText "ExecutionResultCode"
