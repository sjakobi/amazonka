{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.DmsTransferSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.DmsTransferSettings where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The settings in JSON format for the DMS Transfer type source endpoint.
--
--
--
-- /See:/ 'dmsTransferSettings' smart constructor.
data DmsTransferSettings = DmsTransferSettings'
  { _dtsBucketName ::
      !(Maybe Text),
    _dtsServiceAccessRoleARN ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DmsTransferSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtsBucketName' - The name of the S3 bucket to use.
--
-- * 'dtsServiceAccessRoleARN' - The IAM role that has permission to access the Amazon S3 bucket.
dmsTransferSettings ::
  DmsTransferSettings
dmsTransferSettings =
  DmsTransferSettings'
    { _dtsBucketName = Nothing,
      _dtsServiceAccessRoleARN = Nothing
    }

-- | The name of the S3 bucket to use.
dtsBucketName :: Lens' DmsTransferSettings (Maybe Text)
dtsBucketName = lens _dtsBucketName (\s a -> s {_dtsBucketName = a})

-- | The IAM role that has permission to access the Amazon S3 bucket.
dtsServiceAccessRoleARN :: Lens' DmsTransferSettings (Maybe Text)
dtsServiceAccessRoleARN = lens _dtsServiceAccessRoleARN (\s a -> s {_dtsServiceAccessRoleARN = a})

instance FromJSON DmsTransferSettings where
  parseJSON =
    withObject
      "DmsTransferSettings"
      ( \x ->
          DmsTransferSettings'
            <$> (x .:? "BucketName")
            <*> (x .:? "ServiceAccessRoleArn")
      )

instance Hashable DmsTransferSettings

instance NFData DmsTransferSettings

instance ToJSON DmsTransferSettings where
  toJSON DmsTransferSettings' {..} =
    object
      ( catMaybes
          [ ("BucketName" .=) <$> _dtsBucketName,
            ("ServiceAccessRoleArn" .=)
              <$> _dtsServiceAccessRoleARN
          ]
      )
