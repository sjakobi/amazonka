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
-- Module      : Network.AWS.CloudHSMv2.InitializeCluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Claims an AWS CloudHSM cluster by submitting the cluster certificate issued by your issuing certificate authority (CA) and the CA's root certificate. Before you can claim a cluster, you must sign the cluster's certificate signing request (CSR) with your issuing CA. To get the cluster's CSR, use 'DescribeClusters' .
module Network.AWS.CloudHSMv2.InitializeCluster
  ( -- * Creating a Request
    initializeCluster,
    InitializeCluster,

    -- * Request Lenses
    icClusterId,
    icSignedCert,
    icTrustAnchor,

    -- * Destructuring the Response
    initializeClusterResponse,
    InitializeClusterResponse,

    -- * Response Lenses
    icrrsStateMessage,
    icrrsState,
    icrrsResponseStatus,
  )
where

import Network.AWS.CloudHSMv2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'initializeCluster' smart constructor.
data InitializeCluster = InitializeCluster'
  { _icClusterId ::
      !Text,
    _icSignedCert :: !Text,
    _icTrustAnchor :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'InitializeCluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icClusterId' - The identifier (ID) of the cluster that you are claiming. To find the cluster ID, use 'DescribeClusters' .
--
-- * 'icSignedCert' - The cluster certificate issued (signed) by your issuing certificate authority (CA). The certificate must be in PEM format and can contain a maximum of 5000 characters.
--
-- * 'icTrustAnchor' - The issuing certificate of the issuing certificate authority (CA) that issued (signed) the cluster certificate. You must use a self-signed certificate. The certificate used to sign the HSM CSR must be directly available, and thus must be the root certificate. The certificate must be in PEM format and can contain a maximum of 5000 characters.
initializeCluster ::
  -- | 'icClusterId'
  Text ->
  -- | 'icSignedCert'
  Text ->
  -- | 'icTrustAnchor'
  Text ->
  InitializeCluster
initializeCluster
  pClusterId_
  pSignedCert_
  pTrustAnchor_ =
    InitializeCluster'
      { _icClusterId = pClusterId_,
        _icSignedCert = pSignedCert_,
        _icTrustAnchor = pTrustAnchor_
      }

-- | The identifier (ID) of the cluster that you are claiming. To find the cluster ID, use 'DescribeClusters' .
icClusterId :: Lens' InitializeCluster Text
icClusterId = lens _icClusterId (\s a -> s {_icClusterId = a})

-- | The cluster certificate issued (signed) by your issuing certificate authority (CA). The certificate must be in PEM format and can contain a maximum of 5000 characters.
icSignedCert :: Lens' InitializeCluster Text
icSignedCert = lens _icSignedCert (\s a -> s {_icSignedCert = a})

-- | The issuing certificate of the issuing certificate authority (CA) that issued (signed) the cluster certificate. You must use a self-signed certificate. The certificate used to sign the HSM CSR must be directly available, and thus must be the root certificate. The certificate must be in PEM format and can contain a maximum of 5000 characters.
icTrustAnchor :: Lens' InitializeCluster Text
icTrustAnchor = lens _icTrustAnchor (\s a -> s {_icTrustAnchor = a})

instance AWSRequest InitializeCluster where
  type Rs InitializeCluster = InitializeClusterResponse
  request = postJSON cloudHSMv2
  response =
    receiveJSON
      ( \s h x ->
          InitializeClusterResponse'
            <$> (x .?> "StateMessage")
            <*> (x .?> "State")
            <*> (pure (fromEnum s))
      )

instance Hashable InitializeCluster

instance NFData InitializeCluster

instance ToHeaders InitializeCluster where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("BaldrApiService.InitializeCluster" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON InitializeCluster where
  toJSON InitializeCluster' {..} =
    object
      ( catMaybes
          [ Just ("ClusterId" .= _icClusterId),
            Just ("SignedCert" .= _icSignedCert),
            Just ("TrustAnchor" .= _icTrustAnchor)
          ]
      )

instance ToPath InitializeCluster where
  toPath = const "/"

instance ToQuery InitializeCluster where
  toQuery = const mempty

-- | /See:/ 'initializeClusterResponse' smart constructor.
data InitializeClusterResponse = InitializeClusterResponse'
  { _icrrsStateMessage ::
      !(Maybe Text),
    _icrrsState ::
      !( Maybe
           ClusterState
       ),
    _icrrsResponseStatus ::
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

-- | Creates a value of 'InitializeClusterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icrrsStateMessage' - A description of the cluster's state.
--
-- * 'icrrsState' - The cluster's state.
--
-- * 'icrrsResponseStatus' - -- | The response status code.
initializeClusterResponse ::
  -- | 'icrrsResponseStatus'
  Int ->
  InitializeClusterResponse
initializeClusterResponse pResponseStatus_ =
  InitializeClusterResponse'
    { _icrrsStateMessage =
        Nothing,
      _icrrsState = Nothing,
      _icrrsResponseStatus = pResponseStatus_
    }

-- | A description of the cluster's state.
icrrsStateMessage :: Lens' InitializeClusterResponse (Maybe Text)
icrrsStateMessage = lens _icrrsStateMessage (\s a -> s {_icrrsStateMessage = a})

-- | The cluster's state.
icrrsState :: Lens' InitializeClusterResponse (Maybe ClusterState)
icrrsState = lens _icrrsState (\s a -> s {_icrrsState = a})

-- | -- | The response status code.
icrrsResponseStatus :: Lens' InitializeClusterResponse Int
icrrsResponseStatus = lens _icrrsResponseStatus (\s a -> s {_icrrsResponseStatus = a})

instance NFData InitializeClusterResponse
