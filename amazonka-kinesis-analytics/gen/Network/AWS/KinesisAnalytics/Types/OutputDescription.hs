{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisAnalytics.Types.OutputDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalytics.Types.OutputDescription where

import Network.AWS.KinesisAnalytics.Types.DestinationSchema
import Network.AWS.KinesisAnalytics.Types.KinesisFirehoseOutputDescription
import Network.AWS.KinesisAnalytics.Types.KinesisStreamsOutputDescription
import Network.AWS.KinesisAnalytics.Types.LambdaOutputDescription
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the application output configuration, which includes the in-application stream name and the destination where the stream data is written. The destination can be an Amazon Kinesis stream or an Amazon Kinesis Firehose delivery stream.
--
--
--
-- /See:/ 'outputDescription' smart constructor.
data OutputDescription = OutputDescription'
  { _odKinesisStreamsOutputDescription ::
      !( Maybe
           KinesisStreamsOutputDescription
       ),
    _odKinesisFirehoseOutputDescription ::
      !( Maybe
           KinesisFirehoseOutputDescription
       ),
    _odDestinationSchema ::
      !(Maybe DestinationSchema),
    _odOutputId :: !(Maybe Text),
    _odName :: !(Maybe Text),
    _odLambdaOutputDescription ::
      !(Maybe LambdaOutputDescription)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OutputDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'odKinesisStreamsOutputDescription' - Describes Amazon Kinesis stream configured as the destination where output is written.
--
-- * 'odKinesisFirehoseOutputDescription' - Describes the Amazon Kinesis Firehose delivery stream configured as the destination where output is written.
--
-- * 'odDestinationSchema' - Data format used for writing data to the destination.
--
-- * 'odOutputId' - A unique identifier for the output configuration.
--
-- * 'odName' - Name of the in-application stream configured as output.
--
-- * 'odLambdaOutputDescription' - Describes the AWS Lambda function configured as the destination where output is written.
outputDescription ::
  OutputDescription
outputDescription =
  OutputDescription'
    { _odKinesisStreamsOutputDescription =
        Nothing,
      _odKinesisFirehoseOutputDescription = Nothing,
      _odDestinationSchema = Nothing,
      _odOutputId = Nothing,
      _odName = Nothing,
      _odLambdaOutputDescription = Nothing
    }

-- | Describes Amazon Kinesis stream configured as the destination where output is written.
odKinesisStreamsOutputDescription :: Lens' OutputDescription (Maybe KinesisStreamsOutputDescription)
odKinesisStreamsOutputDescription = lens _odKinesisStreamsOutputDescription (\s a -> s {_odKinesisStreamsOutputDescription = a})

-- | Describes the Amazon Kinesis Firehose delivery stream configured as the destination where output is written.
odKinesisFirehoseOutputDescription :: Lens' OutputDescription (Maybe KinesisFirehoseOutputDescription)
odKinesisFirehoseOutputDescription = lens _odKinesisFirehoseOutputDescription (\s a -> s {_odKinesisFirehoseOutputDescription = a})

-- | Data format used for writing data to the destination.
odDestinationSchema :: Lens' OutputDescription (Maybe DestinationSchema)
odDestinationSchema = lens _odDestinationSchema (\s a -> s {_odDestinationSchema = a})

-- | A unique identifier for the output configuration.
odOutputId :: Lens' OutputDescription (Maybe Text)
odOutputId = lens _odOutputId (\s a -> s {_odOutputId = a})

-- | Name of the in-application stream configured as output.
odName :: Lens' OutputDescription (Maybe Text)
odName = lens _odName (\s a -> s {_odName = a})

-- | Describes the AWS Lambda function configured as the destination where output is written.
odLambdaOutputDescription :: Lens' OutputDescription (Maybe LambdaOutputDescription)
odLambdaOutputDescription = lens _odLambdaOutputDescription (\s a -> s {_odLambdaOutputDescription = a})

instance FromJSON OutputDescription where
  parseJSON =
    withObject
      "OutputDescription"
      ( \x ->
          OutputDescription'
            <$> (x .:? "KinesisStreamsOutputDescription")
            <*> (x .:? "KinesisFirehoseOutputDescription")
            <*> (x .:? "DestinationSchema")
            <*> (x .:? "OutputId")
            <*> (x .:? "Name")
            <*> (x .:? "LambdaOutputDescription")
      )

instance Hashable OutputDescription

instance NFData OutputDescription
