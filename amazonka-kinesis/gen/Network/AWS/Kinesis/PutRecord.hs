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
-- Module      : Network.AWS.Kinesis.PutRecord
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Writes a single data record into an Amazon Kinesis data stream. Call @PutRecord@ to send data into the stream for real-time ingestion and subsequent processing, one record at a time. Each shard can support writes up to 1,000 records per second, up to a maximum data write total of 1 MiB per second.
--
--
-- You must specify the name of the stream that captures, stores, and transports the data; a partition key; and the data blob itself.
--
-- The data blob can be any type of data; for example, a segment from a log file, geographic/location data, website clickstream data, and so on.
--
-- The partition key is used by Kinesis Data Streams to distribute data across shards. Kinesis Data Streams segregates the data records that belong to a stream into multiple shards, using the partition key associated with each data record to determine the shard to which a given data record belongs.
--
-- Partition keys are Unicode strings, with a maximum length limit of 256 characters for each key. An MD5 hash function is used to map partition keys to 128-bit integer values and to map associated data records to shards using the hash key ranges of the shards. You can override hashing the partition key to determine the shard by explicitly specifying a hash value using the @ExplicitHashKey@ parameter. For more information, see <https://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream Adding Data to a Stream> in the /Amazon Kinesis Data Streams Developer Guide/ .
--
-- @PutRecord@ returns the shard ID of where the data record was placed and the sequence number that was assigned to the data record.
--
-- Sequence numbers increase over time and are specific to a shard within a stream, not across all shards within a stream. To guarantee strictly increasing ordering, write serially to a shard and use the @SequenceNumberForOrdering@ parameter. For more information, see <https://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream Adding Data to a Stream> in the /Amazon Kinesis Data Streams Developer Guide/ .
--
-- /Important:/ After you write a record to a stream, you cannot modify that record or its order within the stream.
--
-- If a @PutRecord@ request cannot be processed because of insufficient provisioned throughput on the shard involved in the request, @PutRecord@ throws @ProvisionedThroughputExceededException@ .
--
-- By default, data records are accessible for 24 hours from the time that they are added to a stream. You can use 'IncreaseStreamRetentionPeriod' or 'DecreaseStreamRetentionPeriod' to modify this retention period.
module Network.AWS.Kinesis.PutRecord
  ( -- * Creating a Request
    putRecord,
    PutRecord,

    -- * Request Lenses
    pSequenceNumberForOrdering,
    pExplicitHashKey,
    pStreamName,
    pData,
    pPartitionKey,

    -- * Destructuring the Response
    putRecordResponse,
    PutRecordResponse,

    -- * Response Lenses
    prrrsEncryptionType,
    prrrsResponseStatus,
    prrrsShardId,
    prrrsSequenceNumber,
  )
where

import Network.AWS.Kinesis.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input for @PutRecord@ .
--
--
--
-- /See:/ 'putRecord' smart constructor.
data PutRecord = PutRecord'
  { _pSequenceNumberForOrdering ::
      !(Maybe Text),
    _pExplicitHashKey :: !(Maybe Text),
    _pStreamName :: !Text,
    _pData :: !Base64,
    _pPartitionKey :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutRecord' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pSequenceNumberForOrdering' - Guarantees strictly increasing sequence numbers, for puts from the same client and to the same partition key. Usage: set the @SequenceNumberForOrdering@ of record /n/ to the sequence number of record /n-1/ (as returned in the result when putting record /n-1/ ). If this parameter is not set, records are coarsely ordered based on arrival time.
--
-- * 'pExplicitHashKey' - The hash value used to explicitly determine the shard the data record is assigned to by overriding the partition key hash.
--
-- * 'pStreamName' - The name of the stream to put the data record into.
--
-- * 'pData' - The data blob to put into the record, which is base64-encoded when the blob is serialized. When the data blob (the payload before base64-encoding) is added to the partition key size, the total size must not exceed the maximum record size (1 MiB).-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
--
-- * 'pPartitionKey' - Determines which shard in the stream the data record is assigned to. Partition keys are Unicode strings with a maximum length limit of 256 characters for each key. Amazon Kinesis Data Streams uses the partition key as input to a hash function that maps the partition key and associated data to a specific shard. Specifically, an MD5 hash function is used to map partition keys to 128-bit integer values and to map associated data records to shards. As a result of this hashing mechanism, all data records with the same partition key map to the same shard within the stream.
putRecord ::
  -- | 'pStreamName'
  Text ->
  -- | 'pData'
  ByteString ->
  -- | 'pPartitionKey'
  Text ->
  PutRecord
putRecord pStreamName_ pData_ pPartitionKey_ =
  PutRecord'
    { _pSequenceNumberForOrdering = Nothing,
      _pExplicitHashKey = Nothing,
      _pStreamName = pStreamName_,
      _pData = _Base64 # pData_,
      _pPartitionKey = pPartitionKey_
    }

-- | Guarantees strictly increasing sequence numbers, for puts from the same client and to the same partition key. Usage: set the @SequenceNumberForOrdering@ of record /n/ to the sequence number of record /n-1/ (as returned in the result when putting record /n-1/ ). If this parameter is not set, records are coarsely ordered based on arrival time.
pSequenceNumberForOrdering :: Lens' PutRecord (Maybe Text)
pSequenceNumberForOrdering = lens _pSequenceNumberForOrdering (\s a -> s {_pSequenceNumberForOrdering = a})

-- | The hash value used to explicitly determine the shard the data record is assigned to by overriding the partition key hash.
pExplicitHashKey :: Lens' PutRecord (Maybe Text)
pExplicitHashKey = lens _pExplicitHashKey (\s a -> s {_pExplicitHashKey = a})

-- | The name of the stream to put the data record into.
pStreamName :: Lens' PutRecord Text
pStreamName = lens _pStreamName (\s a -> s {_pStreamName = a})

-- | The data blob to put into the record, which is base64-encoded when the blob is serialized. When the data blob (the payload before base64-encoding) is added to the partition key size, the total size must not exceed the maximum record size (1 MiB).-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
pData :: Lens' PutRecord ByteString
pData = lens _pData (\s a -> s {_pData = a}) . _Base64

-- | Determines which shard in the stream the data record is assigned to. Partition keys are Unicode strings with a maximum length limit of 256 characters for each key. Amazon Kinesis Data Streams uses the partition key as input to a hash function that maps the partition key and associated data to a specific shard. Specifically, an MD5 hash function is used to map partition keys to 128-bit integer values and to map associated data records to shards. As a result of this hashing mechanism, all data records with the same partition key map to the same shard within the stream.
pPartitionKey :: Lens' PutRecord Text
pPartitionKey = lens _pPartitionKey (\s a -> s {_pPartitionKey = a})

instance AWSRequest PutRecord where
  type Rs PutRecord = PutRecordResponse
  request = postJSON kinesis
  response =
    receiveJSON
      ( \s h x ->
          PutRecordResponse'
            <$> (x .?> "EncryptionType")
            <*> (pure (fromEnum s))
            <*> (x .:> "ShardId")
            <*> (x .:> "SequenceNumber")
      )

instance Hashable PutRecord

instance NFData PutRecord

instance ToHeaders PutRecord where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Kinesis_20131202.PutRecord" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutRecord where
  toJSON PutRecord' {..} =
    object
      ( catMaybes
          [ ("SequenceNumberForOrdering" .=)
              <$> _pSequenceNumberForOrdering,
            ("ExplicitHashKey" .=) <$> _pExplicitHashKey,
            Just ("StreamName" .= _pStreamName),
            Just ("Data" .= _pData),
            Just ("PartitionKey" .= _pPartitionKey)
          ]
      )

instance ToPath PutRecord where
  toPath = const "/"

instance ToQuery PutRecord where
  toQuery = const mempty

-- | Represents the output for @PutRecord@ .
--
--
--
-- /See:/ 'putRecordResponse' smart constructor.
data PutRecordResponse = PutRecordResponse'
  { _prrrsEncryptionType ::
      !(Maybe EncryptionType),
    _prrrsResponseStatus :: !Int,
    _prrrsShardId :: !Text,
    _prrrsSequenceNumber :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutRecordResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prrrsEncryptionType' - The encryption type to use on the record. This parameter can be one of the following values:     * @NONE@ : Do not encrypt the records in the stream.     * @KMS@ : Use server-side encryption on the records in the stream using a customer-managed AWS KMS key.
--
-- * 'prrrsResponseStatus' - -- | The response status code.
--
-- * 'prrrsShardId' - The shard ID of the shard where the data record was placed.
--
-- * 'prrrsSequenceNumber' - The sequence number identifier that was assigned to the put data record. The sequence number for the record is unique across all records in the stream. A sequence number is the identifier associated with every record put into the stream.
putRecordResponse ::
  -- | 'prrrsResponseStatus'
  Int ->
  -- | 'prrrsShardId'
  Text ->
  -- | 'prrrsSequenceNumber'
  Text ->
  PutRecordResponse
putRecordResponse
  pResponseStatus_
  pShardId_
  pSequenceNumber_ =
    PutRecordResponse'
      { _prrrsEncryptionType = Nothing,
        _prrrsResponseStatus = pResponseStatus_,
        _prrrsShardId = pShardId_,
        _prrrsSequenceNumber = pSequenceNumber_
      }

-- | The encryption type to use on the record. This parameter can be one of the following values:     * @NONE@ : Do not encrypt the records in the stream.     * @KMS@ : Use server-side encryption on the records in the stream using a customer-managed AWS KMS key.
prrrsEncryptionType :: Lens' PutRecordResponse (Maybe EncryptionType)
prrrsEncryptionType = lens _prrrsEncryptionType (\s a -> s {_prrrsEncryptionType = a})

-- | -- | The response status code.
prrrsResponseStatus :: Lens' PutRecordResponse Int
prrrsResponseStatus = lens _prrrsResponseStatus (\s a -> s {_prrrsResponseStatus = a})

-- | The shard ID of the shard where the data record was placed.
prrrsShardId :: Lens' PutRecordResponse Text
prrrsShardId = lens _prrrsShardId (\s a -> s {_prrrsShardId = a})

-- | The sequence number identifier that was assigned to the put data record. The sequence number for the record is unique across all records in the stream. A sequence number is the identifier associated with every record put into the stream.
prrrsSequenceNumber :: Lens' PutRecordResponse Text
prrrsSequenceNumber = lens _prrrsSequenceNumber (\s a -> s {_prrrsSequenceNumber = a})

instance NFData PutRecordResponse
