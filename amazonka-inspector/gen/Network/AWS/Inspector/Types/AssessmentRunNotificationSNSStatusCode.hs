{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Inspector.Types.AssessmentRunNotificationSNSStatusCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Inspector.Types.AssessmentRunNotificationSNSStatusCode
  ( AssessmentRunNotificationSNSStatusCode
      ( ..,
        ARNSSCAccessDenied,
        ARNSSCInternalError,
        ARNSSCSuccess,
        ARNSSCTopicDoesNotExist
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AssessmentRunNotificationSNSStatusCode
  = AssessmentRunNotificationSNSStatusCode'
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

pattern ARNSSCAccessDenied :: AssessmentRunNotificationSNSStatusCode
pattern ARNSSCAccessDenied = AssessmentRunNotificationSNSStatusCode' "ACCESS_DENIED"

pattern ARNSSCInternalError :: AssessmentRunNotificationSNSStatusCode
pattern ARNSSCInternalError = AssessmentRunNotificationSNSStatusCode' "INTERNAL_ERROR"

pattern ARNSSCSuccess :: AssessmentRunNotificationSNSStatusCode
pattern ARNSSCSuccess = AssessmentRunNotificationSNSStatusCode' "SUCCESS"

pattern ARNSSCTopicDoesNotExist :: AssessmentRunNotificationSNSStatusCode
pattern ARNSSCTopicDoesNotExist = AssessmentRunNotificationSNSStatusCode' "TOPIC_DOES_NOT_EXIST"

{-# COMPLETE
  ARNSSCAccessDenied,
  ARNSSCInternalError,
  ARNSSCSuccess,
  ARNSSCTopicDoesNotExist,
  AssessmentRunNotificationSNSStatusCode'
  #-}

instance FromText AssessmentRunNotificationSNSStatusCode where
  parser = (AssessmentRunNotificationSNSStatusCode' . mk) <$> takeText

instance ToText AssessmentRunNotificationSNSStatusCode where
  toText (AssessmentRunNotificationSNSStatusCode' ci) = original ci

instance Hashable AssessmentRunNotificationSNSStatusCode

instance NFData AssessmentRunNotificationSNSStatusCode

instance ToByteString AssessmentRunNotificationSNSStatusCode

instance ToQuery AssessmentRunNotificationSNSStatusCode

instance ToHeader AssessmentRunNotificationSNSStatusCode

instance FromJSON AssessmentRunNotificationSNSStatusCode where
  parseJSON = parseJSONText "AssessmentRunNotificationSNSStatusCode"
