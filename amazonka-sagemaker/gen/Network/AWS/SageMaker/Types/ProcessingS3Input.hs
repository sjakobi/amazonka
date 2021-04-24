{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ProcessingS3Input
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ProcessingS3Input where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.ProcessingS3CompressionType
import Network.AWS.SageMaker.Types.ProcessingS3DataDistributionType
import Network.AWS.SageMaker.Types.ProcessingS3DataType
import Network.AWS.SageMaker.Types.ProcessingS3InputMode

-- | Configuration for downloading input data from Amazon S3 into the processing container.
--
--
--
-- /See:/ 'processingS3Input' smart constructor.
data ProcessingS3Input = ProcessingS3Input'
  { _psiS3CompressionType ::
      !( Maybe
           ProcessingS3CompressionType
       ),
    _psiS3InputMode ::
      !(Maybe ProcessingS3InputMode),
    _psiS3DataDistributionType ::
      !( Maybe
           ProcessingS3DataDistributionType
       ),
    _psiLocalPath :: !(Maybe Text),
    _psiS3URI :: !Text,
    _psiS3DataType ::
      !ProcessingS3DataType
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProcessingS3Input' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psiS3CompressionType' - Whether to GZIP-decompress the data in Amazon S3 as it is streamed into the processing container. @Gzip@ can only be used when @Pipe@ mode is specified as the @S3InputMode@ . In @Pipe@ mode, Amazon SageMaker streams input data from the source directly to your container without using the EBS volume.
--
-- * 'psiS3InputMode' - Whether to use @File@ or @Pipe@ input mode. In File mode, Amazon SageMaker copies the data from the input source onto the local ML storage volume before starting your processing container. This is the most commonly used input mode. In @Pipe@ mode, Amazon SageMaker streams input data from the source directly to your processing container into named pipes without using the ML storage volume.
--
-- * 'psiS3DataDistributionType' - Whether to distribute the data from Amazon S3 to all processing instances with @FullyReplicated@ , or whether the data from Amazon S3 is shared by Amazon S3 key, downloading one shard of data to each processing instance.
--
-- * 'psiLocalPath' - The local path in your container where you want Amazon SageMaker to write input data to. @LocalPath@ is an absolute path to the input data and must begin with @/opt/ml/processing/@ . @LocalPath@ is a required parameter when @AppManaged@ is @False@ (default).
--
-- * 'psiS3URI' - The URI of the Amazon S3 prefix Amazon SageMaker downloads data required to run a processing job.
--
-- * 'psiS3DataType' - Whether you use an @S3Prefix@ or a @ManifestFile@ for the data type. If you choose @S3Prefix@ , @S3Uri@ identifies a key name prefix. Amazon SageMaker uses all objects with the specified key name prefix for the processing job. If you choose @ManifestFile@ , @S3Uri@ identifies an object that is a manifest file containing a list of object keys that you want Amazon SageMaker to use for the processing job.
processingS3Input ::
  -- | 'psiS3URI'
  Text ->
  -- | 'psiS3DataType'
  ProcessingS3DataType ->
  ProcessingS3Input
processingS3Input pS3URI_ pS3DataType_ =
  ProcessingS3Input'
    { _psiS3CompressionType = Nothing,
      _psiS3InputMode = Nothing,
      _psiS3DataDistributionType = Nothing,
      _psiLocalPath = Nothing,
      _psiS3URI = pS3URI_,
      _psiS3DataType = pS3DataType_
    }

-- | Whether to GZIP-decompress the data in Amazon S3 as it is streamed into the processing container. @Gzip@ can only be used when @Pipe@ mode is specified as the @S3InputMode@ . In @Pipe@ mode, Amazon SageMaker streams input data from the source directly to your container without using the EBS volume.
psiS3CompressionType :: Lens' ProcessingS3Input (Maybe ProcessingS3CompressionType)
psiS3CompressionType = lens _psiS3CompressionType (\s a -> s {_psiS3CompressionType = a})

-- | Whether to use @File@ or @Pipe@ input mode. In File mode, Amazon SageMaker copies the data from the input source onto the local ML storage volume before starting your processing container. This is the most commonly used input mode. In @Pipe@ mode, Amazon SageMaker streams input data from the source directly to your processing container into named pipes without using the ML storage volume.
psiS3InputMode :: Lens' ProcessingS3Input (Maybe ProcessingS3InputMode)
psiS3InputMode = lens _psiS3InputMode (\s a -> s {_psiS3InputMode = a})

-- | Whether to distribute the data from Amazon S3 to all processing instances with @FullyReplicated@ , or whether the data from Amazon S3 is shared by Amazon S3 key, downloading one shard of data to each processing instance.
psiS3DataDistributionType :: Lens' ProcessingS3Input (Maybe ProcessingS3DataDistributionType)
psiS3DataDistributionType = lens _psiS3DataDistributionType (\s a -> s {_psiS3DataDistributionType = a})

-- | The local path in your container where you want Amazon SageMaker to write input data to. @LocalPath@ is an absolute path to the input data and must begin with @/opt/ml/processing/@ . @LocalPath@ is a required parameter when @AppManaged@ is @False@ (default).
psiLocalPath :: Lens' ProcessingS3Input (Maybe Text)
psiLocalPath = lens _psiLocalPath (\s a -> s {_psiLocalPath = a})

-- | The URI of the Amazon S3 prefix Amazon SageMaker downloads data required to run a processing job.
psiS3URI :: Lens' ProcessingS3Input Text
psiS3URI = lens _psiS3URI (\s a -> s {_psiS3URI = a})

-- | Whether you use an @S3Prefix@ or a @ManifestFile@ for the data type. If you choose @S3Prefix@ , @S3Uri@ identifies a key name prefix. Amazon SageMaker uses all objects with the specified key name prefix for the processing job. If you choose @ManifestFile@ , @S3Uri@ identifies an object that is a manifest file containing a list of object keys that you want Amazon SageMaker to use for the processing job.
psiS3DataType :: Lens' ProcessingS3Input ProcessingS3DataType
psiS3DataType = lens _psiS3DataType (\s a -> s {_psiS3DataType = a})

instance FromJSON ProcessingS3Input where
  parseJSON =
    withObject
      "ProcessingS3Input"
      ( \x ->
          ProcessingS3Input'
            <$> (x .:? "S3CompressionType")
            <*> (x .:? "S3InputMode")
            <*> (x .:? "S3DataDistributionType")
            <*> (x .:? "LocalPath")
            <*> (x .: "S3Uri")
            <*> (x .: "S3DataType")
      )

instance Hashable ProcessingS3Input

instance NFData ProcessingS3Input

instance ToJSON ProcessingS3Input where
  toJSON ProcessingS3Input' {..} =
    object
      ( catMaybes
          [ ("S3CompressionType" .=) <$> _psiS3CompressionType,
            ("S3InputMode" .=) <$> _psiS3InputMode,
            ("S3DataDistributionType" .=)
              <$> _psiS3DataDistributionType,
            ("LocalPath" .=) <$> _psiLocalPath,
            Just ("S3Uri" .= _psiS3URI),
            Just ("S3DataType" .= _psiS3DataType)
          ]
      )
