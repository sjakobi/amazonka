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
-- Module      : Network.AWS.KinesisAnalytics.DiscoverInputSchema
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Infers a schema by evaluating sample records on the specified streaming source (Amazon Kinesis stream or Amazon Kinesis Firehose delivery stream) or S3 object. In the response, the operation returns the inferred schema and also the sample records that the operation used to infer the schema.
--
--
-- You can use the inferred schema when configuring a streaming source for your application. For conceptual information, see <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html Configuring Application Input> . Note that when you create an application using the Amazon Kinesis Analytics console, the console uses this operation to infer a schema and show it in the console user interface.
--
-- This operation requires permissions to perform the @kinesisanalytics:DiscoverInputSchema@ action.
module Network.AWS.KinesisAnalytics.DiscoverInputSchema
  ( -- * Creating a Request
    discoverInputSchema,
    DiscoverInputSchema,

    -- * Request Lenses
    disResourceARN,
    disInputStartingPositionConfiguration,
    disRoleARN,
    disS3Configuration,
    disInputProcessingConfiguration,

    -- * Destructuring the Response
    discoverInputSchemaResponse,
    DiscoverInputSchemaResponse,

    -- * Response Lenses
    disrrsInputSchema,
    disrrsProcessedInputRecords,
    disrrsRawInputRecords,
    disrrsParsedInputRecords,
    disrrsResponseStatus,
  )
where

import Network.AWS.KinesisAnalytics.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'discoverInputSchema' smart constructor.
data DiscoverInputSchema = DiscoverInputSchema'
  { _disResourceARN ::
      !(Maybe Text),
    _disInputStartingPositionConfiguration ::
      !( Maybe
           InputStartingPositionConfiguration
       ),
    _disRoleARN :: !(Maybe Text),
    _disS3Configuration ::
      !(Maybe S3Configuration),
    _disInputProcessingConfiguration ::
      !( Maybe
           InputProcessingConfiguration
       )
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DiscoverInputSchema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'disResourceARN' - Amazon Resource Name (ARN) of the streaming source.
--
-- * 'disInputStartingPositionConfiguration' - Point at which you want Amazon Kinesis Analytics to start reading records from the specified streaming source discovery purposes.
--
-- * 'disRoleARN' - ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf.
--
-- * 'disS3Configuration' - Specify this parameter to discover a schema from data in an Amazon S3 object.
--
-- * 'disInputProcessingConfiguration' - The <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html InputProcessingConfiguration> to use to preprocess the records before discovering the schema of the records.
discoverInputSchema ::
  DiscoverInputSchema
discoverInputSchema =
  DiscoverInputSchema'
    { _disResourceARN = Nothing,
      _disInputStartingPositionConfiguration = Nothing,
      _disRoleARN = Nothing,
      _disS3Configuration = Nothing,
      _disInputProcessingConfiguration = Nothing
    }

-- | Amazon Resource Name (ARN) of the streaming source.
disResourceARN :: Lens' DiscoverInputSchema (Maybe Text)
disResourceARN = lens _disResourceARN (\s a -> s {_disResourceARN = a})

-- | Point at which you want Amazon Kinesis Analytics to start reading records from the specified streaming source discovery purposes.
disInputStartingPositionConfiguration :: Lens' DiscoverInputSchema (Maybe InputStartingPositionConfiguration)
disInputStartingPositionConfiguration = lens _disInputStartingPositionConfiguration (\s a -> s {_disInputStartingPositionConfiguration = a})

-- | ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf.
disRoleARN :: Lens' DiscoverInputSchema (Maybe Text)
disRoleARN = lens _disRoleARN (\s a -> s {_disRoleARN = a})

-- | Specify this parameter to discover a schema from data in an Amazon S3 object.
disS3Configuration :: Lens' DiscoverInputSchema (Maybe S3Configuration)
disS3Configuration = lens _disS3Configuration (\s a -> s {_disS3Configuration = a})

-- | The <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html InputProcessingConfiguration> to use to preprocess the records before discovering the schema of the records.
disInputProcessingConfiguration :: Lens' DiscoverInputSchema (Maybe InputProcessingConfiguration)
disInputProcessingConfiguration = lens _disInputProcessingConfiguration (\s a -> s {_disInputProcessingConfiguration = a})

instance AWSRequest DiscoverInputSchema where
  type
    Rs DiscoverInputSchema =
      DiscoverInputSchemaResponse
  request = postJSON kinesisAnalytics
  response =
    receiveJSON
      ( \s h x ->
          DiscoverInputSchemaResponse'
            <$> (x .?> "InputSchema")
            <*> (x .?> "ProcessedInputRecords" .!@ mempty)
            <*> (x .?> "RawInputRecords" .!@ mempty)
            <*> (x .?> "ParsedInputRecords" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DiscoverInputSchema

instance NFData DiscoverInputSchema

instance ToHeaders DiscoverInputSchema where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "KinesisAnalytics_20150814.DiscoverInputSchema" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DiscoverInputSchema where
  toJSON DiscoverInputSchema' {..} =
    object
      ( catMaybes
          [ ("ResourceARN" .=) <$> _disResourceARN,
            ("InputStartingPositionConfiguration" .=)
              <$> _disInputStartingPositionConfiguration,
            ("RoleARN" .=) <$> _disRoleARN,
            ("S3Configuration" .=) <$> _disS3Configuration,
            ("InputProcessingConfiguration" .=)
              <$> _disInputProcessingConfiguration
          ]
      )

instance ToPath DiscoverInputSchema where
  toPath = const "/"

instance ToQuery DiscoverInputSchema where
  toQuery = const mempty

-- |
--
--
--
-- /See:/ 'discoverInputSchemaResponse' smart constructor.
data DiscoverInputSchemaResponse = DiscoverInputSchemaResponse'
  { _disrrsInputSchema ::
      !( Maybe
           SourceSchema
       ),
    _disrrsProcessedInputRecords ::
      !(Maybe [Text]),
    _disrrsRawInputRecords ::
      !(Maybe [Text]),
    _disrrsParsedInputRecords ::
      !( Maybe
           [[Text]]
       ),
    _disrrsResponseStatus ::
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

-- | Creates a value of 'DiscoverInputSchemaResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'disrrsInputSchema' - Schema inferred from the streaming source. It identifies the format of the data in the streaming source and how each data element maps to corresponding columns in the in-application stream that you can create.
--
-- * 'disrrsProcessedInputRecords' - Stream data that was modified by the processor specified in the @InputProcessingConfiguration@ parameter.
--
-- * 'disrrsRawInputRecords' - Raw stream data that was sampled to infer the schema.
--
-- * 'disrrsParsedInputRecords' - An array of elements, where each element corresponds to a row in a stream record (a stream record can have more than one row).
--
-- * 'disrrsResponseStatus' - -- | The response status code.
discoverInputSchemaResponse ::
  -- | 'disrrsResponseStatus'
  Int ->
  DiscoverInputSchemaResponse
discoverInputSchemaResponse pResponseStatus_ =
  DiscoverInputSchemaResponse'
    { _disrrsInputSchema =
        Nothing,
      _disrrsProcessedInputRecords = Nothing,
      _disrrsRawInputRecords = Nothing,
      _disrrsParsedInputRecords = Nothing,
      _disrrsResponseStatus = pResponseStatus_
    }

-- | Schema inferred from the streaming source. It identifies the format of the data in the streaming source and how each data element maps to corresponding columns in the in-application stream that you can create.
disrrsInputSchema :: Lens' DiscoverInputSchemaResponse (Maybe SourceSchema)
disrrsInputSchema = lens _disrrsInputSchema (\s a -> s {_disrrsInputSchema = a})

-- | Stream data that was modified by the processor specified in the @InputProcessingConfiguration@ parameter.
disrrsProcessedInputRecords :: Lens' DiscoverInputSchemaResponse [Text]
disrrsProcessedInputRecords = lens _disrrsProcessedInputRecords (\s a -> s {_disrrsProcessedInputRecords = a}) . _Default . _Coerce

-- | Raw stream data that was sampled to infer the schema.
disrrsRawInputRecords :: Lens' DiscoverInputSchemaResponse [Text]
disrrsRawInputRecords = lens _disrrsRawInputRecords (\s a -> s {_disrrsRawInputRecords = a}) . _Default . _Coerce

-- | An array of elements, where each element corresponds to a row in a stream record (a stream record can have more than one row).
disrrsParsedInputRecords :: Lens' DiscoverInputSchemaResponse [[Text]]
disrrsParsedInputRecords = lens _disrrsParsedInputRecords (\s a -> s {_disrrsParsedInputRecords = a}) . _Default . _Coerce

-- | -- | The response status code.
disrrsResponseStatus :: Lens' DiscoverInputSchemaResponse Int
disrrsResponseStatus = lens _disrrsResponseStatus (\s a -> s {_disrrsResponseStatus = a})

instance NFData DiscoverInputSchemaResponse
