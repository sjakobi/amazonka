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
-- Module      : Network.AWS.DirectoryService.CreateTrust
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- AWS Directory Service for Microsoft Active Directory allows you to configure trust relationships. For example, you can establish a trust between your AWS Managed Microsoft AD directory, and your existing on-premises Microsoft Active Directory. This would allow you to provide users and groups access to resources in either domain, with a single set of credentials.
--
--
-- This action initiates the creation of the AWS side of a trust relationship between an AWS Managed Microsoft AD directory and an external domain. You can create either a forest trust or an external trust.
module Network.AWS.DirectoryService.CreateTrust
  ( -- * Creating a Request
    createTrust,
    CreateTrust,

    -- * Request Lenses
    ctTrustType,
    ctSelectiveAuth,
    ctConditionalForwarderIPAddrs,
    ctDirectoryId,
    ctRemoteDomainName,
    ctTrustPassword,
    ctTrustDirection,

    -- * Destructuring the Response
    createTrustResponse,
    CreateTrustResponse,

    -- * Response Lenses
    ctrrsTrustId,
    ctrrsResponseStatus,
  )
where

import Network.AWS.DirectoryService.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | AWS Directory Service for Microsoft Active Directory allows you to configure trust relationships. For example, you can establish a trust between your AWS Managed Microsoft AD directory, and your existing on-premises Microsoft Active Directory. This would allow you to provide users and groups access to resources in either domain, with a single set of credentials.
--
--
-- This action initiates the creation of the AWS side of a trust relationship between an AWS Managed Microsoft AD directory and an external domain.
--
--
-- /See:/ 'createTrust' smart constructor.
data CreateTrust = CreateTrust'
  { _ctTrustType ::
      !(Maybe TrustType),
    _ctSelectiveAuth :: !(Maybe SelectiveAuth),
    _ctConditionalForwarderIPAddrs ::
      !(Maybe [Text]),
    _ctDirectoryId :: !Text,
    _ctRemoteDomainName :: !Text,
    _ctTrustPassword :: !(Sensitive Text),
    _ctTrustDirection :: !TrustDirection
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateTrust' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctTrustType' - The trust relationship type. @Forest@ is the default.
--
-- * 'ctSelectiveAuth' - Optional parameter to enable selective authentication for the trust.
--
-- * 'ctConditionalForwarderIPAddrs' - The IP addresses of the remote DNS server associated with RemoteDomainName.
--
-- * 'ctDirectoryId' - The Directory ID of the AWS Managed Microsoft AD directory for which to establish the trust relationship.
--
-- * 'ctRemoteDomainName' - The Fully Qualified Domain Name (FQDN) of the external domain for which to create the trust relationship.
--
-- * 'ctTrustPassword' - The trust password. The must be the same password that was used when creating the trust relationship on the external domain.
--
-- * 'ctTrustDirection' - The direction of the trust relationship.
createTrust ::
  -- | 'ctDirectoryId'
  Text ->
  -- | 'ctRemoteDomainName'
  Text ->
  -- | 'ctTrustPassword'
  Text ->
  -- | 'ctTrustDirection'
  TrustDirection ->
  CreateTrust
createTrust
  pDirectoryId_
  pRemoteDomainName_
  pTrustPassword_
  pTrustDirection_ =
    CreateTrust'
      { _ctTrustType = Nothing,
        _ctSelectiveAuth = Nothing,
        _ctConditionalForwarderIPAddrs = Nothing,
        _ctDirectoryId = pDirectoryId_,
        _ctRemoteDomainName = pRemoteDomainName_,
        _ctTrustPassword = _Sensitive # pTrustPassword_,
        _ctTrustDirection = pTrustDirection_
      }

-- | The trust relationship type. @Forest@ is the default.
ctTrustType :: Lens' CreateTrust (Maybe TrustType)
ctTrustType = lens _ctTrustType (\s a -> s {_ctTrustType = a})

-- | Optional parameter to enable selective authentication for the trust.
ctSelectiveAuth :: Lens' CreateTrust (Maybe SelectiveAuth)
ctSelectiveAuth = lens _ctSelectiveAuth (\s a -> s {_ctSelectiveAuth = a})

-- | The IP addresses of the remote DNS server associated with RemoteDomainName.
ctConditionalForwarderIPAddrs :: Lens' CreateTrust [Text]
ctConditionalForwarderIPAddrs = lens _ctConditionalForwarderIPAddrs (\s a -> s {_ctConditionalForwarderIPAddrs = a}) . _Default . _Coerce

-- | The Directory ID of the AWS Managed Microsoft AD directory for which to establish the trust relationship.
ctDirectoryId :: Lens' CreateTrust Text
ctDirectoryId = lens _ctDirectoryId (\s a -> s {_ctDirectoryId = a})

-- | The Fully Qualified Domain Name (FQDN) of the external domain for which to create the trust relationship.
ctRemoteDomainName :: Lens' CreateTrust Text
ctRemoteDomainName = lens _ctRemoteDomainName (\s a -> s {_ctRemoteDomainName = a})

-- | The trust password. The must be the same password that was used when creating the trust relationship on the external domain.
ctTrustPassword :: Lens' CreateTrust Text
ctTrustPassword = lens _ctTrustPassword (\s a -> s {_ctTrustPassword = a}) . _Sensitive

-- | The direction of the trust relationship.
ctTrustDirection :: Lens' CreateTrust TrustDirection
ctTrustDirection = lens _ctTrustDirection (\s a -> s {_ctTrustDirection = a})

instance AWSRequest CreateTrust where
  type Rs CreateTrust = CreateTrustResponse
  request = postJSON directoryService
  response =
    receiveJSON
      ( \s h x ->
          CreateTrustResponse'
            <$> (x .?> "TrustId") <*> (pure (fromEnum s))
      )

instance Hashable CreateTrust

instance NFData CreateTrust

instance ToHeaders CreateTrust where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DirectoryService_20150416.CreateTrust" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateTrust where
  toJSON CreateTrust' {..} =
    object
      ( catMaybes
          [ ("TrustType" .=) <$> _ctTrustType,
            ("SelectiveAuth" .=) <$> _ctSelectiveAuth,
            ("ConditionalForwarderIpAddrs" .=)
              <$> _ctConditionalForwarderIPAddrs,
            Just ("DirectoryId" .= _ctDirectoryId),
            Just ("RemoteDomainName" .= _ctRemoteDomainName),
            Just ("TrustPassword" .= _ctTrustPassword),
            Just ("TrustDirection" .= _ctTrustDirection)
          ]
      )

instance ToPath CreateTrust where
  toPath = const "/"

instance ToQuery CreateTrust where
  toQuery = const mempty

-- | The result of a CreateTrust request.
--
--
--
-- /See:/ 'createTrustResponse' smart constructor.
data CreateTrustResponse = CreateTrustResponse'
  { _ctrrsTrustId ::
      !(Maybe Text),
    _ctrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateTrustResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctrrsTrustId' - A unique identifier for the trust relationship that was created.
--
-- * 'ctrrsResponseStatus' - -- | The response status code.
createTrustResponse ::
  -- | 'ctrrsResponseStatus'
  Int ->
  CreateTrustResponse
createTrustResponse pResponseStatus_ =
  CreateTrustResponse'
    { _ctrrsTrustId = Nothing,
      _ctrrsResponseStatus = pResponseStatus_
    }

-- | A unique identifier for the trust relationship that was created.
ctrrsTrustId :: Lens' CreateTrustResponse (Maybe Text)
ctrrsTrustId = lens _ctrrsTrustId (\s a -> s {_ctrrsTrustId = a})

-- | -- | The response status code.
ctrrsResponseStatus :: Lens' CreateTrustResponse Int
ctrrsResponseStatus = lens _ctrrsResponseStatus (\s a -> s {_ctrrsResponseStatus = a})

instance NFData CreateTrustResponse
