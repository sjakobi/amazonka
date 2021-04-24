{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.InstanceGroupStateChangeReasonCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.InstanceGroupStateChangeReasonCode
  ( InstanceGroupStateChangeReasonCode
      ( ..,
        IGSCRCClusterTerminated,
        IGSCRCInstanceFailure,
        IGSCRCInternalError,
        IGSCRCValidationError
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InstanceGroupStateChangeReasonCode
  = InstanceGroupStateChangeReasonCode'
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

pattern IGSCRCClusterTerminated :: InstanceGroupStateChangeReasonCode
pattern IGSCRCClusterTerminated = InstanceGroupStateChangeReasonCode' "CLUSTER_TERMINATED"

pattern IGSCRCInstanceFailure :: InstanceGroupStateChangeReasonCode
pattern IGSCRCInstanceFailure = InstanceGroupStateChangeReasonCode' "INSTANCE_FAILURE"

pattern IGSCRCInternalError :: InstanceGroupStateChangeReasonCode
pattern IGSCRCInternalError = InstanceGroupStateChangeReasonCode' "INTERNAL_ERROR"

pattern IGSCRCValidationError :: InstanceGroupStateChangeReasonCode
pattern IGSCRCValidationError = InstanceGroupStateChangeReasonCode' "VALIDATION_ERROR"

{-# COMPLETE
  IGSCRCClusterTerminated,
  IGSCRCInstanceFailure,
  IGSCRCInternalError,
  IGSCRCValidationError,
  InstanceGroupStateChangeReasonCode'
  #-}

instance FromText InstanceGroupStateChangeReasonCode where
  parser = (InstanceGroupStateChangeReasonCode' . mk) <$> takeText

instance ToText InstanceGroupStateChangeReasonCode where
  toText (InstanceGroupStateChangeReasonCode' ci) = original ci

instance Hashable InstanceGroupStateChangeReasonCode

instance NFData InstanceGroupStateChangeReasonCode

instance ToByteString InstanceGroupStateChangeReasonCode

instance ToQuery InstanceGroupStateChangeReasonCode

instance ToHeader InstanceGroupStateChangeReasonCode

instance FromJSON InstanceGroupStateChangeReasonCode where
  parseJSON = parseJSONText "InstanceGroupStateChangeReasonCode"
