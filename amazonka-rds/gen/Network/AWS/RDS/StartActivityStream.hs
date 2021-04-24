{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.StartActivityStream
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a database activity stream to monitor activity on the database. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/DBActivityStreams.html Database Activity Streams> in the /Amazon Aurora User Guide/ .
module Network.AWS.RDS.StartActivityStream
  ( -- * Creating a Request
    startActivityStream,
    StartActivityStream,

    -- * Request Lenses
    sApplyImmediately,
    sResourceARN,
    sMode,
    sKMSKeyId,

    -- * Destructuring the Response
    startActivityStreamResponse,
    StartActivityStreamResponse,

    -- * Response Lenses
    sasrrsStatus,
    sasrrsMode,
    sasrrsKMSKeyId,
    sasrrsKinesisStreamName,
    sasrrsApplyImmediately,
    sasrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startActivityStream' smart constructor.
data StartActivityStream = StartActivityStream'
  { _sApplyImmediately ::
      !(Maybe Bool),
    _sResourceARN :: !Text,
    _sMode :: !ActivityStreamMode,
    _sKMSKeyId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartActivityStream' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sApplyImmediately' - Specifies whether or not the database activity stream is to start as soon as possible, regardless of the maintenance window for the database.
--
-- * 'sResourceARN' - The Amazon Resource Name (ARN) of the DB cluster, for example, @arn:aws:rds:us-east-1:12345667890:cluster:das-cluster@ .
--
-- * 'sMode' - Specifies the mode of the database activity stream. Database events such as a change or access generate an activity stream event. The database session can handle these events either synchronously or asynchronously.
--
-- * 'sKMSKeyId' - The AWS KMS key identifier for encrypting messages in the database activity stream. The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).
startActivityStream ::
  -- | 'sResourceARN'
  Text ->
  -- | 'sMode'
  ActivityStreamMode ->
  -- | 'sKMSKeyId'
  Text ->
  StartActivityStream
startActivityStream pResourceARN_ pMode_ pKMSKeyId_ =
  StartActivityStream'
    { _sApplyImmediately = Nothing,
      _sResourceARN = pResourceARN_,
      _sMode = pMode_,
      _sKMSKeyId = pKMSKeyId_
    }

-- | Specifies whether or not the database activity stream is to start as soon as possible, regardless of the maintenance window for the database.
sApplyImmediately :: Lens' StartActivityStream (Maybe Bool)
sApplyImmediately = lens _sApplyImmediately (\s a -> s {_sApplyImmediately = a})

-- | The Amazon Resource Name (ARN) of the DB cluster, for example, @arn:aws:rds:us-east-1:12345667890:cluster:das-cluster@ .
sResourceARN :: Lens' StartActivityStream Text
sResourceARN = lens _sResourceARN (\s a -> s {_sResourceARN = a})

-- | Specifies the mode of the database activity stream. Database events such as a change or access generate an activity stream event. The database session can handle these events either synchronously or asynchronously.
sMode :: Lens' StartActivityStream ActivityStreamMode
sMode = lens _sMode (\s a -> s {_sMode = a})

-- | The AWS KMS key identifier for encrypting messages in the database activity stream. The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).
sKMSKeyId :: Lens' StartActivityStream Text
sKMSKeyId = lens _sKMSKeyId (\s a -> s {_sKMSKeyId = a})

instance AWSRequest StartActivityStream where
  type
    Rs StartActivityStream =
      StartActivityStreamResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "StartActivityStreamResult"
      ( \s h x ->
          StartActivityStreamResponse'
            <$> (x .@? "Status")
            <*> (x .@? "Mode")
            <*> (x .@? "KmsKeyId")
            <*> (x .@? "KinesisStreamName")
            <*> (x .@? "ApplyImmediately")
            <*> (pure (fromEnum s))
      )

instance Hashable StartActivityStream

instance NFData StartActivityStream

instance ToHeaders StartActivityStream where
  toHeaders = const mempty

instance ToPath StartActivityStream where
  toPath = const "/"

instance ToQuery StartActivityStream where
  toQuery StartActivityStream' {..} =
    mconcat
      [ "Action" =: ("StartActivityStream" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "ApplyImmediately" =: _sApplyImmediately,
        "ResourceArn" =: _sResourceARN,
        "Mode" =: _sMode,
        "KmsKeyId" =: _sKMSKeyId
      ]

-- | /See:/ 'startActivityStreamResponse' smart constructor.
data StartActivityStreamResponse = StartActivityStreamResponse'
  { _sasrrsStatus ::
      !( Maybe
           ActivityStreamStatus
       ),
    _sasrrsMode ::
      !( Maybe
           ActivityStreamMode
       ),
    _sasrrsKMSKeyId ::
      !(Maybe Text),
    _sasrrsKinesisStreamName ::
      !(Maybe Text),
    _sasrrsApplyImmediately ::
      !(Maybe Bool),
    _sasrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'StartActivityStreamResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sasrrsStatus' - The status of the database activity stream.
--
-- * 'sasrrsMode' - The mode of the database activity stream.
--
-- * 'sasrrsKMSKeyId' - The AWS KMS key identifier for encryption of messages in the database activity stream.
--
-- * 'sasrrsKinesisStreamName' - The name of the Amazon Kinesis data stream to be used for the database activity stream.
--
-- * 'sasrrsApplyImmediately' - Indicates whether or not the database activity stream will start as soon as possible, regardless of the maintenance window for the database.
--
-- * 'sasrrsResponseStatus' - -- | The response status code.
startActivityStreamResponse ::
  -- | 'sasrrsResponseStatus'
  Int ->
  StartActivityStreamResponse
startActivityStreamResponse pResponseStatus_ =
  StartActivityStreamResponse'
    { _sasrrsStatus =
        Nothing,
      _sasrrsMode = Nothing,
      _sasrrsKMSKeyId = Nothing,
      _sasrrsKinesisStreamName = Nothing,
      _sasrrsApplyImmediately = Nothing,
      _sasrrsResponseStatus = pResponseStatus_
    }

-- | The status of the database activity stream.
sasrrsStatus :: Lens' StartActivityStreamResponse (Maybe ActivityStreamStatus)
sasrrsStatus = lens _sasrrsStatus (\s a -> s {_sasrrsStatus = a})

-- | The mode of the database activity stream.
sasrrsMode :: Lens' StartActivityStreamResponse (Maybe ActivityStreamMode)
sasrrsMode = lens _sasrrsMode (\s a -> s {_sasrrsMode = a})

-- | The AWS KMS key identifier for encryption of messages in the database activity stream.
sasrrsKMSKeyId :: Lens' StartActivityStreamResponse (Maybe Text)
sasrrsKMSKeyId = lens _sasrrsKMSKeyId (\s a -> s {_sasrrsKMSKeyId = a})

-- | The name of the Amazon Kinesis data stream to be used for the database activity stream.
sasrrsKinesisStreamName :: Lens' StartActivityStreamResponse (Maybe Text)
sasrrsKinesisStreamName = lens _sasrrsKinesisStreamName (\s a -> s {_sasrrsKinesisStreamName = a})

-- | Indicates whether or not the database activity stream will start as soon as possible, regardless of the maintenance window for the database.
sasrrsApplyImmediately :: Lens' StartActivityStreamResponse (Maybe Bool)
sasrrsApplyImmediately = lens _sasrrsApplyImmediately (\s a -> s {_sasrrsApplyImmediately = a})

-- | -- | The response status code.
sasrrsResponseStatus :: Lens' StartActivityStreamResponse Int
sasrrsResponseStatus = lens _sasrrsResponseStatus (\s a -> s {_sasrrsResponseStatus = a})

instance NFData StartActivityStreamResponse
