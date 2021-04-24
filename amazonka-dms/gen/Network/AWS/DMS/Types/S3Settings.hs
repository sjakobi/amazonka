{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.S3Settings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.S3Settings where

import Network.AWS.DMS.Types.CompressionTypeValue
import Network.AWS.DMS.Types.DataFormatValue
import Network.AWS.DMS.Types.DatePartitionDelimiterValue
import Network.AWS.DMS.Types.DatePartitionSequenceValue
import Network.AWS.DMS.Types.EncodingTypeValue
import Network.AWS.DMS.Types.EncryptionModeValue
import Network.AWS.DMS.Types.ParquetVersionValue
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Settings for exporting data to Amazon S3.
--
--
--
-- /See:/ 's3Settings' smart constructor.
data S3Settings = S3Settings'
  { _ssTimestampColumnName ::
      !(Maybe Text),
    _ssPreserveTransactions :: !(Maybe Bool),
    _ssCSVRowDelimiter :: !(Maybe Text),
    _ssParquetVersion :: !(Maybe ParquetVersionValue),
    _ssDatePartitionSequence ::
      !(Maybe DatePartitionSequenceValue),
    _ssBucketName :: !(Maybe Text),
    _ssCdcPath :: !(Maybe Text),
    _ssExternalTableDefinition :: !(Maybe Text),
    _ssServerSideEncryptionKMSKeyId :: !(Maybe Text),
    _ssDataPageSize :: !(Maybe Int),
    _ssEncodingType :: !(Maybe EncodingTypeValue),
    _ssDatePartitionEnabled :: !(Maybe Bool),
    _ssDataFormat :: !(Maybe DataFormatValue),
    _ssServiceAccessRoleARN :: !(Maybe Text),
    _ssBucketFolder :: !(Maybe Text),
    _ssDatePartitionDelimiter ::
      !(Maybe DatePartitionDelimiterValue),
    _ssEnableStatistics :: !(Maybe Bool),
    _ssEncryptionMode :: !(Maybe EncryptionModeValue),
    _ssCdcInsertsOnly :: !(Maybe Bool),
    _ssCdcInsertsAndUpdates :: !(Maybe Bool),
    _ssUseCSVNoSupValue :: !(Maybe Bool),
    _ssDictPageSizeLimit :: !(Maybe Int),
    _ssRowGroupLength :: !(Maybe Int),
    _ssCompressionType ::
      !(Maybe CompressionTypeValue),
    _ssIncludeOpForFullLoad :: !(Maybe Bool),
    _ssCSVDelimiter :: !(Maybe Text),
    _ssParquetTimestampInMillisecond :: !(Maybe Bool),
    _ssCSVNoSupValue :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'S3Settings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssTimestampColumnName' - A value that when nonblank causes AWS DMS to add a column with timestamp information to the endpoint data for an Amazon S3 target. DMS includes an additional @STRING@ column in the .csv or .parquet object files of your migrated data when you set @TimestampColumnName@ to a nonblank value. For a full load, each row of this timestamp column contains a timestamp for when the data was transferred from the source to the target by DMS.  For a change data capture (CDC) load, each row of the timestamp column contains the timestamp for the commit of that row in the source database. The string format for this timestamp column value is @yyyy-MM-dd HH:mm:ss.SSSSSS@ . By default, the precision of this value is in microseconds. For a CDC load, the rounding of the precision depends on the commit timestamp supported by DMS for the source database. When the @AddColumnName@ parameter is set to @true@ , DMS also includes a name for the timestamp column that you set with @TimestampColumnName@ .
--
-- * 'ssPreserveTransactions' - If set to @true@ , AWS DMS saves the transaction order for a change data capture (CDC) load on the Amazon S3 target specified by <https://docs.aws.amazon.com/dms/latest/APIReference/API_S3Settings.html#DMS-Type-S3Settings-CdcPath @CdcPath@ > . For more information, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.EndpointSettings.CdcPath Capturing data changes (CDC) including transaction order on the S3 target> .
--
-- * 'ssCSVRowDelimiter' - The delimiter used to separate rows in the .csv file for both source and target. The default is a carriage return (@\n@ ).
--
-- * 'ssParquetVersion' - The version of the Apache Parquet format that you want to use: @parquet_1_0@ (the default) or @parquet_2_0@ .
--
-- * 'ssDatePartitionSequence' - Identifies the sequence of the date format to use during folder partitioning. The default value is @YYYYMMDD@ . Use this parameter when @DatePartitionedEnabled@ is set to @true@ .
--
-- * 'ssBucketName' - The name of the S3 bucket.
--
-- * 'ssCdcPath' - Specifies the folder path of CDC files. For an S3 source, this setting is required if a task captures change data; otherwise, it's optional. If @CdcPath@ is set, AWS DMS reads CDC files from this path and replicates the data changes to the target endpoint. For an S3 target if you set <https://docs.aws.amazon.com/dms/latest/APIReference/API_S3Settings.html#DMS-Type-S3Settings-PreserveTransactions @PreserveTransactions@ > to @true@ , AWS DMS verifies that you have set this parameter to a folder path on your S3 target where AWS DMS can save the transaction order for the CDC load. AWS DMS creates this CDC folder path in either your S3 target working directory or the S3 target location specified by <https://docs.aws.amazon.com/dms/latest/APIReference/API_S3Settings.html#DMS-Type-S3Settings-BucketFolder @BucketFolder@ > and <https://docs.aws.amazon.com/dms/latest/APIReference/API_S3Settings.html#DMS-Type-S3Settings-BucketName @BucketName@ > . For example, if you specify @CdcPath@ as @MyChangedData@ , and you specify @BucketName@ as @MyTargetBucket@ but do not specify @BucketFolder@ , AWS DMS creates the CDC folder path following: @MyTargetBucket/MyChangedData@ . If you specify the same @CdcPath@ , and you specify @BucketName@ as @MyTargetBucket@ and @BucketFolder@ as @MyTargetData@ , AWS DMS creates the CDC folder path following: @MyTargetBucket/MyTargetData/MyChangedData@ . For more information on CDC including transaction order on an S3 target, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.EndpointSettings.CdcPath Capturing data changes (CDC) including transaction order on the S3 target> .
--
-- * 'ssExternalTableDefinition' - Specifies how tables are defined in the S3 source files only.
--
-- * 'ssServerSideEncryptionKMSKeyId' - If you are using @SSE_KMS@ for the @EncryptionMode@ , provide the AWS KMS key ID. The key that you use needs an attached policy that enables AWS Identity and Access Management (IAM) user permissions and allows use of the key. Here is a CLI example: @aws dms create-endpoint --endpoint-identifier /value/ --endpoint-type target --engine-name s3 --s3-settings ServiceAccessRoleArn=/value/ ,BucketFolder=/value/ ,BucketName=/value/ ,EncryptionMode=SSE_KMS,ServerSideEncryptionKmsKeyId=/value/ @
--
-- * 'ssDataPageSize' - The size of one data page in bytes. This parameter defaults to 1024 * 1024 bytes (1 MiB). This number is used for .parquet file format only.
--
-- * 'ssEncodingType' - The type of encoding you are using:      * @RLE_DICTIONARY@ uses a combination of bit-packing and run-length encoding to store repeated values more efficiently. This is the default.     * @PLAIN@ doesn't use encoding at all. Values are stored as they are.     * @PLAIN_DICTIONARY@ builds a dictionary of the values encountered in a given column. The dictionary is stored in a dictionary page for each column chunk.
--
-- * 'ssDatePartitionEnabled' - When set to @true@ , this parameter partitions S3 bucket folders based on transaction commit dates. The default value is @false@ . For more information about date-based folder partitoning, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.DatePartitioning Using date-based folder partitioning> .
--
-- * 'ssDataFormat' - The format of the data that you want to use for output. You can choose one of the following:      * @csv@ : This is a row-based file format with comma-separated values (.csv).      * @parquet@ : Apache Parquet (.parquet) is a columnar storage file format that features efficient compression and provides faster query response.
--
-- * 'ssServiceAccessRoleARN' - The Amazon Resource Name (ARN) used by the service access IAM role. It is a required parameter that enables DMS to write and read objects from an 3S bucket.
--
-- * 'ssBucketFolder' - An optional parameter to set a folder name in the S3 bucket. If provided, tables are created in the path @/bucketFolder/ //schema_name/ //table_name/ /@ . If this parameter isn't specified, then the path used is @/schema_name/ //table_name/ /@ .
--
-- * 'ssDatePartitionDelimiter' - Specifies a date separating delimiter to use during folder partitioning. The default value is @SLASH@ . Use this parameter when @DatePartitionedEnabled@ is set to @true@ .
--
-- * 'ssEnableStatistics' - A value that enables statistics for Parquet pages and row groups. Choose @true@ to enable statistics, @false@ to disable. Statistics include @NULL@ , @DISTINCT@ , @MAX@ , and @MIN@ values. This parameter defaults to @true@ . This value is used for .parquet file format only.
--
-- * 'ssEncryptionMode' - The type of server-side encryption that you want to use for your data. This encryption type is part of the endpoint settings or the extra connections attributes for Amazon S3. You can choose either @SSE_S3@ (the default) or @SSE_KMS@ .  To use @SSE_S3@ , you need an AWS Identity and Access Management (IAM) role with permission to allow @"arn:aws:s3:::dms-*"@ to use the following actions:     * @s3:CreateBucket@      * @s3:ListBucket@      * @s3:DeleteBucket@      * @s3:GetBucketLocation@      * @s3:GetObject@      * @s3:PutObject@      * @s3:DeleteObject@      * @s3:GetObjectVersion@      * @s3:GetBucketPolicy@      * @s3:PutBucketPolicy@      * @s3:DeleteBucketPolicy@
--
-- * 'ssCdcInsertsOnly' - A value that enables a change data capture (CDC) load to write only INSERT operations to .csv or columnar storage (.parquet) output files. By default (the @false@ setting), the first field in a .csv or .parquet record contains the letter I (INSERT), U (UPDATE), or D (DELETE). These values indicate whether the row was inserted, updated, or deleted at the source database for a CDC load to the target. If @CdcInsertsOnly@ is set to @true@ or @y@ , only INSERTs from the source database are migrated to the .csv or .parquet file. For .csv format only, how these INSERTs are recorded depends on the value of @IncludeOpForFullLoad@ . If @IncludeOpForFullLoad@ is set to @true@ , the first field of every CDC record is set to I to indicate the INSERT operation at the source. If @IncludeOpForFullLoad@ is set to @false@ , every CDC record is written without a first field to indicate the INSERT operation at the source. For more information about how these settings work together, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring.InsertOps Indicating Source DB Operations in Migrated S3 Data> in the /AWS Database Migration Service User Guide./ .
--
-- * 'ssCdcInsertsAndUpdates' - A value that enables a change data capture (CDC) load to write INSERT and UPDATE operations to .csv or .parquet (columnar storage) output files. The default setting is @false@ , but when @CdcInsertsAndUpdates@ is set to @true@ or @y@ , only INSERTs and UPDATEs from the source database are migrated to the .csv or .parquet file.  For .csv file format only, how these INSERTs and UPDATEs are recorded depends on the value of the @IncludeOpForFullLoad@ parameter. If @IncludeOpForFullLoad@ is set to @true@ , the first field of every CDC record is set to either @I@ or @U@ to indicate INSERT and UPDATE operations at the source. But if @IncludeOpForFullLoad@ is set to @false@ , CDC records are written without an indication of INSERT or UPDATE operations at the source. For more information about how these settings work together, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring.InsertOps Indicating Source DB Operations in Migrated S3 Data> in the /AWS Database Migration Service User Guide./ .
--
-- * 'ssUseCSVNoSupValue' - This setting applies if the S3 output files during a change data capture (CDC) load are written in .csv format. If set to @true@ for columns not included in the supplemental log, AWS DMS uses the value specified by <https://docs.aws.amazon.com/dms/latest/APIReference/API_S3Settings.html#DMS-Type-S3Settings-CsvNoSupValue @CsvNoSupValue@ > . If not set or set to @false@ , AWS DMS uses the null value for these columns.
--
-- * 'ssDictPageSizeLimit' - The maximum size of an encoded dictionary page of a column. If the dictionary page exceeds this, this column is stored using an encoding type of @PLAIN@ . This parameter defaults to 1024 * 1024 bytes (1 MiB), the maximum size of a dictionary page before it reverts to @PLAIN@ encoding. This size is used for .parquet file format only.
--
-- * 'ssRowGroupLength' - The number of rows in a row group. A smaller row group size provides faster reads. But as the number of row groups grows, the slower writes become. This parameter defaults to 10,000 rows. This number is used for .parquet file format only.  If you choose a value larger than the maximum, @RowGroupLength@ is set to the max row group length in bytes (64 * 1024 * 1024).
--
-- * 'ssCompressionType' - An optional parameter to use GZIP to compress the target files. Set to GZIP to compress the target files. Either set this parameter to NONE (the default) or don't use it to leave the files uncompressed. This parameter applies to both .csv and .parquet file formats.
--
-- * 'ssIncludeOpForFullLoad' - A value that enables a full load to write INSERT operations to the comma-separated value (.csv) output files only to indicate how the rows were added to the source database. For full load, records can only be inserted. By default (the @false@ setting), no information is recorded in these output files for a full load to indicate that the rows were inserted at the source database. If @IncludeOpForFullLoad@ is set to @true@ or @y@ , the INSERT is recorded as an I annotation in the first field of the .csv file. This allows the format of your target records from a full load to be consistent with the target records from a CDC load.
--
-- * 'ssCSVDelimiter' - The delimiter used to separate columns in the .csv file for both source and target. The default is a comma.
--
-- * 'ssParquetTimestampInMillisecond' - A value that specifies the precision of any @TIMESTAMP@ column values that are written to an Amazon S3 object file in .parquet format. When @ParquetTimestampInMillisecond@ is set to @true@ or @y@ , AWS DMS writes all @TIMESTAMP@ columns in a .parquet formatted file with millisecond precision. Otherwise, DMS writes them with microsecond precision. Currently, Amazon Athena and AWS Glue can handle only millisecond precision for @TIMESTAMP@ values. Set this parameter to @true@ for S3 endpoint object files that are .parquet formatted only if you plan to query or process the data with Athena or AWS Glue.
--
-- * 'ssCSVNoSupValue' - This setting only applies if your Amazon S3 output files during a change data capture (CDC) load are written in .csv format. If <https://docs.aws.amazon.com/dms/latest/APIReference/API_S3Settings.html#DMS-Type-S3Settings-UseCsvNoSupValue @UseCsvNoSupValue@ > is set to true, specify a string value that you want AWS DMS to use for all columns not included in the supplemental log. If you do not specify a string value, AWS DMS uses the null value for these columns regardless of the @UseCsvNoSupValue@ setting.
s3Settings ::
  S3Settings
s3Settings =
  S3Settings'
    { _ssTimestampColumnName = Nothing,
      _ssPreserveTransactions = Nothing,
      _ssCSVRowDelimiter = Nothing,
      _ssParquetVersion = Nothing,
      _ssDatePartitionSequence = Nothing,
      _ssBucketName = Nothing,
      _ssCdcPath = Nothing,
      _ssExternalTableDefinition = Nothing,
      _ssServerSideEncryptionKMSKeyId = Nothing,
      _ssDataPageSize = Nothing,
      _ssEncodingType = Nothing,
      _ssDatePartitionEnabled = Nothing,
      _ssDataFormat = Nothing,
      _ssServiceAccessRoleARN = Nothing,
      _ssBucketFolder = Nothing,
      _ssDatePartitionDelimiter = Nothing,
      _ssEnableStatistics = Nothing,
      _ssEncryptionMode = Nothing,
      _ssCdcInsertsOnly = Nothing,
      _ssCdcInsertsAndUpdates = Nothing,
      _ssUseCSVNoSupValue = Nothing,
      _ssDictPageSizeLimit = Nothing,
      _ssRowGroupLength = Nothing,
      _ssCompressionType = Nothing,
      _ssIncludeOpForFullLoad = Nothing,
      _ssCSVDelimiter = Nothing,
      _ssParquetTimestampInMillisecond = Nothing,
      _ssCSVNoSupValue = Nothing
    }

-- | A value that when nonblank causes AWS DMS to add a column with timestamp information to the endpoint data for an Amazon S3 target. DMS includes an additional @STRING@ column in the .csv or .parquet object files of your migrated data when you set @TimestampColumnName@ to a nonblank value. For a full load, each row of this timestamp column contains a timestamp for when the data was transferred from the source to the target by DMS.  For a change data capture (CDC) load, each row of the timestamp column contains the timestamp for the commit of that row in the source database. The string format for this timestamp column value is @yyyy-MM-dd HH:mm:ss.SSSSSS@ . By default, the precision of this value is in microseconds. For a CDC load, the rounding of the precision depends on the commit timestamp supported by DMS for the source database. When the @AddColumnName@ parameter is set to @true@ , DMS also includes a name for the timestamp column that you set with @TimestampColumnName@ .
ssTimestampColumnName :: Lens' S3Settings (Maybe Text)
ssTimestampColumnName = lens _ssTimestampColumnName (\s a -> s {_ssTimestampColumnName = a})

-- | If set to @true@ , AWS DMS saves the transaction order for a change data capture (CDC) load on the Amazon S3 target specified by <https://docs.aws.amazon.com/dms/latest/APIReference/API_S3Settings.html#DMS-Type-S3Settings-CdcPath @CdcPath@ > . For more information, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.EndpointSettings.CdcPath Capturing data changes (CDC) including transaction order on the S3 target> .
ssPreserveTransactions :: Lens' S3Settings (Maybe Bool)
ssPreserveTransactions = lens _ssPreserveTransactions (\s a -> s {_ssPreserveTransactions = a})

-- | The delimiter used to separate rows in the .csv file for both source and target. The default is a carriage return (@\n@ ).
ssCSVRowDelimiter :: Lens' S3Settings (Maybe Text)
ssCSVRowDelimiter = lens _ssCSVRowDelimiter (\s a -> s {_ssCSVRowDelimiter = a})

-- | The version of the Apache Parquet format that you want to use: @parquet_1_0@ (the default) or @parquet_2_0@ .
ssParquetVersion :: Lens' S3Settings (Maybe ParquetVersionValue)
ssParquetVersion = lens _ssParquetVersion (\s a -> s {_ssParquetVersion = a})

-- | Identifies the sequence of the date format to use during folder partitioning. The default value is @YYYYMMDD@ . Use this parameter when @DatePartitionedEnabled@ is set to @true@ .
ssDatePartitionSequence :: Lens' S3Settings (Maybe DatePartitionSequenceValue)
ssDatePartitionSequence = lens _ssDatePartitionSequence (\s a -> s {_ssDatePartitionSequence = a})

-- | The name of the S3 bucket.
ssBucketName :: Lens' S3Settings (Maybe Text)
ssBucketName = lens _ssBucketName (\s a -> s {_ssBucketName = a})

-- | Specifies the folder path of CDC files. For an S3 source, this setting is required if a task captures change data; otherwise, it's optional. If @CdcPath@ is set, AWS DMS reads CDC files from this path and replicates the data changes to the target endpoint. For an S3 target if you set <https://docs.aws.amazon.com/dms/latest/APIReference/API_S3Settings.html#DMS-Type-S3Settings-PreserveTransactions @PreserveTransactions@ > to @true@ , AWS DMS verifies that you have set this parameter to a folder path on your S3 target where AWS DMS can save the transaction order for the CDC load. AWS DMS creates this CDC folder path in either your S3 target working directory or the S3 target location specified by <https://docs.aws.amazon.com/dms/latest/APIReference/API_S3Settings.html#DMS-Type-S3Settings-BucketFolder @BucketFolder@ > and <https://docs.aws.amazon.com/dms/latest/APIReference/API_S3Settings.html#DMS-Type-S3Settings-BucketName @BucketName@ > . For example, if you specify @CdcPath@ as @MyChangedData@ , and you specify @BucketName@ as @MyTargetBucket@ but do not specify @BucketFolder@ , AWS DMS creates the CDC folder path following: @MyTargetBucket/MyChangedData@ . If you specify the same @CdcPath@ , and you specify @BucketName@ as @MyTargetBucket@ and @BucketFolder@ as @MyTargetData@ , AWS DMS creates the CDC folder path following: @MyTargetBucket/MyTargetData/MyChangedData@ . For more information on CDC including transaction order on an S3 target, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.EndpointSettings.CdcPath Capturing data changes (CDC) including transaction order on the S3 target> .
ssCdcPath :: Lens' S3Settings (Maybe Text)
ssCdcPath = lens _ssCdcPath (\s a -> s {_ssCdcPath = a})

-- | Specifies how tables are defined in the S3 source files only.
ssExternalTableDefinition :: Lens' S3Settings (Maybe Text)
ssExternalTableDefinition = lens _ssExternalTableDefinition (\s a -> s {_ssExternalTableDefinition = a})

-- | If you are using @SSE_KMS@ for the @EncryptionMode@ , provide the AWS KMS key ID. The key that you use needs an attached policy that enables AWS Identity and Access Management (IAM) user permissions and allows use of the key. Here is a CLI example: @aws dms create-endpoint --endpoint-identifier /value/ --endpoint-type target --engine-name s3 --s3-settings ServiceAccessRoleArn=/value/ ,BucketFolder=/value/ ,BucketName=/value/ ,EncryptionMode=SSE_KMS,ServerSideEncryptionKmsKeyId=/value/ @
ssServerSideEncryptionKMSKeyId :: Lens' S3Settings (Maybe Text)
ssServerSideEncryptionKMSKeyId = lens _ssServerSideEncryptionKMSKeyId (\s a -> s {_ssServerSideEncryptionKMSKeyId = a})

-- | The size of one data page in bytes. This parameter defaults to 1024 * 1024 bytes (1 MiB). This number is used for .parquet file format only.
ssDataPageSize :: Lens' S3Settings (Maybe Int)
ssDataPageSize = lens _ssDataPageSize (\s a -> s {_ssDataPageSize = a})

-- | The type of encoding you are using:      * @RLE_DICTIONARY@ uses a combination of bit-packing and run-length encoding to store repeated values more efficiently. This is the default.     * @PLAIN@ doesn't use encoding at all. Values are stored as they are.     * @PLAIN_DICTIONARY@ builds a dictionary of the values encountered in a given column. The dictionary is stored in a dictionary page for each column chunk.
ssEncodingType :: Lens' S3Settings (Maybe EncodingTypeValue)
ssEncodingType = lens _ssEncodingType (\s a -> s {_ssEncodingType = a})

-- | When set to @true@ , this parameter partitions S3 bucket folders based on transaction commit dates. The default value is @false@ . For more information about date-based folder partitoning, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.DatePartitioning Using date-based folder partitioning> .
ssDatePartitionEnabled :: Lens' S3Settings (Maybe Bool)
ssDatePartitionEnabled = lens _ssDatePartitionEnabled (\s a -> s {_ssDatePartitionEnabled = a})

-- | The format of the data that you want to use for output. You can choose one of the following:      * @csv@ : This is a row-based file format with comma-separated values (.csv).      * @parquet@ : Apache Parquet (.parquet) is a columnar storage file format that features efficient compression and provides faster query response.
ssDataFormat :: Lens' S3Settings (Maybe DataFormatValue)
ssDataFormat = lens _ssDataFormat (\s a -> s {_ssDataFormat = a})

-- | The Amazon Resource Name (ARN) used by the service access IAM role. It is a required parameter that enables DMS to write and read objects from an 3S bucket.
ssServiceAccessRoleARN :: Lens' S3Settings (Maybe Text)
ssServiceAccessRoleARN = lens _ssServiceAccessRoleARN (\s a -> s {_ssServiceAccessRoleARN = a})

-- | An optional parameter to set a folder name in the S3 bucket. If provided, tables are created in the path @/bucketFolder/ //schema_name/ //table_name/ /@ . If this parameter isn't specified, then the path used is @/schema_name/ //table_name/ /@ .
ssBucketFolder :: Lens' S3Settings (Maybe Text)
ssBucketFolder = lens _ssBucketFolder (\s a -> s {_ssBucketFolder = a})

-- | Specifies a date separating delimiter to use during folder partitioning. The default value is @SLASH@ . Use this parameter when @DatePartitionedEnabled@ is set to @true@ .
ssDatePartitionDelimiter :: Lens' S3Settings (Maybe DatePartitionDelimiterValue)
ssDatePartitionDelimiter = lens _ssDatePartitionDelimiter (\s a -> s {_ssDatePartitionDelimiter = a})

-- | A value that enables statistics for Parquet pages and row groups. Choose @true@ to enable statistics, @false@ to disable. Statistics include @NULL@ , @DISTINCT@ , @MAX@ , and @MIN@ values. This parameter defaults to @true@ . This value is used for .parquet file format only.
ssEnableStatistics :: Lens' S3Settings (Maybe Bool)
ssEnableStatistics = lens _ssEnableStatistics (\s a -> s {_ssEnableStatistics = a})

-- | The type of server-side encryption that you want to use for your data. This encryption type is part of the endpoint settings or the extra connections attributes for Amazon S3. You can choose either @SSE_S3@ (the default) or @SSE_KMS@ .  To use @SSE_S3@ , you need an AWS Identity and Access Management (IAM) role with permission to allow @"arn:aws:s3:::dms-*"@ to use the following actions:     * @s3:CreateBucket@      * @s3:ListBucket@      * @s3:DeleteBucket@      * @s3:GetBucketLocation@      * @s3:GetObject@      * @s3:PutObject@      * @s3:DeleteObject@      * @s3:GetObjectVersion@      * @s3:GetBucketPolicy@      * @s3:PutBucketPolicy@      * @s3:DeleteBucketPolicy@
ssEncryptionMode :: Lens' S3Settings (Maybe EncryptionModeValue)
ssEncryptionMode = lens _ssEncryptionMode (\s a -> s {_ssEncryptionMode = a})

-- | A value that enables a change data capture (CDC) load to write only INSERT operations to .csv or columnar storage (.parquet) output files. By default (the @false@ setting), the first field in a .csv or .parquet record contains the letter I (INSERT), U (UPDATE), or D (DELETE). These values indicate whether the row was inserted, updated, or deleted at the source database for a CDC load to the target. If @CdcInsertsOnly@ is set to @true@ or @y@ , only INSERTs from the source database are migrated to the .csv or .parquet file. For .csv format only, how these INSERTs are recorded depends on the value of @IncludeOpForFullLoad@ . If @IncludeOpForFullLoad@ is set to @true@ , the first field of every CDC record is set to I to indicate the INSERT operation at the source. If @IncludeOpForFullLoad@ is set to @false@ , every CDC record is written without a first field to indicate the INSERT operation at the source. For more information about how these settings work together, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring.InsertOps Indicating Source DB Operations in Migrated S3 Data> in the /AWS Database Migration Service User Guide./ .
ssCdcInsertsOnly :: Lens' S3Settings (Maybe Bool)
ssCdcInsertsOnly = lens _ssCdcInsertsOnly (\s a -> s {_ssCdcInsertsOnly = a})

-- | A value that enables a change data capture (CDC) load to write INSERT and UPDATE operations to .csv or .parquet (columnar storage) output files. The default setting is @false@ , but when @CdcInsertsAndUpdates@ is set to @true@ or @y@ , only INSERTs and UPDATEs from the source database are migrated to the .csv or .parquet file.  For .csv file format only, how these INSERTs and UPDATEs are recorded depends on the value of the @IncludeOpForFullLoad@ parameter. If @IncludeOpForFullLoad@ is set to @true@ , the first field of every CDC record is set to either @I@ or @U@ to indicate INSERT and UPDATE operations at the source. But if @IncludeOpForFullLoad@ is set to @false@ , CDC records are written without an indication of INSERT or UPDATE operations at the source. For more information about how these settings work together, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring.InsertOps Indicating Source DB Operations in Migrated S3 Data> in the /AWS Database Migration Service User Guide./ .
ssCdcInsertsAndUpdates :: Lens' S3Settings (Maybe Bool)
ssCdcInsertsAndUpdates = lens _ssCdcInsertsAndUpdates (\s a -> s {_ssCdcInsertsAndUpdates = a})

-- | This setting applies if the S3 output files during a change data capture (CDC) load are written in .csv format. If set to @true@ for columns not included in the supplemental log, AWS DMS uses the value specified by <https://docs.aws.amazon.com/dms/latest/APIReference/API_S3Settings.html#DMS-Type-S3Settings-CsvNoSupValue @CsvNoSupValue@ > . If not set or set to @false@ , AWS DMS uses the null value for these columns.
ssUseCSVNoSupValue :: Lens' S3Settings (Maybe Bool)
ssUseCSVNoSupValue = lens _ssUseCSVNoSupValue (\s a -> s {_ssUseCSVNoSupValue = a})

-- | The maximum size of an encoded dictionary page of a column. If the dictionary page exceeds this, this column is stored using an encoding type of @PLAIN@ . This parameter defaults to 1024 * 1024 bytes (1 MiB), the maximum size of a dictionary page before it reverts to @PLAIN@ encoding. This size is used for .parquet file format only.
ssDictPageSizeLimit :: Lens' S3Settings (Maybe Int)
ssDictPageSizeLimit = lens _ssDictPageSizeLimit (\s a -> s {_ssDictPageSizeLimit = a})

-- | The number of rows in a row group. A smaller row group size provides faster reads. But as the number of row groups grows, the slower writes become. This parameter defaults to 10,000 rows. This number is used for .parquet file format only.  If you choose a value larger than the maximum, @RowGroupLength@ is set to the max row group length in bytes (64 * 1024 * 1024).
ssRowGroupLength :: Lens' S3Settings (Maybe Int)
ssRowGroupLength = lens _ssRowGroupLength (\s a -> s {_ssRowGroupLength = a})

-- | An optional parameter to use GZIP to compress the target files. Set to GZIP to compress the target files. Either set this parameter to NONE (the default) or don't use it to leave the files uncompressed. This parameter applies to both .csv and .parquet file formats.
ssCompressionType :: Lens' S3Settings (Maybe CompressionTypeValue)
ssCompressionType = lens _ssCompressionType (\s a -> s {_ssCompressionType = a})

-- | A value that enables a full load to write INSERT operations to the comma-separated value (.csv) output files only to indicate how the rows were added to the source database. For full load, records can only be inserted. By default (the @false@ setting), no information is recorded in these output files for a full load to indicate that the rows were inserted at the source database. If @IncludeOpForFullLoad@ is set to @true@ or @y@ , the INSERT is recorded as an I annotation in the first field of the .csv file. This allows the format of your target records from a full load to be consistent with the target records from a CDC load.
ssIncludeOpForFullLoad :: Lens' S3Settings (Maybe Bool)
ssIncludeOpForFullLoad = lens _ssIncludeOpForFullLoad (\s a -> s {_ssIncludeOpForFullLoad = a})

-- | The delimiter used to separate columns in the .csv file for both source and target. The default is a comma.
ssCSVDelimiter :: Lens' S3Settings (Maybe Text)
ssCSVDelimiter = lens _ssCSVDelimiter (\s a -> s {_ssCSVDelimiter = a})

-- | A value that specifies the precision of any @TIMESTAMP@ column values that are written to an Amazon S3 object file in .parquet format. When @ParquetTimestampInMillisecond@ is set to @true@ or @y@ , AWS DMS writes all @TIMESTAMP@ columns in a .parquet formatted file with millisecond precision. Otherwise, DMS writes them with microsecond precision. Currently, Amazon Athena and AWS Glue can handle only millisecond precision for @TIMESTAMP@ values. Set this parameter to @true@ for S3 endpoint object files that are .parquet formatted only if you plan to query or process the data with Athena or AWS Glue.
ssParquetTimestampInMillisecond :: Lens' S3Settings (Maybe Bool)
ssParquetTimestampInMillisecond = lens _ssParquetTimestampInMillisecond (\s a -> s {_ssParquetTimestampInMillisecond = a})

-- | This setting only applies if your Amazon S3 output files during a change data capture (CDC) load are written in .csv format. If <https://docs.aws.amazon.com/dms/latest/APIReference/API_S3Settings.html#DMS-Type-S3Settings-UseCsvNoSupValue @UseCsvNoSupValue@ > is set to true, specify a string value that you want AWS DMS to use for all columns not included in the supplemental log. If you do not specify a string value, AWS DMS uses the null value for these columns regardless of the @UseCsvNoSupValue@ setting.
ssCSVNoSupValue :: Lens' S3Settings (Maybe Text)
ssCSVNoSupValue = lens _ssCSVNoSupValue (\s a -> s {_ssCSVNoSupValue = a})

instance FromJSON S3Settings where
  parseJSON =
    withObject
      "S3Settings"
      ( \x ->
          S3Settings'
            <$> (x .:? "TimestampColumnName")
            <*> (x .:? "PreserveTransactions")
            <*> (x .:? "CsvRowDelimiter")
            <*> (x .:? "ParquetVersion")
            <*> (x .:? "DatePartitionSequence")
            <*> (x .:? "BucketName")
            <*> (x .:? "CdcPath")
            <*> (x .:? "ExternalTableDefinition")
            <*> (x .:? "ServerSideEncryptionKmsKeyId")
            <*> (x .:? "DataPageSize")
            <*> (x .:? "EncodingType")
            <*> (x .:? "DatePartitionEnabled")
            <*> (x .:? "DataFormat")
            <*> (x .:? "ServiceAccessRoleArn")
            <*> (x .:? "BucketFolder")
            <*> (x .:? "DatePartitionDelimiter")
            <*> (x .:? "EnableStatistics")
            <*> (x .:? "EncryptionMode")
            <*> (x .:? "CdcInsertsOnly")
            <*> (x .:? "CdcInsertsAndUpdates")
            <*> (x .:? "UseCsvNoSupValue")
            <*> (x .:? "DictPageSizeLimit")
            <*> (x .:? "RowGroupLength")
            <*> (x .:? "CompressionType")
            <*> (x .:? "IncludeOpForFullLoad")
            <*> (x .:? "CsvDelimiter")
            <*> (x .:? "ParquetTimestampInMillisecond")
            <*> (x .:? "CsvNoSupValue")
      )

instance Hashable S3Settings

instance NFData S3Settings

instance ToJSON S3Settings where
  toJSON S3Settings' {..} =
    object
      ( catMaybes
          [ ("TimestampColumnName" .=)
              <$> _ssTimestampColumnName,
            ("PreserveTransactions" .=)
              <$> _ssPreserveTransactions,
            ("CsvRowDelimiter" .=) <$> _ssCSVRowDelimiter,
            ("ParquetVersion" .=) <$> _ssParquetVersion,
            ("DatePartitionSequence" .=)
              <$> _ssDatePartitionSequence,
            ("BucketName" .=) <$> _ssBucketName,
            ("CdcPath" .=) <$> _ssCdcPath,
            ("ExternalTableDefinition" .=)
              <$> _ssExternalTableDefinition,
            ("ServerSideEncryptionKmsKeyId" .=)
              <$> _ssServerSideEncryptionKMSKeyId,
            ("DataPageSize" .=) <$> _ssDataPageSize,
            ("EncodingType" .=) <$> _ssEncodingType,
            ("DatePartitionEnabled" .=)
              <$> _ssDatePartitionEnabled,
            ("DataFormat" .=) <$> _ssDataFormat,
            ("ServiceAccessRoleArn" .=)
              <$> _ssServiceAccessRoleARN,
            ("BucketFolder" .=) <$> _ssBucketFolder,
            ("DatePartitionDelimiter" .=)
              <$> _ssDatePartitionDelimiter,
            ("EnableStatistics" .=) <$> _ssEnableStatistics,
            ("EncryptionMode" .=) <$> _ssEncryptionMode,
            ("CdcInsertsOnly" .=) <$> _ssCdcInsertsOnly,
            ("CdcInsertsAndUpdates" .=)
              <$> _ssCdcInsertsAndUpdates,
            ("UseCsvNoSupValue" .=) <$> _ssUseCSVNoSupValue,
            ("DictPageSizeLimit" .=) <$> _ssDictPageSizeLimit,
            ("RowGroupLength" .=) <$> _ssRowGroupLength,
            ("CompressionType" .=) <$> _ssCompressionType,
            ("IncludeOpForFullLoad" .=)
              <$> _ssIncludeOpForFullLoad,
            ("CsvDelimiter" .=) <$> _ssCSVDelimiter,
            ("ParquetTimestampInMillisecond" .=)
              <$> _ssParquetTimestampInMillisecond,
            ("CsvNoSupValue" .=) <$> _ssCSVNoSupValue
          ]
      )
