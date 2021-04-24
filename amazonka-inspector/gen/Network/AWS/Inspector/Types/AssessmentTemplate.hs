{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Inspector.Types.AssessmentTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Inspector.Types.AssessmentTemplate where

import Network.AWS.Inspector.Types.Attribute
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about an Amazon Inspector assessment template. This data type is used as the response element in the 'DescribeAssessmentTemplates' action.
--
--
--
-- /See:/ 'assessmentTemplate' smart constructor.
data AssessmentTemplate = AssessmentTemplate'
  { _aLastAssessmentRunARN ::
      !(Maybe Text),
    _aArn :: !Text,
    _aName :: !Text,
    _aAssessmentTargetARN :: !Text,
    _aDurationInSeconds :: !Nat,
    _aRulesPackageARNs :: ![Text],
    _aUserAttributesForFindings ::
      ![Attribute],
    _aAssessmentRunCount :: !Int,
    _aCreatedAt :: !POSIX
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AssessmentTemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aLastAssessmentRunARN' - The Amazon Resource Name (ARN) of the most recent assessment run associated with this assessment template. This value exists only when the value of assessmentRunCount is greaterpa than zero.
--
-- * 'aArn' - The ARN of the assessment template.
--
-- * 'aName' - The name of the assessment template.
--
-- * 'aAssessmentTargetARN' - The ARN of the assessment target that corresponds to this assessment template.
--
-- * 'aDurationInSeconds' - The duration in seconds specified for this assessment template. The default value is 3600 seconds (one hour). The maximum value is 86400 seconds (one day).
--
-- * 'aRulesPackageARNs' - The rules packages that are specified for this assessment template.
--
-- * 'aUserAttributesForFindings' - The user-defined attributes that are assigned to every generated finding from the assessment run that uses this assessment template.
--
-- * 'aAssessmentRunCount' - The number of existing assessment runs associated with this assessment template. This value can be zero or a positive integer.
--
-- * 'aCreatedAt' - The time at which the assessment template is created.
assessmentTemplate ::
  -- | 'aArn'
  Text ->
  -- | 'aName'
  Text ->
  -- | 'aAssessmentTargetARN'
  Text ->
  -- | 'aDurationInSeconds'
  Natural ->
  -- | 'aAssessmentRunCount'
  Int ->
  -- | 'aCreatedAt'
  UTCTime ->
  AssessmentTemplate
assessmentTemplate
  pArn_
  pName_
  pAssessmentTargetARN_
  pDurationInSeconds_
  pAssessmentRunCount_
  pCreatedAt_ =
    AssessmentTemplate'
      { _aLastAssessmentRunARN =
          Nothing,
        _aArn = pArn_,
        _aName = pName_,
        _aAssessmentTargetARN = pAssessmentTargetARN_,
        _aDurationInSeconds = _Nat # pDurationInSeconds_,
        _aRulesPackageARNs = mempty,
        _aUserAttributesForFindings = mempty,
        _aAssessmentRunCount = pAssessmentRunCount_,
        _aCreatedAt = _Time # pCreatedAt_
      }

-- | The Amazon Resource Name (ARN) of the most recent assessment run associated with this assessment template. This value exists only when the value of assessmentRunCount is greaterpa than zero.
aLastAssessmentRunARN :: Lens' AssessmentTemplate (Maybe Text)
aLastAssessmentRunARN = lens _aLastAssessmentRunARN (\s a -> s {_aLastAssessmentRunARN = a})

-- | The ARN of the assessment template.
aArn :: Lens' AssessmentTemplate Text
aArn = lens _aArn (\s a -> s {_aArn = a})

-- | The name of the assessment template.
aName :: Lens' AssessmentTemplate Text
aName = lens _aName (\s a -> s {_aName = a})

-- | The ARN of the assessment target that corresponds to this assessment template.
aAssessmentTargetARN :: Lens' AssessmentTemplate Text
aAssessmentTargetARN = lens _aAssessmentTargetARN (\s a -> s {_aAssessmentTargetARN = a})

-- | The duration in seconds specified for this assessment template. The default value is 3600 seconds (one hour). The maximum value is 86400 seconds (one day).
aDurationInSeconds :: Lens' AssessmentTemplate Natural
aDurationInSeconds = lens _aDurationInSeconds (\s a -> s {_aDurationInSeconds = a}) . _Nat

-- | The rules packages that are specified for this assessment template.
aRulesPackageARNs :: Lens' AssessmentTemplate [Text]
aRulesPackageARNs = lens _aRulesPackageARNs (\s a -> s {_aRulesPackageARNs = a}) . _Coerce

-- | The user-defined attributes that are assigned to every generated finding from the assessment run that uses this assessment template.
aUserAttributesForFindings :: Lens' AssessmentTemplate [Attribute]
aUserAttributesForFindings = lens _aUserAttributesForFindings (\s a -> s {_aUserAttributesForFindings = a}) . _Coerce

-- | The number of existing assessment runs associated with this assessment template. This value can be zero or a positive integer.
aAssessmentRunCount :: Lens' AssessmentTemplate Int
aAssessmentRunCount = lens _aAssessmentRunCount (\s a -> s {_aAssessmentRunCount = a})

-- | The time at which the assessment template is created.
aCreatedAt :: Lens' AssessmentTemplate UTCTime
aCreatedAt = lens _aCreatedAt (\s a -> s {_aCreatedAt = a}) . _Time

instance FromJSON AssessmentTemplate where
  parseJSON =
    withObject
      "AssessmentTemplate"
      ( \x ->
          AssessmentTemplate'
            <$> (x .:? "lastAssessmentRunArn")
            <*> (x .: "arn")
            <*> (x .: "name")
            <*> (x .: "assessmentTargetArn")
            <*> (x .: "durationInSeconds")
            <*> (x .:? "rulesPackageArns" .!= mempty)
            <*> (x .:? "userAttributesForFindings" .!= mempty)
            <*> (x .: "assessmentRunCount")
            <*> (x .: "createdAt")
      )

instance Hashable AssessmentTemplate

instance NFData AssessmentTemplate
