{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.RedshiftSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.RedshiftSettings where

import Network.AWS.DMS.Types.EncryptionModeValue
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information that defines an Amazon Redshift endpoint.
--
--
--
-- /See:/ 'redshiftSettings' smart constructor.
data RedshiftSettings = RedshiftSettings'
  { _rsReplaceChars ::
      !(Maybe Text),
    _rsCaseSensitiveNames ::
      !(Maybe Bool),
    _rsBucketName :: !(Maybe Text),
    _rsFileTransferUploadStreams ::
      !(Maybe Int),
    _rsReplaceInvalidChars ::
      !(Maybe Text),
    _rsServerSideEncryptionKMSKeyId ::
      !(Maybe Text),
    _rsTimeFormat :: !(Maybe Text),
    _rsWriteBufferSize :: !(Maybe Int),
    _rsServiceAccessRoleARN ::
      !(Maybe Text),
    _rsBucketFolder :: !(Maybe Text),
    _rsConnectionTimeout :: !(Maybe Int),
    _rsSecretsManagerSecretId ::
      !(Maybe Text),
    _rsLoadTimeout :: !(Maybe Int),
    _rsAfterConnectScript ::
      !(Maybe Text),
    _rsServerName :: !(Maybe Text),
    _rsAcceptAnyDate :: !(Maybe Bool),
    _rsMaxFileSize :: !(Maybe Int),
    _rsRemoveQuotes :: !(Maybe Bool),
    _rsPassword ::
      !(Maybe (Sensitive Text)),
    _rsDateFormat :: !(Maybe Text),
    _rsEncryptionMode ::
      !(Maybe EncryptionModeValue),
    _rsEmptyAsNull :: !(Maybe Bool),
    _rsPort :: !(Maybe Int),
    _rsUsername :: !(Maybe Text),
    _rsSecretsManagerAccessRoleARN ::
      !(Maybe Text),
    _rsTrimBlanks :: !(Maybe Bool),
    _rsTruncateColumns :: !(Maybe Bool),
    _rsCompUpdate :: !(Maybe Bool),
    _rsExplicitIds :: !(Maybe Bool),
    _rsDatabaseName :: !(Maybe Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'RedshiftSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsReplaceChars' - A value that specifies to replaces the invalid characters specified in @ReplaceInvalidChars@ , substituting the specified characters instead. The default is @"?"@ .
--
-- * 'rsCaseSensitiveNames' - If Amazon Redshift is configured to support case sensitive schema names, set @CaseSensitiveNames@ to @true@ . The default is @false@ .
--
-- * 'rsBucketName' - The name of the intermediate S3 bucket used to store .csv files before uploading data to Redshift.
--
-- * 'rsFileTransferUploadStreams' - The number of threads used to upload a single file. This parameter accepts a value from 1 through 64. It defaults to 10. The number of parallel streams used to upload a single .csv file to an S3 bucket using S3 Multipart Upload. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html Multipart upload overview> .  @FileTransferUploadStreams@ accepts a value from 1 through 64. It defaults to 10.
--
-- * 'rsReplaceInvalidChars' - A list of characters that you want to replace. Use with @ReplaceChars@ .
--
-- * 'rsServerSideEncryptionKMSKeyId' - The AWS KMS key ID. If you are using @SSE_KMS@ for the @EncryptionMode@ , provide this key ID. The key that you use needs an attached policy that enables IAM user permissions and allows use of the key.
--
-- * 'rsTimeFormat' - The time format that you want to use. Valid values are @auto@ (case-sensitive), @'timeformat_string'@ , @'epochsecs'@ , or @'epochmillisecs'@ . It defaults to 10. Using @auto@ recognizes most strings, even some that aren't supported when you use a time format string.  If your date and time values use formats different from each other, set this parameter to @auto@ .
--
-- * 'rsWriteBufferSize' - The size (in KB) of the in-memory file write buffer used when generating .csv files on the local disk at the DMS replication instance. The default value is 1000 (buffer size is 1000KB).
--
-- * 'rsServiceAccessRoleARN' - The Amazon Resource Name (ARN) of the IAM role that has access to the Amazon Redshift service.
--
-- * 'rsBucketFolder' - An S3 folder where the comma-separated-value (.csv) files are stored before being uploaded to the target Redshift cluster.  For full load mode, AWS DMS converts source records into .csv files and loads them to the /BucketFolder\/TableID/ path. AWS DMS uses the Redshift @COPY@ command to upload the .csv files to the target table. The files are deleted once the @COPY@ operation has finished. For more information, see <https://docs.aws.amazon.com/redshift/latest/dg/r_COPY.html COPY> in the /Amazon Redshift Database Developer Guide/ . For change-data-capture (CDC) mode, AWS DMS creates a /NetChanges/ table, and loads the .csv files to this /BucketFolder\/NetChangesTableID/ path.
--
-- * 'rsConnectionTimeout' - A value that sets the amount of time to wait (in milliseconds) before timing out, beginning from when you initially establish a connection.
--
-- * 'rsSecretsManagerSecretId' - The full ARN, partial ARN, or friendly name of the @SecretsManagerSecret@ that contains the Amazon Redshift endpoint connection details.
--
-- * 'rsLoadTimeout' - The amount of time to wait (in milliseconds) before timing out of operations performed by AWS DMS on a Redshift cluster, such as Redshift COPY, INSERT, DELETE, and UPDATE.
--
-- * 'rsAfterConnectScript' - Code to run after connecting. This parameter should contain the code itself, not the name of a file containing the code.
--
-- * 'rsServerName' - The name of the Amazon Redshift cluster you are using.
--
-- * 'rsAcceptAnyDate' - A value that indicates to allow any date format, including invalid formats such as 00/00/00 00:00:00, to be loaded without generating an error. You can choose @true@ or @false@ (the default). This parameter applies only to TIMESTAMP and DATE columns. Always use ACCEPTANYDATE with the DATEFORMAT parameter. If the date format for the data doesn't match the DATEFORMAT specification, Amazon Redshift inserts a NULL value into that field.
--
-- * 'rsMaxFileSize' - The maximum size (in KB) of any .csv file used to load data on an S3 bucket and transfer data to Amazon Redshift. It defaults to 1048576KB (1 GB).
--
-- * 'rsRemoveQuotes' - A value that specifies to remove surrounding quotation marks from strings in the incoming data. All characters within the quotation marks, including delimiters, are retained. Choose @true@ to remove quotation marks. The default is @false@ .
--
-- * 'rsPassword' - The password for the user named in the @username@ property.
--
-- * 'rsDateFormat' - The date format that you are using. Valid values are @auto@ (case-sensitive), your date format string enclosed in quotes, or NULL. If this parameter is left unset (NULL), it defaults to a format of 'YYYY-MM-DD'. Using @auto@ recognizes most strings, even some that aren't supported when you use a date format string.  If your date and time values use formats different from each other, set this to @auto@ .
--
-- * 'rsEncryptionMode' - The type of server-side encryption that you want to use for your data. This encryption type is part of the endpoint settings or the extra connections attributes for Amazon S3. You can choose either @SSE_S3@ (the default) or @SSE_KMS@ .  To use @SSE_S3@ , create an AWS Identity and Access Management (IAM) role with a policy that allows @"arn:aws:s3:::*"@ to use the following actions: @"s3:PutObject", "s3:ListBucket"@
--
-- * 'rsEmptyAsNull' - A value that specifies whether AWS DMS should migrate empty CHAR and VARCHAR fields as NULL. A value of @true@ sets empty CHAR and VARCHAR fields to null. The default is @false@ .
--
-- * 'rsPort' - The port number for Amazon Redshift. The default value is 5439.
--
-- * 'rsUsername' - An Amazon Redshift user name for a registered user.
--
-- * 'rsSecretsManagerAccessRoleARN' - The full Amazon Resource Name (ARN) of the IAM role that specifies AWS DMS as the trusted entity and grants the required permissions to access the value in @SecretsManagerSecret@ . @SecretsManagerSecret@ has the value of the AWS Secrets Manager secret that allows access to the Amazon Redshift endpoint.
--
-- * 'rsTrimBlanks' - A value that specifies to remove the trailing white space characters from a VARCHAR string. This parameter applies only to columns with a VARCHAR data type. Choose @true@ to remove unneeded white space. The default is @false@ .
--
-- * 'rsTruncateColumns' - A value that specifies to truncate data in columns to the appropriate number of characters, so that the data fits in the column. This parameter applies only to columns with a VARCHAR or CHAR data type, and rows with a size of 4 MB or less. Choose @true@ to truncate data. The default is @false@ .
--
-- * 'rsCompUpdate' - If you set @CompUpdate@ to @true@ Amazon Redshift applies automatic compression if the table is empty. This applies even if the table columns already have encodings other than @RAW@ . If you set @CompUpdate@ to @false@ , automatic compression is disabled and existing column encodings aren't changed. The default is @true@ .
--
-- * 'rsExplicitIds' - This setting is only valid for a full-load migration task. Set @ExplicitIds@ to @true@ to have tables with @IDENTITY@ columns override their auto-generated values with explicit values loaded from the source data files used to populate the tables. The default is @false@ .
--
-- * 'rsDatabaseName' - The name of the Amazon Redshift data warehouse (service) that you are working with.
redshiftSettings ::
  RedshiftSettings
redshiftSettings =
  RedshiftSettings'
    { _rsReplaceChars = Nothing,
      _rsCaseSensitiveNames = Nothing,
      _rsBucketName = Nothing,
      _rsFileTransferUploadStreams = Nothing,
      _rsReplaceInvalidChars = Nothing,
      _rsServerSideEncryptionKMSKeyId = Nothing,
      _rsTimeFormat = Nothing,
      _rsWriteBufferSize = Nothing,
      _rsServiceAccessRoleARN = Nothing,
      _rsBucketFolder = Nothing,
      _rsConnectionTimeout = Nothing,
      _rsSecretsManagerSecretId = Nothing,
      _rsLoadTimeout = Nothing,
      _rsAfterConnectScript = Nothing,
      _rsServerName = Nothing,
      _rsAcceptAnyDate = Nothing,
      _rsMaxFileSize = Nothing,
      _rsRemoveQuotes = Nothing,
      _rsPassword = Nothing,
      _rsDateFormat = Nothing,
      _rsEncryptionMode = Nothing,
      _rsEmptyAsNull = Nothing,
      _rsPort = Nothing,
      _rsUsername = Nothing,
      _rsSecretsManagerAccessRoleARN = Nothing,
      _rsTrimBlanks = Nothing,
      _rsTruncateColumns = Nothing,
      _rsCompUpdate = Nothing,
      _rsExplicitIds = Nothing,
      _rsDatabaseName = Nothing
    }

-- | A value that specifies to replaces the invalid characters specified in @ReplaceInvalidChars@ , substituting the specified characters instead. The default is @"?"@ .
rsReplaceChars :: Lens' RedshiftSettings (Maybe Text)
rsReplaceChars = lens _rsReplaceChars (\s a -> s {_rsReplaceChars = a})

-- | If Amazon Redshift is configured to support case sensitive schema names, set @CaseSensitiveNames@ to @true@ . The default is @false@ .
rsCaseSensitiveNames :: Lens' RedshiftSettings (Maybe Bool)
rsCaseSensitiveNames = lens _rsCaseSensitiveNames (\s a -> s {_rsCaseSensitiveNames = a})

-- | The name of the intermediate S3 bucket used to store .csv files before uploading data to Redshift.
rsBucketName :: Lens' RedshiftSettings (Maybe Text)
rsBucketName = lens _rsBucketName (\s a -> s {_rsBucketName = a})

-- | The number of threads used to upload a single file. This parameter accepts a value from 1 through 64. It defaults to 10. The number of parallel streams used to upload a single .csv file to an S3 bucket using S3 Multipart Upload. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html Multipart upload overview> .  @FileTransferUploadStreams@ accepts a value from 1 through 64. It defaults to 10.
rsFileTransferUploadStreams :: Lens' RedshiftSettings (Maybe Int)
rsFileTransferUploadStreams = lens _rsFileTransferUploadStreams (\s a -> s {_rsFileTransferUploadStreams = a})

-- | A list of characters that you want to replace. Use with @ReplaceChars@ .
rsReplaceInvalidChars :: Lens' RedshiftSettings (Maybe Text)
rsReplaceInvalidChars = lens _rsReplaceInvalidChars (\s a -> s {_rsReplaceInvalidChars = a})

-- | The AWS KMS key ID. If you are using @SSE_KMS@ for the @EncryptionMode@ , provide this key ID. The key that you use needs an attached policy that enables IAM user permissions and allows use of the key.
rsServerSideEncryptionKMSKeyId :: Lens' RedshiftSettings (Maybe Text)
rsServerSideEncryptionKMSKeyId = lens _rsServerSideEncryptionKMSKeyId (\s a -> s {_rsServerSideEncryptionKMSKeyId = a})

-- | The time format that you want to use. Valid values are @auto@ (case-sensitive), @'timeformat_string'@ , @'epochsecs'@ , or @'epochmillisecs'@ . It defaults to 10. Using @auto@ recognizes most strings, even some that aren't supported when you use a time format string.  If your date and time values use formats different from each other, set this parameter to @auto@ .
rsTimeFormat :: Lens' RedshiftSettings (Maybe Text)
rsTimeFormat = lens _rsTimeFormat (\s a -> s {_rsTimeFormat = a})

-- | The size (in KB) of the in-memory file write buffer used when generating .csv files on the local disk at the DMS replication instance. The default value is 1000 (buffer size is 1000KB).
rsWriteBufferSize :: Lens' RedshiftSettings (Maybe Int)
rsWriteBufferSize = lens _rsWriteBufferSize (\s a -> s {_rsWriteBufferSize = a})

-- | The Amazon Resource Name (ARN) of the IAM role that has access to the Amazon Redshift service.
rsServiceAccessRoleARN :: Lens' RedshiftSettings (Maybe Text)
rsServiceAccessRoleARN = lens _rsServiceAccessRoleARN (\s a -> s {_rsServiceAccessRoleARN = a})

-- | An S3 folder where the comma-separated-value (.csv) files are stored before being uploaded to the target Redshift cluster.  For full load mode, AWS DMS converts source records into .csv files and loads them to the /BucketFolder\/TableID/ path. AWS DMS uses the Redshift @COPY@ command to upload the .csv files to the target table. The files are deleted once the @COPY@ operation has finished. For more information, see <https://docs.aws.amazon.com/redshift/latest/dg/r_COPY.html COPY> in the /Amazon Redshift Database Developer Guide/ . For change-data-capture (CDC) mode, AWS DMS creates a /NetChanges/ table, and loads the .csv files to this /BucketFolder\/NetChangesTableID/ path.
rsBucketFolder :: Lens' RedshiftSettings (Maybe Text)
rsBucketFolder = lens _rsBucketFolder (\s a -> s {_rsBucketFolder = a})

-- | A value that sets the amount of time to wait (in milliseconds) before timing out, beginning from when you initially establish a connection.
rsConnectionTimeout :: Lens' RedshiftSettings (Maybe Int)
rsConnectionTimeout = lens _rsConnectionTimeout (\s a -> s {_rsConnectionTimeout = a})

-- | The full ARN, partial ARN, or friendly name of the @SecretsManagerSecret@ that contains the Amazon Redshift endpoint connection details.
rsSecretsManagerSecretId :: Lens' RedshiftSettings (Maybe Text)
rsSecretsManagerSecretId = lens _rsSecretsManagerSecretId (\s a -> s {_rsSecretsManagerSecretId = a})

-- | The amount of time to wait (in milliseconds) before timing out of operations performed by AWS DMS on a Redshift cluster, such as Redshift COPY, INSERT, DELETE, and UPDATE.
rsLoadTimeout :: Lens' RedshiftSettings (Maybe Int)
rsLoadTimeout = lens _rsLoadTimeout (\s a -> s {_rsLoadTimeout = a})

-- | Code to run after connecting. This parameter should contain the code itself, not the name of a file containing the code.
rsAfterConnectScript :: Lens' RedshiftSettings (Maybe Text)
rsAfterConnectScript = lens _rsAfterConnectScript (\s a -> s {_rsAfterConnectScript = a})

-- | The name of the Amazon Redshift cluster you are using.
rsServerName :: Lens' RedshiftSettings (Maybe Text)
rsServerName = lens _rsServerName (\s a -> s {_rsServerName = a})

-- | A value that indicates to allow any date format, including invalid formats such as 00/00/00 00:00:00, to be loaded without generating an error. You can choose @true@ or @false@ (the default). This parameter applies only to TIMESTAMP and DATE columns. Always use ACCEPTANYDATE with the DATEFORMAT parameter. If the date format for the data doesn't match the DATEFORMAT specification, Amazon Redshift inserts a NULL value into that field.
rsAcceptAnyDate :: Lens' RedshiftSettings (Maybe Bool)
rsAcceptAnyDate = lens _rsAcceptAnyDate (\s a -> s {_rsAcceptAnyDate = a})

-- | The maximum size (in KB) of any .csv file used to load data on an S3 bucket and transfer data to Amazon Redshift. It defaults to 1048576KB (1 GB).
rsMaxFileSize :: Lens' RedshiftSettings (Maybe Int)
rsMaxFileSize = lens _rsMaxFileSize (\s a -> s {_rsMaxFileSize = a})

-- | A value that specifies to remove surrounding quotation marks from strings in the incoming data. All characters within the quotation marks, including delimiters, are retained. Choose @true@ to remove quotation marks. The default is @false@ .
rsRemoveQuotes :: Lens' RedshiftSettings (Maybe Bool)
rsRemoveQuotes = lens _rsRemoveQuotes (\s a -> s {_rsRemoveQuotes = a})

-- | The password for the user named in the @username@ property.
rsPassword :: Lens' RedshiftSettings (Maybe Text)
rsPassword = lens _rsPassword (\s a -> s {_rsPassword = a}) . mapping _Sensitive

-- | The date format that you are using. Valid values are @auto@ (case-sensitive), your date format string enclosed in quotes, or NULL. If this parameter is left unset (NULL), it defaults to a format of 'YYYY-MM-DD'. Using @auto@ recognizes most strings, even some that aren't supported when you use a date format string.  If your date and time values use formats different from each other, set this to @auto@ .
rsDateFormat :: Lens' RedshiftSettings (Maybe Text)
rsDateFormat = lens _rsDateFormat (\s a -> s {_rsDateFormat = a})

-- | The type of server-side encryption that you want to use for your data. This encryption type is part of the endpoint settings or the extra connections attributes for Amazon S3. You can choose either @SSE_S3@ (the default) or @SSE_KMS@ .  To use @SSE_S3@ , create an AWS Identity and Access Management (IAM) role with a policy that allows @"arn:aws:s3:::*"@ to use the following actions: @"s3:PutObject", "s3:ListBucket"@
rsEncryptionMode :: Lens' RedshiftSettings (Maybe EncryptionModeValue)
rsEncryptionMode = lens _rsEncryptionMode (\s a -> s {_rsEncryptionMode = a})

-- | A value that specifies whether AWS DMS should migrate empty CHAR and VARCHAR fields as NULL. A value of @true@ sets empty CHAR and VARCHAR fields to null. The default is @false@ .
rsEmptyAsNull :: Lens' RedshiftSettings (Maybe Bool)
rsEmptyAsNull = lens _rsEmptyAsNull (\s a -> s {_rsEmptyAsNull = a})

-- | The port number for Amazon Redshift. The default value is 5439.
rsPort :: Lens' RedshiftSettings (Maybe Int)
rsPort = lens _rsPort (\s a -> s {_rsPort = a})

-- | An Amazon Redshift user name for a registered user.
rsUsername :: Lens' RedshiftSettings (Maybe Text)
rsUsername = lens _rsUsername (\s a -> s {_rsUsername = a})

-- | The full Amazon Resource Name (ARN) of the IAM role that specifies AWS DMS as the trusted entity and grants the required permissions to access the value in @SecretsManagerSecret@ . @SecretsManagerSecret@ has the value of the AWS Secrets Manager secret that allows access to the Amazon Redshift endpoint.
rsSecretsManagerAccessRoleARN :: Lens' RedshiftSettings (Maybe Text)
rsSecretsManagerAccessRoleARN = lens _rsSecretsManagerAccessRoleARN (\s a -> s {_rsSecretsManagerAccessRoleARN = a})

-- | A value that specifies to remove the trailing white space characters from a VARCHAR string. This parameter applies only to columns with a VARCHAR data type. Choose @true@ to remove unneeded white space. The default is @false@ .
rsTrimBlanks :: Lens' RedshiftSettings (Maybe Bool)
rsTrimBlanks = lens _rsTrimBlanks (\s a -> s {_rsTrimBlanks = a})

-- | A value that specifies to truncate data in columns to the appropriate number of characters, so that the data fits in the column. This parameter applies only to columns with a VARCHAR or CHAR data type, and rows with a size of 4 MB or less. Choose @true@ to truncate data. The default is @false@ .
rsTruncateColumns :: Lens' RedshiftSettings (Maybe Bool)
rsTruncateColumns = lens _rsTruncateColumns (\s a -> s {_rsTruncateColumns = a})

-- | If you set @CompUpdate@ to @true@ Amazon Redshift applies automatic compression if the table is empty. This applies even if the table columns already have encodings other than @RAW@ . If you set @CompUpdate@ to @false@ , automatic compression is disabled and existing column encodings aren't changed. The default is @true@ .
rsCompUpdate :: Lens' RedshiftSettings (Maybe Bool)
rsCompUpdate = lens _rsCompUpdate (\s a -> s {_rsCompUpdate = a})

-- | This setting is only valid for a full-load migration task. Set @ExplicitIds@ to @true@ to have tables with @IDENTITY@ columns override their auto-generated values with explicit values loaded from the source data files used to populate the tables. The default is @false@ .
rsExplicitIds :: Lens' RedshiftSettings (Maybe Bool)
rsExplicitIds = lens _rsExplicitIds (\s a -> s {_rsExplicitIds = a})

-- | The name of the Amazon Redshift data warehouse (service) that you are working with.
rsDatabaseName :: Lens' RedshiftSettings (Maybe Text)
rsDatabaseName = lens _rsDatabaseName (\s a -> s {_rsDatabaseName = a})

instance FromJSON RedshiftSettings where
  parseJSON =
    withObject
      "RedshiftSettings"
      ( \x ->
          RedshiftSettings'
            <$> (x .:? "ReplaceChars")
            <*> (x .:? "CaseSensitiveNames")
            <*> (x .:? "BucketName")
            <*> (x .:? "FileTransferUploadStreams")
            <*> (x .:? "ReplaceInvalidChars")
            <*> (x .:? "ServerSideEncryptionKmsKeyId")
            <*> (x .:? "TimeFormat")
            <*> (x .:? "WriteBufferSize")
            <*> (x .:? "ServiceAccessRoleArn")
            <*> (x .:? "BucketFolder")
            <*> (x .:? "ConnectionTimeout")
            <*> (x .:? "SecretsManagerSecretId")
            <*> (x .:? "LoadTimeout")
            <*> (x .:? "AfterConnectScript")
            <*> (x .:? "ServerName")
            <*> (x .:? "AcceptAnyDate")
            <*> (x .:? "MaxFileSize")
            <*> (x .:? "RemoveQuotes")
            <*> (x .:? "Password")
            <*> (x .:? "DateFormat")
            <*> (x .:? "EncryptionMode")
            <*> (x .:? "EmptyAsNull")
            <*> (x .:? "Port")
            <*> (x .:? "Username")
            <*> (x .:? "SecretsManagerAccessRoleArn")
            <*> (x .:? "TrimBlanks")
            <*> (x .:? "TruncateColumns")
            <*> (x .:? "CompUpdate")
            <*> (x .:? "ExplicitIds")
            <*> (x .:? "DatabaseName")
      )

instance Hashable RedshiftSettings

instance NFData RedshiftSettings

instance ToJSON RedshiftSettings where
  toJSON RedshiftSettings' {..} =
    object
      ( catMaybes
          [ ("ReplaceChars" .=) <$> _rsReplaceChars,
            ("CaseSensitiveNames" .=) <$> _rsCaseSensitiveNames,
            ("BucketName" .=) <$> _rsBucketName,
            ("FileTransferUploadStreams" .=)
              <$> _rsFileTransferUploadStreams,
            ("ReplaceInvalidChars" .=)
              <$> _rsReplaceInvalidChars,
            ("ServerSideEncryptionKmsKeyId" .=)
              <$> _rsServerSideEncryptionKMSKeyId,
            ("TimeFormat" .=) <$> _rsTimeFormat,
            ("WriteBufferSize" .=) <$> _rsWriteBufferSize,
            ("ServiceAccessRoleArn" .=)
              <$> _rsServiceAccessRoleARN,
            ("BucketFolder" .=) <$> _rsBucketFolder,
            ("ConnectionTimeout" .=) <$> _rsConnectionTimeout,
            ("SecretsManagerSecretId" .=)
              <$> _rsSecretsManagerSecretId,
            ("LoadTimeout" .=) <$> _rsLoadTimeout,
            ("AfterConnectScript" .=) <$> _rsAfterConnectScript,
            ("ServerName" .=) <$> _rsServerName,
            ("AcceptAnyDate" .=) <$> _rsAcceptAnyDate,
            ("MaxFileSize" .=) <$> _rsMaxFileSize,
            ("RemoveQuotes" .=) <$> _rsRemoveQuotes,
            ("Password" .=) <$> _rsPassword,
            ("DateFormat" .=) <$> _rsDateFormat,
            ("EncryptionMode" .=) <$> _rsEncryptionMode,
            ("EmptyAsNull" .=) <$> _rsEmptyAsNull,
            ("Port" .=) <$> _rsPort,
            ("Username" .=) <$> _rsUsername,
            ("SecretsManagerAccessRoleArn" .=)
              <$> _rsSecretsManagerAccessRoleARN,
            ("TrimBlanks" .=) <$> _rsTrimBlanks,
            ("TruncateColumns" .=) <$> _rsTruncateColumns,
            ("CompUpdate" .=) <$> _rsCompUpdate,
            ("ExplicitIds" .=) <$> _rsExplicitIds,
            ("DatabaseName" .=) <$> _rsDatabaseName
          ]
      )
