{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.DebugHookConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.DebugHookConfig where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.CollectionConfiguration

-- | Configuration information for the Debugger hook parameters, metric and tensor collections, and storage paths. To learn more about how to configure the @DebugHookConfig@ parameter, see <https://docs.aws.amazon.com/sagemaker/latest/dg/debugger-createtrainingjob-api.html Use the SageMaker and Debugger Configuration API Operations to Create, Update, and Debug Your Training Job> .
--
--
--
-- /See:/ 'debugHookConfig' smart constructor.
data DebugHookConfig = DebugHookConfig'
  { _dhcCollectionConfigurations ::
      !(Maybe [CollectionConfiguration]),
    _dhcHookParameters ::
      !(Maybe (Map Text Text)),
    _dhcLocalPath :: !(Maybe Text),
    _dhcS3OutputPath :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DebugHookConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dhcCollectionConfigurations' - Configuration information for Debugger tensor collections. To learn more about how to configure the @CollectionConfiguration@ parameter, see <https://docs.aws.amazon.com/sagemaker/latest/dg/debugger-createtrainingjob-api.html Use the SageMaker and Debugger Configuration API Operations to Create, Update, and Debug Your Training Job> .
--
-- * 'dhcHookParameters' - Configuration information for the Debugger hook parameters.
--
-- * 'dhcLocalPath' - Path to local storage location for metrics and tensors. Defaults to @/opt/ml/output/tensors/@ .
--
-- * 'dhcS3OutputPath' - Path to Amazon S3 storage location for metrics and tensors.
debugHookConfig ::
  -- | 'dhcS3OutputPath'
  Text ->
  DebugHookConfig
debugHookConfig pS3OutputPath_ =
  DebugHookConfig'
    { _dhcCollectionConfigurations =
        Nothing,
      _dhcHookParameters = Nothing,
      _dhcLocalPath = Nothing,
      _dhcS3OutputPath = pS3OutputPath_
    }

-- | Configuration information for Debugger tensor collections. To learn more about how to configure the @CollectionConfiguration@ parameter, see <https://docs.aws.amazon.com/sagemaker/latest/dg/debugger-createtrainingjob-api.html Use the SageMaker and Debugger Configuration API Operations to Create, Update, and Debug Your Training Job> .
dhcCollectionConfigurations :: Lens' DebugHookConfig [CollectionConfiguration]
dhcCollectionConfigurations = lens _dhcCollectionConfigurations (\s a -> s {_dhcCollectionConfigurations = a}) . _Default . _Coerce

-- | Configuration information for the Debugger hook parameters.
dhcHookParameters :: Lens' DebugHookConfig (HashMap Text Text)
dhcHookParameters = lens _dhcHookParameters (\s a -> s {_dhcHookParameters = a}) . _Default . _Map

-- | Path to local storage location for metrics and tensors. Defaults to @/opt/ml/output/tensors/@ .
dhcLocalPath :: Lens' DebugHookConfig (Maybe Text)
dhcLocalPath = lens _dhcLocalPath (\s a -> s {_dhcLocalPath = a})

-- | Path to Amazon S3 storage location for metrics and tensors.
dhcS3OutputPath :: Lens' DebugHookConfig Text
dhcS3OutputPath = lens _dhcS3OutputPath (\s a -> s {_dhcS3OutputPath = a})

instance FromJSON DebugHookConfig where
  parseJSON =
    withObject
      "DebugHookConfig"
      ( \x ->
          DebugHookConfig'
            <$> (x .:? "CollectionConfigurations" .!= mempty)
            <*> (x .:? "HookParameters" .!= mempty)
            <*> (x .:? "LocalPath")
            <*> (x .: "S3OutputPath")
      )

instance Hashable DebugHookConfig

instance NFData DebugHookConfig

instance ToJSON DebugHookConfig where
  toJSON DebugHookConfig' {..} =
    object
      ( catMaybes
          [ ("CollectionConfigurations" .=)
              <$> _dhcCollectionConfigurations,
            ("HookParameters" .=) <$> _dhcHookParameters,
            ("LocalPath" .=) <$> _dhcLocalPath,
            Just ("S3OutputPath" .= _dhcS3OutputPath)
          ]
      )
