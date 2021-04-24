{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.AggregateEvaluationResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.AggregateEvaluationResult where

import Network.AWS.Config.Types.ComplianceType
import Network.AWS.Config.Types.EvaluationResultIdentifier
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The details of an AWS Config evaluation for an account ID and region in an aggregator. Provides the AWS resource that was evaluated, the compliance of the resource, related time stamps, and supplementary information.
--
--
--
-- /See:/ 'aggregateEvaluationResult' smart constructor.
data AggregateEvaluationResult = AggregateEvaluationResult'
  { _aerAnnotation ::
      !(Maybe Text),
    _aerEvaluationResultIdentifier ::
      !( Maybe
           EvaluationResultIdentifier
       ),
    _aerAccountId ::
      !(Maybe Text),
    _aerResultRecordedTime ::
      !(Maybe POSIX),
    _aerComplianceType ::
      !( Maybe
           ComplianceType
       ),
    _aerConfigRuleInvokedTime ::
      !(Maybe POSIX),
    _aerAWSRegion ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AggregateEvaluationResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aerAnnotation' - Supplementary information about how the agrregate evaluation determined the compliance.
--
-- * 'aerEvaluationResultIdentifier' - Uniquely identifies the evaluation result.
--
-- * 'aerAccountId' - The 12-digit account ID of the source account.
--
-- * 'aerResultRecordedTime' - The time when AWS Config recorded the aggregate evaluation result.
--
-- * 'aerComplianceType' - The resource compliance status. For the @AggregationEvaluationResult@ data type, AWS Config supports only the @COMPLIANT@ and @NON_COMPLIANT@ . AWS Config does not support the @NOT_APPLICABLE@ and @INSUFFICIENT_DATA@ value.
--
-- * 'aerConfigRuleInvokedTime' - The time when the AWS Config rule evaluated the AWS resource.
--
-- * 'aerAWSRegion' - The source region from where the data is aggregated.
aggregateEvaluationResult ::
  AggregateEvaluationResult
aggregateEvaluationResult =
  AggregateEvaluationResult'
    { _aerAnnotation =
        Nothing,
      _aerEvaluationResultIdentifier = Nothing,
      _aerAccountId = Nothing,
      _aerResultRecordedTime = Nothing,
      _aerComplianceType = Nothing,
      _aerConfigRuleInvokedTime = Nothing,
      _aerAWSRegion = Nothing
    }

-- | Supplementary information about how the agrregate evaluation determined the compliance.
aerAnnotation :: Lens' AggregateEvaluationResult (Maybe Text)
aerAnnotation = lens _aerAnnotation (\s a -> s {_aerAnnotation = a})

-- | Uniquely identifies the evaluation result.
aerEvaluationResultIdentifier :: Lens' AggregateEvaluationResult (Maybe EvaluationResultIdentifier)
aerEvaluationResultIdentifier = lens _aerEvaluationResultIdentifier (\s a -> s {_aerEvaluationResultIdentifier = a})

-- | The 12-digit account ID of the source account.
aerAccountId :: Lens' AggregateEvaluationResult (Maybe Text)
aerAccountId = lens _aerAccountId (\s a -> s {_aerAccountId = a})

-- | The time when AWS Config recorded the aggregate evaluation result.
aerResultRecordedTime :: Lens' AggregateEvaluationResult (Maybe UTCTime)
aerResultRecordedTime = lens _aerResultRecordedTime (\s a -> s {_aerResultRecordedTime = a}) . mapping _Time

-- | The resource compliance status. For the @AggregationEvaluationResult@ data type, AWS Config supports only the @COMPLIANT@ and @NON_COMPLIANT@ . AWS Config does not support the @NOT_APPLICABLE@ and @INSUFFICIENT_DATA@ value.
aerComplianceType :: Lens' AggregateEvaluationResult (Maybe ComplianceType)
aerComplianceType = lens _aerComplianceType (\s a -> s {_aerComplianceType = a})

-- | The time when the AWS Config rule evaluated the AWS resource.
aerConfigRuleInvokedTime :: Lens' AggregateEvaluationResult (Maybe UTCTime)
aerConfigRuleInvokedTime = lens _aerConfigRuleInvokedTime (\s a -> s {_aerConfigRuleInvokedTime = a}) . mapping _Time

-- | The source region from where the data is aggregated.
aerAWSRegion :: Lens' AggregateEvaluationResult (Maybe Text)
aerAWSRegion = lens _aerAWSRegion (\s a -> s {_aerAWSRegion = a})

instance FromJSON AggregateEvaluationResult where
  parseJSON =
    withObject
      "AggregateEvaluationResult"
      ( \x ->
          AggregateEvaluationResult'
            <$> (x .:? "Annotation")
            <*> (x .:? "EvaluationResultIdentifier")
            <*> (x .:? "AccountId")
            <*> (x .:? "ResultRecordedTime")
            <*> (x .:? "ComplianceType")
            <*> (x .:? "ConfigRuleInvokedTime")
            <*> (x .:? "AwsRegion")
      )

instance Hashable AggregateEvaluationResult

instance NFData AggregateEvaluationResult
