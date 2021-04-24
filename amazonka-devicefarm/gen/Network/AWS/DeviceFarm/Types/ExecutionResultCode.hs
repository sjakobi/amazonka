{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        ParsingFailed,
        VPCEndpointSetupFailed
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ExecutionResultCode
  = ExecutionResultCode'
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

pattern ParsingFailed :: ExecutionResultCode
pattern ParsingFailed = ExecutionResultCode' "PARSING_FAILED"

pattern VPCEndpointSetupFailed :: ExecutionResultCode
pattern VPCEndpointSetupFailed = ExecutionResultCode' "VPC_ENDPOINT_SETUP_FAILED"

{-# COMPLETE
  ParsingFailed,
  VPCEndpointSetupFailed,
  ExecutionResultCode'
  #-}

instance FromText ExecutionResultCode where
  parser = (ExecutionResultCode' . mk) <$> takeText

instance ToText ExecutionResultCode where
  toText (ExecutionResultCode' ci) = original ci

instance Hashable ExecutionResultCode

instance NFData ExecutionResultCode

instance ToByteString ExecutionResultCode

instance ToQuery ExecutionResultCode

instance ToHeader ExecutionResultCode

instance FromJSON ExecutionResultCode where
  parseJSON = parseJSONText "ExecutionResultCode"
