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
-- Module      : Network.AWS.SageMaker.Types.AwsManagedHumanLoopRequestSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AwsManagedHumanLoopRequestSource
  ( AwsManagedHumanLoopRequestSource
      ( ..,
        AwsManagedHumanLoopRequestSourceAWSRekognitionDetectModerationLabelsImageV3,
        AwsManagedHumanLoopRequestSourceAWSTextractAnalyzeDocumentFormsV1
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AwsManagedHumanLoopRequestSource = AwsManagedHumanLoopRequestSource'
  { fromAwsManagedHumanLoopRequestSource ::
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

pattern AwsManagedHumanLoopRequestSourceAWSRekognitionDetectModerationLabelsImageV3 :: AwsManagedHumanLoopRequestSource
pattern AwsManagedHumanLoopRequestSourceAWSRekognitionDetectModerationLabelsImageV3 = AwsManagedHumanLoopRequestSource' "AWS/Rekognition/DetectModerationLabels/Image/V3"

pattern AwsManagedHumanLoopRequestSourceAWSTextractAnalyzeDocumentFormsV1 :: AwsManagedHumanLoopRequestSource
pattern AwsManagedHumanLoopRequestSourceAWSTextractAnalyzeDocumentFormsV1 = AwsManagedHumanLoopRequestSource' "AWS/Textract/AnalyzeDocument/Forms/V1"

{-# COMPLETE
  AwsManagedHumanLoopRequestSourceAWSRekognitionDetectModerationLabelsImageV3,
  AwsManagedHumanLoopRequestSourceAWSTextractAnalyzeDocumentFormsV1,
  AwsManagedHumanLoopRequestSource'
  #-}

instance Prelude.FromText AwsManagedHumanLoopRequestSource where
  parser = AwsManagedHumanLoopRequestSource' Prelude.<$> Prelude.takeText

instance Prelude.ToText AwsManagedHumanLoopRequestSource where
  toText (AwsManagedHumanLoopRequestSource' x) = x

instance Prelude.Hashable AwsManagedHumanLoopRequestSource

instance Prelude.NFData AwsManagedHumanLoopRequestSource

instance Prelude.ToByteString AwsManagedHumanLoopRequestSource

instance Prelude.ToQuery AwsManagedHumanLoopRequestSource

instance Prelude.ToHeader AwsManagedHumanLoopRequestSource

instance Prelude.ToJSON AwsManagedHumanLoopRequestSource where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AwsManagedHumanLoopRequestSource where
  parseJSON = Prelude.parseJSONText "AwsManagedHumanLoopRequestSource"
