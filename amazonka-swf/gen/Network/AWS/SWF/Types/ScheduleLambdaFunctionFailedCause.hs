{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.ScheduleLambdaFunctionFailedCause
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.ScheduleLambdaFunctionFailedCause
  ( ScheduleLambdaFunctionFailedCause
      ( ..,
        IdAlreadyInUse,
        LambdaFunctionCreationRateExceeded,
        LambdaServiceNotAvailableInRegion,
        OpenLambdaFunctionsLimitExceeded
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ScheduleLambdaFunctionFailedCause
  = ScheduleLambdaFunctionFailedCause'
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

pattern IdAlreadyInUse :: ScheduleLambdaFunctionFailedCause
pattern IdAlreadyInUse = ScheduleLambdaFunctionFailedCause' "ID_ALREADY_IN_USE"

pattern LambdaFunctionCreationRateExceeded :: ScheduleLambdaFunctionFailedCause
pattern LambdaFunctionCreationRateExceeded = ScheduleLambdaFunctionFailedCause' "LAMBDA_FUNCTION_CREATION_RATE_EXCEEDED"

pattern LambdaServiceNotAvailableInRegion :: ScheduleLambdaFunctionFailedCause
pattern LambdaServiceNotAvailableInRegion = ScheduleLambdaFunctionFailedCause' "LAMBDA_SERVICE_NOT_AVAILABLE_IN_REGION"

pattern OpenLambdaFunctionsLimitExceeded :: ScheduleLambdaFunctionFailedCause
pattern OpenLambdaFunctionsLimitExceeded = ScheduleLambdaFunctionFailedCause' "OPEN_LAMBDA_FUNCTIONS_LIMIT_EXCEEDED"

{-# COMPLETE
  IdAlreadyInUse,
  LambdaFunctionCreationRateExceeded,
  LambdaServiceNotAvailableInRegion,
  OpenLambdaFunctionsLimitExceeded,
  ScheduleLambdaFunctionFailedCause'
  #-}

instance FromText ScheduleLambdaFunctionFailedCause where
  parser = (ScheduleLambdaFunctionFailedCause' . mk) <$> takeText

instance ToText ScheduleLambdaFunctionFailedCause where
  toText (ScheduleLambdaFunctionFailedCause' ci) = original ci

instance Hashable ScheduleLambdaFunctionFailedCause

instance NFData ScheduleLambdaFunctionFailedCause

instance ToByteString ScheduleLambdaFunctionFailedCause

instance ToQuery ScheduleLambdaFunctionFailedCause

instance ToHeader ScheduleLambdaFunctionFailedCause

instance FromJSON ScheduleLambdaFunctionFailedCause where
  parseJSON = parseJSONText "ScheduleLambdaFunctionFailedCause"
