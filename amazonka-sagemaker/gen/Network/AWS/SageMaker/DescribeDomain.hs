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
-- Module      : Network.AWS.SageMaker.DescribeDomain
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The description of the domain.
module Network.AWS.SageMaker.DescribeDomain
  ( -- * Creating a Request
    describeDomain,
    DescribeDomain,

    -- * Request Lenses
    ddDomainId,

    -- * Destructuring the Response
    describeDomainResponse,
    DescribeDomainResponse,

    -- * Response Lenses
    ddrrsStatus,
    ddrrsCreationTime,
    ddrrsSingleSignOnManagedApplicationInstanceId,
    ddrrsAuthMode,
    ddrrsSubnetIds,
    ddrrsDomainId,
    ddrrsDomainARN,
    ddrrsKMSKeyId,
    ddrrsDomainName,
    ddrrsDefaultUserSettings,
    ddrrsFailureReason,
    ddrrsHomeEfsFileSystemId,
    ddrrsLastModifiedTime,
    ddrrsAppNetworkAccessType,
    ddrrsHomeEfsFileSystemKMSKeyId,
    ddrrsURL,
    ddrrsVPCId,
    ddrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeDomain' smart constructor.
newtype DescribeDomain = DescribeDomain'
  { _ddDomainId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeDomain' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddDomainId' - The domain ID.
describeDomain ::
  -- | 'ddDomainId'
  Text ->
  DescribeDomain
describeDomain pDomainId_ =
  DescribeDomain' {_ddDomainId = pDomainId_}

-- | The domain ID.
ddDomainId :: Lens' DescribeDomain Text
ddDomainId = lens _ddDomainId (\s a -> s {_ddDomainId = a})

instance AWSRequest DescribeDomain where
  type Rs DescribeDomain = DescribeDomainResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeDomainResponse'
            <$> (x .?> "Status")
            <*> (x .?> "CreationTime")
            <*> (x .?> "SingleSignOnManagedApplicationInstanceId")
            <*> (x .?> "AuthMode")
            <*> (x .?> "SubnetIds")
            <*> (x .?> "DomainId")
            <*> (x .?> "DomainArn")
            <*> (x .?> "KmsKeyId")
            <*> (x .?> "DomainName")
            <*> (x .?> "DefaultUserSettings")
            <*> (x .?> "FailureReason")
            <*> (x .?> "HomeEfsFileSystemId")
            <*> (x .?> "LastModifiedTime")
            <*> (x .?> "AppNetworkAccessType")
            <*> (x .?> "HomeEfsFileSystemKmsKeyId")
            <*> (x .?> "Url")
            <*> (x .?> "VpcId")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeDomain

instance NFData DescribeDomain

instance ToHeaders DescribeDomain where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DescribeDomain" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeDomain where
  toJSON DescribeDomain' {..} =
    object
      (catMaybes [Just ("DomainId" .= _ddDomainId)])

instance ToPath DescribeDomain where
  toPath = const "/"

instance ToQuery DescribeDomain where
  toQuery = const mempty

-- | /See:/ 'describeDomainResponse' smart constructor.
data DescribeDomainResponse = DescribeDomainResponse'
  { _ddrrsStatus ::
      !(Maybe DomainStatus),
    _ddrrsCreationTime ::
      !(Maybe POSIX),
    _ddrrsSingleSignOnManagedApplicationInstanceId ::
      !(Maybe Text),
    _ddrrsAuthMode ::
      !(Maybe AuthMode),
    _ddrrsSubnetIds ::
      !(Maybe (List1 Text)),
    _ddrrsDomainId ::
      !(Maybe Text),
    _ddrrsDomainARN ::
      !(Maybe Text),
    _ddrrsKMSKeyId ::
      !(Maybe Text),
    _ddrrsDomainName ::
      !(Maybe Text),
    _ddrrsDefaultUserSettings ::
      !(Maybe UserSettings),
    _ddrrsFailureReason ::
      !(Maybe Text),
    _ddrrsHomeEfsFileSystemId ::
      !(Maybe Text),
    _ddrrsLastModifiedTime ::
      !(Maybe POSIX),
    _ddrrsAppNetworkAccessType ::
      !( Maybe
           AppNetworkAccessType
       ),
    _ddrrsHomeEfsFileSystemKMSKeyId ::
      !(Maybe Text),
    _ddrrsURL ::
      !(Maybe Text),
    _ddrrsVPCId ::
      !(Maybe Text),
    _ddrrsResponseStatus ::
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

-- | Creates a value of 'DescribeDomainResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddrrsStatus' - The status.
--
-- * 'ddrrsCreationTime' - The creation time.
--
-- * 'ddrrsSingleSignOnManagedApplicationInstanceId' - The SSO managed application instance ID.
--
-- * 'ddrrsAuthMode' - The domain's authentication mode.
--
-- * 'ddrrsSubnetIds' - The VPC subnets that Studio uses for communication.
--
-- * 'ddrrsDomainId' - The domain ID.
--
-- * 'ddrrsDomainARN' - The domain's Amazon Resource Name (ARN).
--
-- * 'ddrrsKMSKeyId' - The AWS KMS customer managed CMK used to encrypt the EFS volume attached to the domain.
--
-- * 'ddrrsDomainName' - The domain name.
--
-- * 'ddrrsDefaultUserSettings' - Settings which are applied to all UserProfiles in this domain, if settings are not explicitly specified in a given UserProfile.
--
-- * 'ddrrsFailureReason' - The failure reason.
--
-- * 'ddrrsHomeEfsFileSystemId' - The ID of the Amazon Elastic File System (EFS) managed by this Domain.
--
-- * 'ddrrsLastModifiedTime' - The last modified time.
--
-- * 'ddrrsAppNetworkAccessType' - Specifies the VPC used for non-EFS traffic. The default value is @PublicInternetOnly@ .     * @PublicInternetOnly@ - Non-EFS traffic is through a VPC managed by Amazon SageMaker, which allows direct internet access     * @VpcOnly@ - All Studio traffic is through the specified VPC and subnets
--
-- * 'ddrrsHomeEfsFileSystemKMSKeyId' - This member is deprecated and replaced with @KmsKeyId@ .
--
-- * 'ddrrsURL' - The domain's URL.
--
-- * 'ddrrsVPCId' - The ID of the Amazon Virtual Private Cloud (VPC) that Studio uses for communication.
--
-- * 'ddrrsResponseStatus' - -- | The response status code.
describeDomainResponse ::
  -- | 'ddrrsResponseStatus'
  Int ->
  DescribeDomainResponse
describeDomainResponse pResponseStatus_ =
  DescribeDomainResponse'
    { _ddrrsStatus = Nothing,
      _ddrrsCreationTime = Nothing,
      _ddrrsSingleSignOnManagedApplicationInstanceId =
        Nothing,
      _ddrrsAuthMode = Nothing,
      _ddrrsSubnetIds = Nothing,
      _ddrrsDomainId = Nothing,
      _ddrrsDomainARN = Nothing,
      _ddrrsKMSKeyId = Nothing,
      _ddrrsDomainName = Nothing,
      _ddrrsDefaultUserSettings = Nothing,
      _ddrrsFailureReason = Nothing,
      _ddrrsHomeEfsFileSystemId = Nothing,
      _ddrrsLastModifiedTime = Nothing,
      _ddrrsAppNetworkAccessType = Nothing,
      _ddrrsHomeEfsFileSystemKMSKeyId = Nothing,
      _ddrrsURL = Nothing,
      _ddrrsVPCId = Nothing,
      _ddrrsResponseStatus = pResponseStatus_
    }

-- | The status.
ddrrsStatus :: Lens' DescribeDomainResponse (Maybe DomainStatus)
ddrrsStatus = lens _ddrrsStatus (\s a -> s {_ddrrsStatus = a})

-- | The creation time.
ddrrsCreationTime :: Lens' DescribeDomainResponse (Maybe UTCTime)
ddrrsCreationTime = lens _ddrrsCreationTime (\s a -> s {_ddrrsCreationTime = a}) . mapping _Time

-- | The SSO managed application instance ID.
ddrrsSingleSignOnManagedApplicationInstanceId :: Lens' DescribeDomainResponse (Maybe Text)
ddrrsSingleSignOnManagedApplicationInstanceId = lens _ddrrsSingleSignOnManagedApplicationInstanceId (\s a -> s {_ddrrsSingleSignOnManagedApplicationInstanceId = a})

-- | The domain's authentication mode.
ddrrsAuthMode :: Lens' DescribeDomainResponse (Maybe AuthMode)
ddrrsAuthMode = lens _ddrrsAuthMode (\s a -> s {_ddrrsAuthMode = a})

-- | The VPC subnets that Studio uses for communication.
ddrrsSubnetIds :: Lens' DescribeDomainResponse (Maybe (NonEmpty Text))
ddrrsSubnetIds = lens _ddrrsSubnetIds (\s a -> s {_ddrrsSubnetIds = a}) . mapping _List1

-- | The domain ID.
ddrrsDomainId :: Lens' DescribeDomainResponse (Maybe Text)
ddrrsDomainId = lens _ddrrsDomainId (\s a -> s {_ddrrsDomainId = a})

-- | The domain's Amazon Resource Name (ARN).
ddrrsDomainARN :: Lens' DescribeDomainResponse (Maybe Text)
ddrrsDomainARN = lens _ddrrsDomainARN (\s a -> s {_ddrrsDomainARN = a})

-- | The AWS KMS customer managed CMK used to encrypt the EFS volume attached to the domain.
ddrrsKMSKeyId :: Lens' DescribeDomainResponse (Maybe Text)
ddrrsKMSKeyId = lens _ddrrsKMSKeyId (\s a -> s {_ddrrsKMSKeyId = a})

-- | The domain name.
ddrrsDomainName :: Lens' DescribeDomainResponse (Maybe Text)
ddrrsDomainName = lens _ddrrsDomainName (\s a -> s {_ddrrsDomainName = a})

-- | Settings which are applied to all UserProfiles in this domain, if settings are not explicitly specified in a given UserProfile.
ddrrsDefaultUserSettings :: Lens' DescribeDomainResponse (Maybe UserSettings)
ddrrsDefaultUserSettings = lens _ddrrsDefaultUserSettings (\s a -> s {_ddrrsDefaultUserSettings = a})

-- | The failure reason.
ddrrsFailureReason :: Lens' DescribeDomainResponse (Maybe Text)
ddrrsFailureReason = lens _ddrrsFailureReason (\s a -> s {_ddrrsFailureReason = a})

-- | The ID of the Amazon Elastic File System (EFS) managed by this Domain.
ddrrsHomeEfsFileSystemId :: Lens' DescribeDomainResponse (Maybe Text)
ddrrsHomeEfsFileSystemId = lens _ddrrsHomeEfsFileSystemId (\s a -> s {_ddrrsHomeEfsFileSystemId = a})

-- | The last modified time.
ddrrsLastModifiedTime :: Lens' DescribeDomainResponse (Maybe UTCTime)
ddrrsLastModifiedTime = lens _ddrrsLastModifiedTime (\s a -> s {_ddrrsLastModifiedTime = a}) . mapping _Time

-- | Specifies the VPC used for non-EFS traffic. The default value is @PublicInternetOnly@ .     * @PublicInternetOnly@ - Non-EFS traffic is through a VPC managed by Amazon SageMaker, which allows direct internet access     * @VpcOnly@ - All Studio traffic is through the specified VPC and subnets
ddrrsAppNetworkAccessType :: Lens' DescribeDomainResponse (Maybe AppNetworkAccessType)
ddrrsAppNetworkAccessType = lens _ddrrsAppNetworkAccessType (\s a -> s {_ddrrsAppNetworkAccessType = a})

-- | This member is deprecated and replaced with @KmsKeyId@ .
ddrrsHomeEfsFileSystemKMSKeyId :: Lens' DescribeDomainResponse (Maybe Text)
ddrrsHomeEfsFileSystemKMSKeyId = lens _ddrrsHomeEfsFileSystemKMSKeyId (\s a -> s {_ddrrsHomeEfsFileSystemKMSKeyId = a})

-- | The domain's URL.
ddrrsURL :: Lens' DescribeDomainResponse (Maybe Text)
ddrrsURL = lens _ddrrsURL (\s a -> s {_ddrrsURL = a})

-- | The ID of the Amazon Virtual Private Cloud (VPC) that Studio uses for communication.
ddrrsVPCId :: Lens' DescribeDomainResponse (Maybe Text)
ddrrsVPCId = lens _ddrrsVPCId (\s a -> s {_ddrrsVPCId = a})

-- | -- | The response status code.
ddrrsResponseStatus :: Lens' DescribeDomainResponse Int
ddrrsResponseStatus = lens _ddrrsResponseStatus (\s a -> s {_ddrrsResponseStatus = a})

instance NFData DescribeDomainResponse
