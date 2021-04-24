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
-- Module      : Network.AWS.IoT.CreateProvisioningClaim
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a provisioning claim.
module Network.AWS.IoT.CreateProvisioningClaim
  ( -- * Creating a Request
    createProvisioningClaim,
    CreateProvisioningClaim,

    -- * Request Lenses
    cpcTemplateName,

    -- * Destructuring the Response
    createProvisioningClaimResponse,
    CreateProvisioningClaimResponse,

    -- * Response Lenses
    cpcrrsExpiration,
    cpcrrsKeyPair,
    cpcrrsCertificateId,
    cpcrrsCertificatePem,
    cpcrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createProvisioningClaim' smart constructor.
newtype CreateProvisioningClaim = CreateProvisioningClaim'
  { _cpcTemplateName ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateProvisioningClaim' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpcTemplateName' - The name of the provisioning template to use.
createProvisioningClaim ::
  -- | 'cpcTemplateName'
  Text ->
  CreateProvisioningClaim
createProvisioningClaim pTemplateName_ =
  CreateProvisioningClaim'
    { _cpcTemplateName =
        pTemplateName_
    }

-- | The name of the provisioning template to use.
cpcTemplateName :: Lens' CreateProvisioningClaim Text
cpcTemplateName = lens _cpcTemplateName (\s a -> s {_cpcTemplateName = a})

instance AWSRequest CreateProvisioningClaim where
  type
    Rs CreateProvisioningClaim =
      CreateProvisioningClaimResponse
  request = postJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          CreateProvisioningClaimResponse'
            <$> (x .?> "expiration")
            <*> (x .?> "keyPair")
            <*> (x .?> "certificateId")
            <*> (x .?> "certificatePem")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateProvisioningClaim

instance NFData CreateProvisioningClaim

instance ToHeaders CreateProvisioningClaim where
  toHeaders = const mempty

instance ToJSON CreateProvisioningClaim where
  toJSON = const (Object mempty)

instance ToPath CreateProvisioningClaim where
  toPath CreateProvisioningClaim' {..} =
    mconcat
      [ "/provisioning-templates/",
        toBS _cpcTemplateName,
        "/provisioning-claim"
      ]

instance ToQuery CreateProvisioningClaim where
  toQuery = const mempty

-- | /See:/ 'createProvisioningClaimResponse' smart constructor.
data CreateProvisioningClaimResponse = CreateProvisioningClaimResponse'
  { _cpcrrsExpiration ::
      !( Maybe
           POSIX
       ),
    _cpcrrsKeyPair ::
      !( Maybe
           KeyPair
       ),
    _cpcrrsCertificateId ::
      !( Maybe
           Text
       ),
    _cpcrrsCertificatePem ::
      !( Maybe
           Text
       ),
    _cpcrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateProvisioningClaimResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpcrrsExpiration' - The provisioning claim expiration time.
--
-- * 'cpcrrsKeyPair' - The provisioning claim key pair.
--
-- * 'cpcrrsCertificateId' - The ID of the certificate.
--
-- * 'cpcrrsCertificatePem' - The provisioning claim certificate.
--
-- * 'cpcrrsResponseStatus' - -- | The response status code.
createProvisioningClaimResponse ::
  -- | 'cpcrrsResponseStatus'
  Int ->
  CreateProvisioningClaimResponse
createProvisioningClaimResponse pResponseStatus_ =
  CreateProvisioningClaimResponse'
    { _cpcrrsExpiration =
        Nothing,
      _cpcrrsKeyPair = Nothing,
      _cpcrrsCertificateId = Nothing,
      _cpcrrsCertificatePem = Nothing,
      _cpcrrsResponseStatus = pResponseStatus_
    }

-- | The provisioning claim expiration time.
cpcrrsExpiration :: Lens' CreateProvisioningClaimResponse (Maybe UTCTime)
cpcrrsExpiration = lens _cpcrrsExpiration (\s a -> s {_cpcrrsExpiration = a}) . mapping _Time

-- | The provisioning claim key pair.
cpcrrsKeyPair :: Lens' CreateProvisioningClaimResponse (Maybe KeyPair)
cpcrrsKeyPair = lens _cpcrrsKeyPair (\s a -> s {_cpcrrsKeyPair = a})

-- | The ID of the certificate.
cpcrrsCertificateId :: Lens' CreateProvisioningClaimResponse (Maybe Text)
cpcrrsCertificateId = lens _cpcrrsCertificateId (\s a -> s {_cpcrrsCertificateId = a})

-- | The provisioning claim certificate.
cpcrrsCertificatePem :: Lens' CreateProvisioningClaimResponse (Maybe Text)
cpcrrsCertificatePem = lens _cpcrrsCertificatePem (\s a -> s {_cpcrrsCertificatePem = a})

-- | -- | The response status code.
cpcrrsResponseStatus :: Lens' CreateProvisioningClaimResponse Int
cpcrrsResponseStatus = lens _cpcrrsResponseStatus (\s a -> s {_cpcrrsResponseStatus = a})

instance NFData CreateProvisioningClaimResponse
