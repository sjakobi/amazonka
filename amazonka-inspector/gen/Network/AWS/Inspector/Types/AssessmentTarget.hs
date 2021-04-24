{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Inspector.Types.AssessmentTarget
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Inspector.Types.AssessmentTarget where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about an Amazon Inspector application. This data type is used as the response element in the 'DescribeAssessmentTargets' action.
--
--
--
-- /See:/ 'assessmentTarget' smart constructor.
data AssessmentTarget = AssessmentTarget'
  { _atResourceGroupARN ::
      !(Maybe Text),
    _atArn :: !Text,
    _atName :: !Text,
    _atCreatedAt :: !POSIX,
    _atUpdatedAt :: !POSIX
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AssessmentTarget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atResourceGroupARN' - The ARN that specifies the resource group that is associated with the assessment target.
--
-- * 'atArn' - The ARN that specifies the Amazon Inspector assessment target.
--
-- * 'atName' - The name of the Amazon Inspector assessment target.
--
-- * 'atCreatedAt' - The time at which the assessment target is created.
--
-- * 'atUpdatedAt' - The time at which 'UpdateAssessmentTarget' is called.
assessmentTarget ::
  -- | 'atArn'
  Text ->
  -- | 'atName'
  Text ->
  -- | 'atCreatedAt'
  UTCTime ->
  -- | 'atUpdatedAt'
  UTCTime ->
  AssessmentTarget
assessmentTarget pArn_ pName_ pCreatedAt_ pUpdatedAt_ =
  AssessmentTarget'
    { _atResourceGroupARN = Nothing,
      _atArn = pArn_,
      _atName = pName_,
      _atCreatedAt = _Time # pCreatedAt_,
      _atUpdatedAt = _Time # pUpdatedAt_
    }

-- | The ARN that specifies the resource group that is associated with the assessment target.
atResourceGroupARN :: Lens' AssessmentTarget (Maybe Text)
atResourceGroupARN = lens _atResourceGroupARN (\s a -> s {_atResourceGroupARN = a})

-- | The ARN that specifies the Amazon Inspector assessment target.
atArn :: Lens' AssessmentTarget Text
atArn = lens _atArn (\s a -> s {_atArn = a})

-- | The name of the Amazon Inspector assessment target.
atName :: Lens' AssessmentTarget Text
atName = lens _atName (\s a -> s {_atName = a})

-- | The time at which the assessment target is created.
atCreatedAt :: Lens' AssessmentTarget UTCTime
atCreatedAt = lens _atCreatedAt (\s a -> s {_atCreatedAt = a}) . _Time

-- | The time at which 'UpdateAssessmentTarget' is called.
atUpdatedAt :: Lens' AssessmentTarget UTCTime
atUpdatedAt = lens _atUpdatedAt (\s a -> s {_atUpdatedAt = a}) . _Time

instance FromJSON AssessmentTarget where
  parseJSON =
    withObject
      "AssessmentTarget"
      ( \x ->
          AssessmentTarget'
            <$> (x .:? "resourceGroupArn")
            <*> (x .: "arn")
            <*> (x .: "name")
            <*> (x .: "createdAt")
            <*> (x .: "updatedAt")
      )

instance Hashable AssessmentTarget

instance NFData AssessmentTarget
