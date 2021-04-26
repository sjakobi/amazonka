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
-- Module      : Network.AWS.CloudFormation.Types.StackDriftDetectionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.StackDriftDetectionStatus
  ( StackDriftDetectionStatus
      ( ..,
        StackDriftDetectionStatusDETECTIONCOMPLETE,
        StackDriftDetectionStatusDETECTIONFAILED,
        StackDriftDetectionStatusDETECTIONINPROGRESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StackDriftDetectionStatus = StackDriftDetectionStatus'
  { fromStackDriftDetectionStatus ::
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

pattern StackDriftDetectionStatusDETECTIONCOMPLETE :: StackDriftDetectionStatus
pattern StackDriftDetectionStatusDETECTIONCOMPLETE = StackDriftDetectionStatus' "DETECTION_COMPLETE"

pattern StackDriftDetectionStatusDETECTIONFAILED :: StackDriftDetectionStatus
pattern StackDriftDetectionStatusDETECTIONFAILED = StackDriftDetectionStatus' "DETECTION_FAILED"

pattern StackDriftDetectionStatusDETECTIONINPROGRESS :: StackDriftDetectionStatus
pattern StackDriftDetectionStatusDETECTIONINPROGRESS = StackDriftDetectionStatus' "DETECTION_IN_PROGRESS"

{-# COMPLETE
  StackDriftDetectionStatusDETECTIONCOMPLETE,
  StackDriftDetectionStatusDETECTIONFAILED,
  StackDriftDetectionStatusDETECTIONINPROGRESS,
  StackDriftDetectionStatus'
  #-}

instance Prelude.FromText StackDriftDetectionStatus where
  parser = StackDriftDetectionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText StackDriftDetectionStatus where
  toText (StackDriftDetectionStatus' x) = x

instance Prelude.Hashable StackDriftDetectionStatus

instance Prelude.NFData StackDriftDetectionStatus

instance Prelude.ToByteString StackDriftDetectionStatus

instance Prelude.ToQuery StackDriftDetectionStatus

instance Prelude.ToHeader StackDriftDetectionStatus

instance Prelude.FromXML StackDriftDetectionStatus where
  parseXML = Prelude.parseXMLText "StackDriftDetectionStatus"
