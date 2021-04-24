{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoSync.Types.CognitoStreams
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoSync.Types.CognitoStreams where

import Network.AWS.CognitoSync.Types.StreamingStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Configuration options for configure Cognito streams.
--
-- /See:/ 'cognitoStreams' smart constructor.
data CognitoStreams = CognitoStreams'
  { _csRoleARN ::
      !(Maybe Text),
    _csStreamName :: !(Maybe Text),
    _csStreamingStatus ::
      !(Maybe StreamingStatus)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CognitoStreams' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csRoleARN' - The ARN of the role Amazon Cognito can assume in order to publish to the stream. This role must grant access to Amazon Cognito (cognito-sync) to invoke PutRecord on your Cognito stream.
--
-- * 'csStreamName' - The name of the Cognito stream to receive updates. This stream must be in the developers account and in the same region as the identity pool.
--
-- * 'csStreamingStatus' - Status of the Cognito streams. Valid values are: ENABLED - Streaming of updates to identity pool is enabled. DISABLED - Streaming of updates to identity pool is disabled. Bulk publish will also fail if StreamingStatus is DISABLED.
cognitoStreams ::
  CognitoStreams
cognitoStreams =
  CognitoStreams'
    { _csRoleARN = Nothing,
      _csStreamName = Nothing,
      _csStreamingStatus = Nothing
    }

-- | The ARN of the role Amazon Cognito can assume in order to publish to the stream. This role must grant access to Amazon Cognito (cognito-sync) to invoke PutRecord on your Cognito stream.
csRoleARN :: Lens' CognitoStreams (Maybe Text)
csRoleARN = lens _csRoleARN (\s a -> s {_csRoleARN = a})

-- | The name of the Cognito stream to receive updates. This stream must be in the developers account and in the same region as the identity pool.
csStreamName :: Lens' CognitoStreams (Maybe Text)
csStreamName = lens _csStreamName (\s a -> s {_csStreamName = a})

-- | Status of the Cognito streams. Valid values are: ENABLED - Streaming of updates to identity pool is enabled. DISABLED - Streaming of updates to identity pool is disabled. Bulk publish will also fail if StreamingStatus is DISABLED.
csStreamingStatus :: Lens' CognitoStreams (Maybe StreamingStatus)
csStreamingStatus = lens _csStreamingStatus (\s a -> s {_csStreamingStatus = a})

instance FromJSON CognitoStreams where
  parseJSON =
    withObject
      "CognitoStreams"
      ( \x ->
          CognitoStreams'
            <$> (x .:? "RoleArn")
            <*> (x .:? "StreamName")
            <*> (x .:? "StreamingStatus")
      )

instance Hashable CognitoStreams

instance NFData CognitoStreams

instance ToJSON CognitoStreams where
  toJSON CognitoStreams' {..} =
    object
      ( catMaybes
          [ ("RoleArn" .=) <$> _csRoleARN,
            ("StreamName" .=) <$> _csStreamName,
            ("StreamingStatus" .=) <$> _csStreamingStatus
          ]
      )
