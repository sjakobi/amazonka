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
-- Module      : Network.AWS.CertificateManagerPCA.DescribeCertificateAuthority
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists information about your private certificate authority (CA) or one that has been shared with you. You specify the private CA on input by its ARN (Amazon Resource Name). The output contains the status of your CA. This can be any of the following:
--
--
--     * @CREATING@ - ACM Private CA is creating your private certificate authority.
--
--     * @PENDING_CERTIFICATE@ - The certificate is pending. You must use your ACM Private CA-hosted or on-premises root or subordinate CA to sign your private CA CSR and then import it into PCA.
--
--     * @ACTIVE@ - Your private CA is active.
--
--     * @DISABLED@ - Your private CA has been disabled.
--
--     * @EXPIRED@ - Your private CA certificate has expired.
--
--     * @FAILED@ - Your private CA has failed. Your CA can fail because of problems such a network outage or back-end AWS failure or other errors. A failed CA can never return to the pending state. You must create a new CA.
--
--     * @DELETED@ - Your private CA is within the restoration period, after which it is permanently deleted. The length of time remaining in the CA's restoration period is also included in this action's output.
module Network.AWS.CertificateManagerPCA.DescribeCertificateAuthority
  ( -- * Creating a Request
    describeCertificateAuthority,
    DescribeCertificateAuthority,

    -- * Request Lenses
    dcaCertificateAuthorityARN,

    -- * Destructuring the Response
    describeCertificateAuthorityResponse,
    DescribeCertificateAuthorityResponse,

    -- * Response Lenses
    dcarrsCertificateAuthority,
    dcarrsResponseStatus,
  )
where

import Network.AWS.CertificateManagerPCA.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeCertificateAuthority' smart constructor.
newtype DescribeCertificateAuthority = DescribeCertificateAuthority'
  { _dcaCertificateAuthorityARN ::
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

-- | Creates a value of 'DescribeCertificateAuthority' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcaCertificateAuthorityARN' - The Amazon Resource Name (ARN) that was returned when you called <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html CreateCertificateAuthority> . This must be of the form:  @arn:aws:acm-pca:/region/ :/account/ :certificate-authority//12345678-1234-1234-1234-123456789012/ @ .
describeCertificateAuthority ::
  -- | 'dcaCertificateAuthorityARN'
  Text ->
  DescribeCertificateAuthority
describeCertificateAuthority
  pCertificateAuthorityARN_ =
    DescribeCertificateAuthority'
      { _dcaCertificateAuthorityARN =
          pCertificateAuthorityARN_
      }

-- | The Amazon Resource Name (ARN) that was returned when you called <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html CreateCertificateAuthority> . This must be of the form:  @arn:aws:acm-pca:/region/ :/account/ :certificate-authority//12345678-1234-1234-1234-123456789012/ @ .
dcaCertificateAuthorityARN :: Lens' DescribeCertificateAuthority Text
dcaCertificateAuthorityARN = lens _dcaCertificateAuthorityARN (\s a -> s {_dcaCertificateAuthorityARN = a})

instance AWSRequest DescribeCertificateAuthority where
  type
    Rs DescribeCertificateAuthority =
      DescribeCertificateAuthorityResponse
  request = postJSON certificateManagerPCA
  response =
    receiveJSON
      ( \s h x ->
          DescribeCertificateAuthorityResponse'
            <$> (x .?> "CertificateAuthority")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeCertificateAuthority

instance NFData DescribeCertificateAuthority

instance ToHeaders DescribeCertificateAuthority where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "ACMPrivateCA.DescribeCertificateAuthority" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeCertificateAuthority where
  toJSON DescribeCertificateAuthority' {..} =
    object
      ( catMaybes
          [ Just
              ( "CertificateAuthorityArn"
                  .= _dcaCertificateAuthorityARN
              )
          ]
      )

instance ToPath DescribeCertificateAuthority where
  toPath = const "/"

instance ToQuery DescribeCertificateAuthority where
  toQuery = const mempty

-- | /See:/ 'describeCertificateAuthorityResponse' smart constructor.
data DescribeCertificateAuthorityResponse = DescribeCertificateAuthorityResponse'
  { _dcarrsCertificateAuthority ::
      !( Maybe
           CertificateAuthority
       ),
    _dcarrsResponseStatus ::
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

-- | Creates a value of 'DescribeCertificateAuthorityResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcarrsCertificateAuthority' - A <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CertificateAuthority.html CertificateAuthority> structure that contains information about your private CA.
--
-- * 'dcarrsResponseStatus' - -- | The response status code.
describeCertificateAuthorityResponse ::
  -- | 'dcarrsResponseStatus'
  Int ->
  DescribeCertificateAuthorityResponse
describeCertificateAuthorityResponse pResponseStatus_ =
  DescribeCertificateAuthorityResponse'
    { _dcarrsCertificateAuthority =
        Nothing,
      _dcarrsResponseStatus =
        pResponseStatus_
    }

-- | A <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CertificateAuthority.html CertificateAuthority> structure that contains information about your private CA.
dcarrsCertificateAuthority :: Lens' DescribeCertificateAuthorityResponse (Maybe CertificateAuthority)
dcarrsCertificateAuthority = lens _dcarrsCertificateAuthority (\s a -> s {_dcarrsCertificateAuthority = a})

-- | -- | The response status code.
dcarrsResponseStatus :: Lens' DescribeCertificateAuthorityResponse Int
dcarrsResponseStatus = lens _dcarrsResponseStatus (\s a -> s {_dcarrsResponseStatus = a})

instance NFData DescribeCertificateAuthorityResponse
