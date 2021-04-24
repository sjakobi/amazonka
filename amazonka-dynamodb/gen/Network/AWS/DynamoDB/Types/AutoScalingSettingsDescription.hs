{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.AutoScalingSettingsDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.AutoScalingSettingsDescription where

import Network.AWS.DynamoDB.Types.AutoScalingPolicyDescription
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents the auto scaling settings for a global table or global secondary index.
--
--
--
-- /See:/ 'autoScalingSettingsDescription' smart constructor.
data AutoScalingSettingsDescription = AutoScalingSettingsDescription'
  { _assdScalingPolicies ::
      !( Maybe
           [AutoScalingPolicyDescription]
       ),
    _assdMinimumUnits ::
      !( Maybe
           Nat
       ),
    _assdMaximumUnits ::
      !( Maybe
           Nat
       ),
    _assdAutoScalingRoleARN ::
      !( Maybe
           Text
       ),
    _assdAutoScalingDisabled ::
      !( Maybe
           Bool
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AutoScalingSettingsDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'assdScalingPolicies' - Information about the scaling policies.
--
-- * 'assdMinimumUnits' - The minimum capacity units that a global table or global secondary index should be scaled down to.
--
-- * 'assdMaximumUnits' - The maximum capacity units that a global table or global secondary index should be scaled up to.
--
-- * 'assdAutoScalingRoleARN' - Role ARN used for configuring the auto scaling policy.
--
-- * 'assdAutoScalingDisabled' - Disabled auto scaling for this global table or global secondary index.
autoScalingSettingsDescription ::
  AutoScalingSettingsDescription
autoScalingSettingsDescription =
  AutoScalingSettingsDescription'
    { _assdScalingPolicies =
        Nothing,
      _assdMinimumUnits = Nothing,
      _assdMaximumUnits = Nothing,
      _assdAutoScalingRoleARN = Nothing,
      _assdAutoScalingDisabled = Nothing
    }

-- | Information about the scaling policies.
assdScalingPolicies :: Lens' AutoScalingSettingsDescription [AutoScalingPolicyDescription]
assdScalingPolicies = lens _assdScalingPolicies (\s a -> s {_assdScalingPolicies = a}) . _Default . _Coerce

-- | The minimum capacity units that a global table or global secondary index should be scaled down to.
assdMinimumUnits :: Lens' AutoScalingSettingsDescription (Maybe Natural)
assdMinimumUnits = lens _assdMinimumUnits (\s a -> s {_assdMinimumUnits = a}) . mapping _Nat

-- | The maximum capacity units that a global table or global secondary index should be scaled up to.
assdMaximumUnits :: Lens' AutoScalingSettingsDescription (Maybe Natural)
assdMaximumUnits = lens _assdMaximumUnits (\s a -> s {_assdMaximumUnits = a}) . mapping _Nat

-- | Role ARN used for configuring the auto scaling policy.
assdAutoScalingRoleARN :: Lens' AutoScalingSettingsDescription (Maybe Text)
assdAutoScalingRoleARN = lens _assdAutoScalingRoleARN (\s a -> s {_assdAutoScalingRoleARN = a})

-- | Disabled auto scaling for this global table or global secondary index.
assdAutoScalingDisabled :: Lens' AutoScalingSettingsDescription (Maybe Bool)
assdAutoScalingDisabled = lens _assdAutoScalingDisabled (\s a -> s {_assdAutoScalingDisabled = a})

instance FromJSON AutoScalingSettingsDescription where
  parseJSON =
    withObject
      "AutoScalingSettingsDescription"
      ( \x ->
          AutoScalingSettingsDescription'
            <$> (x .:? "ScalingPolicies" .!= mempty)
            <*> (x .:? "MinimumUnits")
            <*> (x .:? "MaximumUnits")
            <*> (x .:? "AutoScalingRoleArn")
            <*> (x .:? "AutoScalingDisabled")
      )

instance Hashable AutoScalingSettingsDescription

instance NFData AutoScalingSettingsDescription
