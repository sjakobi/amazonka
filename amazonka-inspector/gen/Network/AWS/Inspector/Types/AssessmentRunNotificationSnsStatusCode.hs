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
-- Module      : Network.AWS.Inspector.Types.AssessmentRunNotificationSnsStatusCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Inspector.Types.AssessmentRunNotificationSnsStatusCode
  ( AssessmentRunNotificationSnsStatusCode
      ( ..,
        AssessmentRunNotificationSnsStatusCodeACCESSDENIED,
        AssessmentRunNotificationSnsStatusCodeINTERNALERROR,
        AssessmentRunNotificationSnsStatusCodeSUCCESS,
        AssessmentRunNotificationSnsStatusCodeTOPICDOESNOTEXIST
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AssessmentRunNotificationSnsStatusCode = AssessmentRunNotificationSnsStatusCode'
  { fromAssessmentRunNotificationSnsStatusCode ::
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

pattern AssessmentRunNotificationSnsStatusCodeACCESSDENIED :: AssessmentRunNotificationSnsStatusCode
pattern AssessmentRunNotificationSnsStatusCodeACCESSDENIED = AssessmentRunNotificationSnsStatusCode' "ACCESS_DENIED"

pattern AssessmentRunNotificationSnsStatusCodeINTERNALERROR :: AssessmentRunNotificationSnsStatusCode
pattern AssessmentRunNotificationSnsStatusCodeINTERNALERROR = AssessmentRunNotificationSnsStatusCode' "INTERNAL_ERROR"

pattern AssessmentRunNotificationSnsStatusCodeSUCCESS :: AssessmentRunNotificationSnsStatusCode
pattern AssessmentRunNotificationSnsStatusCodeSUCCESS = AssessmentRunNotificationSnsStatusCode' "SUCCESS"

pattern AssessmentRunNotificationSnsStatusCodeTOPICDOESNOTEXIST :: AssessmentRunNotificationSnsStatusCode
pattern AssessmentRunNotificationSnsStatusCodeTOPICDOESNOTEXIST = AssessmentRunNotificationSnsStatusCode' "TOPIC_DOES_NOT_EXIST"

{-# COMPLETE
  AssessmentRunNotificationSnsStatusCodeACCESSDENIED,
  AssessmentRunNotificationSnsStatusCodeINTERNALERROR,
  AssessmentRunNotificationSnsStatusCodeSUCCESS,
  AssessmentRunNotificationSnsStatusCodeTOPICDOESNOTEXIST,
  AssessmentRunNotificationSnsStatusCode'
  #-}

instance Prelude.FromText AssessmentRunNotificationSnsStatusCode where
  parser = AssessmentRunNotificationSnsStatusCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText AssessmentRunNotificationSnsStatusCode where
  toText (AssessmentRunNotificationSnsStatusCode' x) = x

instance Prelude.Hashable AssessmentRunNotificationSnsStatusCode

instance Prelude.NFData AssessmentRunNotificationSnsStatusCode

instance Prelude.ToByteString AssessmentRunNotificationSnsStatusCode

instance Prelude.ToQuery AssessmentRunNotificationSnsStatusCode

instance Prelude.ToHeader AssessmentRunNotificationSnsStatusCode

instance Prelude.FromJSON AssessmentRunNotificationSnsStatusCode where
  parseJSON = Prelude.parseJSONText "AssessmentRunNotificationSnsStatusCode"
