{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Firehose.Types.ElasticsearchDestinationUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.ElasticsearchDestinationUpdate where

import Network.AWS.Firehose.Types.CloudWatchLoggingOptions
import Network.AWS.Firehose.Types.ElasticsearchBufferingHints
import Network.AWS.Firehose.Types.ElasticsearchIndexRotationPeriod
import Network.AWS.Firehose.Types.ElasticsearchRetryOptions
import Network.AWS.Firehose.Types.ProcessingConfiguration
import Network.AWS.Firehose.Types.S3DestinationUpdate
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an update for a destination in Amazon ES.
--
--
--
-- /See:/ 'elasticsearchDestinationUpdate' smart constructor.
data ElasticsearchDestinationUpdate = ElasticsearchDestinationUpdate'
  { _eduTypeName ::
      !( Maybe
           Text
       ),
    _eduRoleARN ::
      !( Maybe
           Text
       ),
    _eduClusterEndpoint ::
      !( Maybe
           Text
       ),
    _eduIndexName ::
      !( Maybe
           Text
       ),
    _eduS3Update ::
      !( Maybe
           S3DestinationUpdate
       ),
    _eduProcessingConfiguration ::
      !( Maybe
           ProcessingConfiguration
       ),
    _eduCloudWatchLoggingOptions ::
      !( Maybe
           CloudWatchLoggingOptions
       ),
    _eduDomainARN ::
      !( Maybe
           Text
       ),
    _eduIndexRotationPeriod ::
      !( Maybe
           ElasticsearchIndexRotationPeriod
       ),
    _eduBufferingHints ::
      !( Maybe
           ElasticsearchBufferingHints
       ),
    _eduRetryOptions ::
      !( Maybe
           ElasticsearchRetryOptions
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

-- | Creates a value of 'ElasticsearchDestinationUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eduTypeName' - The Elasticsearch type name. For Elasticsearch 6.x, there can be only one type per index. If you try to specify a new type for an existing index that already has another type, Kinesis Data Firehose returns an error during runtime. If you upgrade Elasticsearch from 6.x to 7.x and don’t update your delivery stream, Kinesis Data Firehose still delivers data to Elasticsearch with the old index name and type name. If you want to update your delivery stream with a new index name, provide an empty string for @TypeName@ .
--
-- * 'eduRoleARN' - The Amazon Resource Name (ARN) of the IAM role to be assumed by Kinesis Data Firehose for calling the Amazon ES Configuration API and for indexing documents. For more information, see <https://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3 Grant Kinesis Data Firehose Access to an Amazon S3 Destination> and <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces> .
--
-- * 'eduClusterEndpoint' - The endpoint to use when communicating with the cluster. Specify either this @ClusterEndpoint@ or the @DomainARN@ field.
--
-- * 'eduIndexName' - The Elasticsearch index name.
--
-- * 'eduS3Update' - The Amazon S3 destination.
--
-- * 'eduProcessingConfiguration' - The data processing configuration.
--
-- * 'eduCloudWatchLoggingOptions' - The CloudWatch logging options for your delivery stream.
--
-- * 'eduDomainARN' - The ARN of the Amazon ES domain. The IAM role must have permissions for @DescribeElasticsearchDomain@ , @DescribeElasticsearchDomains@ , and @DescribeElasticsearchDomainConfig@ after assuming the IAM role specified in @RoleARN@ . For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces> . Specify either @ClusterEndpoint@ or @DomainARN@ .
--
-- * 'eduIndexRotationPeriod' - The Elasticsearch index rotation period. Index rotation appends a timestamp to @IndexName@ to facilitate the expiration of old data. For more information, see <https://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#es-index-rotation Index Rotation for the Amazon ES Destination> . Default value is @OneDay@ .
--
-- * 'eduBufferingHints' - The buffering options. If no value is specified, @ElasticsearchBufferingHints@ object default values are used.
--
-- * 'eduRetryOptions' - The retry behavior in case Kinesis Data Firehose is unable to deliver documents to Amazon ES. The default value is 300 (5 minutes).
elasticsearchDestinationUpdate ::
  ElasticsearchDestinationUpdate
elasticsearchDestinationUpdate =
  ElasticsearchDestinationUpdate'
    { _eduTypeName =
        Nothing,
      _eduRoleARN = Nothing,
      _eduClusterEndpoint = Nothing,
      _eduIndexName = Nothing,
      _eduS3Update = Nothing,
      _eduProcessingConfiguration = Nothing,
      _eduCloudWatchLoggingOptions = Nothing,
      _eduDomainARN = Nothing,
      _eduIndexRotationPeriod = Nothing,
      _eduBufferingHints = Nothing,
      _eduRetryOptions = Nothing
    }

-- | The Elasticsearch type name. For Elasticsearch 6.x, there can be only one type per index. If you try to specify a new type for an existing index that already has another type, Kinesis Data Firehose returns an error during runtime. If you upgrade Elasticsearch from 6.x to 7.x and don’t update your delivery stream, Kinesis Data Firehose still delivers data to Elasticsearch with the old index name and type name. If you want to update your delivery stream with a new index name, provide an empty string for @TypeName@ .
eduTypeName :: Lens' ElasticsearchDestinationUpdate (Maybe Text)
eduTypeName = lens _eduTypeName (\s a -> s {_eduTypeName = a})

-- | The Amazon Resource Name (ARN) of the IAM role to be assumed by Kinesis Data Firehose for calling the Amazon ES Configuration API and for indexing documents. For more information, see <https://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3 Grant Kinesis Data Firehose Access to an Amazon S3 Destination> and <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces> .
eduRoleARN :: Lens' ElasticsearchDestinationUpdate (Maybe Text)
eduRoleARN = lens _eduRoleARN (\s a -> s {_eduRoleARN = a})

-- | The endpoint to use when communicating with the cluster. Specify either this @ClusterEndpoint@ or the @DomainARN@ field.
eduClusterEndpoint :: Lens' ElasticsearchDestinationUpdate (Maybe Text)
eduClusterEndpoint = lens _eduClusterEndpoint (\s a -> s {_eduClusterEndpoint = a})

-- | The Elasticsearch index name.
eduIndexName :: Lens' ElasticsearchDestinationUpdate (Maybe Text)
eduIndexName = lens _eduIndexName (\s a -> s {_eduIndexName = a})

-- | The Amazon S3 destination.
eduS3Update :: Lens' ElasticsearchDestinationUpdate (Maybe S3DestinationUpdate)
eduS3Update = lens _eduS3Update (\s a -> s {_eduS3Update = a})

-- | The data processing configuration.
eduProcessingConfiguration :: Lens' ElasticsearchDestinationUpdate (Maybe ProcessingConfiguration)
eduProcessingConfiguration = lens _eduProcessingConfiguration (\s a -> s {_eduProcessingConfiguration = a})

-- | The CloudWatch logging options for your delivery stream.
eduCloudWatchLoggingOptions :: Lens' ElasticsearchDestinationUpdate (Maybe CloudWatchLoggingOptions)
eduCloudWatchLoggingOptions = lens _eduCloudWatchLoggingOptions (\s a -> s {_eduCloudWatchLoggingOptions = a})

-- | The ARN of the Amazon ES domain. The IAM role must have permissions for @DescribeElasticsearchDomain@ , @DescribeElasticsearchDomains@ , and @DescribeElasticsearchDomainConfig@ after assuming the IAM role specified in @RoleARN@ . For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces> . Specify either @ClusterEndpoint@ or @DomainARN@ .
eduDomainARN :: Lens' ElasticsearchDestinationUpdate (Maybe Text)
eduDomainARN = lens _eduDomainARN (\s a -> s {_eduDomainARN = a})

-- | The Elasticsearch index rotation period. Index rotation appends a timestamp to @IndexName@ to facilitate the expiration of old data. For more information, see <https://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#es-index-rotation Index Rotation for the Amazon ES Destination> . Default value is @OneDay@ .
eduIndexRotationPeriod :: Lens' ElasticsearchDestinationUpdate (Maybe ElasticsearchIndexRotationPeriod)
eduIndexRotationPeriod = lens _eduIndexRotationPeriod (\s a -> s {_eduIndexRotationPeriod = a})

-- | The buffering options. If no value is specified, @ElasticsearchBufferingHints@ object default values are used.
eduBufferingHints :: Lens' ElasticsearchDestinationUpdate (Maybe ElasticsearchBufferingHints)
eduBufferingHints = lens _eduBufferingHints (\s a -> s {_eduBufferingHints = a})

-- | The retry behavior in case Kinesis Data Firehose is unable to deliver documents to Amazon ES. The default value is 300 (5 minutes).
eduRetryOptions :: Lens' ElasticsearchDestinationUpdate (Maybe ElasticsearchRetryOptions)
eduRetryOptions = lens _eduRetryOptions (\s a -> s {_eduRetryOptions = a})

instance Hashable ElasticsearchDestinationUpdate

instance NFData ElasticsearchDestinationUpdate

instance ToJSON ElasticsearchDestinationUpdate where
  toJSON ElasticsearchDestinationUpdate' {..} =
    object
      ( catMaybes
          [ ("TypeName" .=) <$> _eduTypeName,
            ("RoleARN" .=) <$> _eduRoleARN,
            ("ClusterEndpoint" .=) <$> _eduClusterEndpoint,
            ("IndexName" .=) <$> _eduIndexName,
            ("S3Update" .=) <$> _eduS3Update,
            ("ProcessingConfiguration" .=)
              <$> _eduProcessingConfiguration,
            ("CloudWatchLoggingOptions" .=)
              <$> _eduCloudWatchLoggingOptions,
            ("DomainARN" .=) <$> _eduDomainARN,
            ("IndexRotationPeriod" .=)
              <$> _eduIndexRotationPeriod,
            ("BufferingHints" .=) <$> _eduBufferingHints,
            ("RetryOptions" .=) <$> _eduRetryOptions
          ]
      )
